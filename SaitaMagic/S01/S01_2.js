new function()
{
	var Context = AudioContext || webkitAudioContext;
	
	var context = new Context();
	
	context.AbsDT = function()
	{
		return this.currentTime + 0.02;
	}
	
	var dc_src;
	
	new function()
	{
		var osc = context.createOscillator();
		osc.type = "square";
		osc.frequency.value = 0.1;
		osc.frequency.setValueAtTime( 0, context.AbsDT() + 1 );
		osc.start();
		
		var gain = context.createGain();
		gain.gain.value = 7 / 6;
		osc.connect( gain );
		dc_src = gain;
	}
	
	function CreateDCGain( init )
	{
		var gain = context.createGain();
		dc_src.connect( gain );
		return gain;
	}
	
	var exp_min = 0.000001;
	
	
	//    //
	
	
	var Leaf = class_def
	(
		null,
		function()
		{
			this.Initiate = function( init, primeview )
			{
				this.Views = [ primeview ];
				this.SetValue( init );
			}
			
			this.AddView = function( view )
			{
				this.Views.push( view );
				view( this.Value );
			}
			
			this.SetValue = function( value )
			{
				if( value != this.Value )
				{
					this.Value = value;
					for( var i in this.Views )
					{
						this.Views[ i ]( this.Value );
					}
				}
			}
			
			this.GetValue = function()
			{
				return this.Value;
			}
		}
	);
	
	
	function Synth()
	{
		var volume = context.createGain();
		volume.connect( context.destination );
		volume.gain.value = 0.07;
		
		var ch_vo_1 = new Voice( volume );
		var ch_vo_2 = new Voice( volume );
		var ch_vo_3 = new Voice( volume );
		
		this.SetChord = function( c1, c2, c3 )
		{
			ch_vo_1.NoteOn( c1 );
			ch_vo_2.NoteOn( c2 );
			ch_vo_3.NoteOn( c3 );
		}
		
		this.Volume = new Leaf
		(
			50,
			function( meas )
			{
				var value = ( meas == 0 ? 0 : Math.pow( 2, meas / 10 - 10 ) );
				volume.gain.setTargetAtTime( value, context.AbsDT(), 0.01 );
			}
		);
	}
	
	function Voice( dest )
	{
		var vosc = context.createOscillator();
		var amp =  context.createGain();
		
		vosc.connect( amp );
		amp.connect( dest );
		
		vosc.frequency.value = 440;
		amp.gain.value = 1;
		amp.gain.setTargetAtTime( 0, context.AbsDT(), 0.1 );
		
		vosc.start();
		
		this.NoteOn = function( key )
		{
			var attack = 0.3;
			var decay = 0.2;
			
			vosc.detune.setValueAtTime( key * 100, context.AbsDT() );
			
			amp.gain.cancelScheduledValues( context.AbsDT() );
			amp.gain.setValueAtTime( 0, context.AbsDT() );
			amp.gain.setTargetAtTime( 1, context.AbsDT(), attack );
			amp.gain.setTargetAtTime( 0, context.AbsDT() + attack * 1 / 0.63, decay );
		}
	}
	
	
	//    //
	
	
	function ChordPlay( synth )
	{
		this.GetLabel = function( key, maj )
		{
			var oct = Math.floor( key / 12 );
			var key = key_range_loop( key, 0 );
			return keynames[ key ] + ( maj ? "" : "m" );
		}
		
		this.SetChord = function( key, maj )
		{
			var base = this.Base.GetValue();
			var c1 = key_range_loop( key, base );
			var c2 = key_range_loop( key + ( maj ? 4 : 3 ), base );
			var c3 = key_range_loop( key + 7, base );
			
			synth.SetChord( c1, c2, c3 );
		}
		
		this.Base = new Leaf( -12, function(){} );
	}
	
	function key_range_loop( key, base )
	{
		var s_key = key - base;
		var loop = s_key >= 0 ? s_key % 12 : ( s_key + 1 ) % 12 + 11;
		return loop + base;
	}
	
	var keynames = [ "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#" ];
	
	
	//  //
	
	
	this.AppPane = function( com )
	{
		var synth = new Synth();
		var chord_play = new ChordPlay( synth );
		
		var self = this;
		var e = enew( "div" );
		tnew( "S01 - 2", e );
		
		var table = enew( "table", e );
		
		new Slider( table, "音量",   0,  100, 30, 180, synth.Volume );
		new Slider( table, "範囲", -24, + 24, 30, 180, chord_play.Base );
		
		new KeyPane( e, chord_play, hover );
		this.mon = enew( "div", e, null, { height: "1.5em" }, "", "Monitor" );
		
		com.appendChild( e );
		
		function hover( value )
		{
			self.mon.innerHTML = value;
		}
	}
	
	
	function KeyPane( com, chord_play, hover )
	{
		var style =
		{
			position: "relative",
			width: "300px",
			height: "400px",
			border: "2px solid #665",
			borderRadius: "10px",
			cursor: "default"
		};
		
		var key_buttons = [];
		
		var e = enew( "div", null, null, style );
		
		for( var i = 0; i < 4; i ++ )
		{
			make_row( i, 6 - i * 3 );
		}
		
		function make_row( row, rkey )
		{
			var y = 10 + row * 65;
			for( var i = 0; i < 5; i ++ )
			{
				var x = 7 + i * 56;
				var ckey = ( i - 2 ) * 7;
				make_key( e, x, y +  0, rkey + ckey + 3, true );
				make_key( e, x, y + 27, rkey + ckey + 0, false );
			}
		}
		
		function make_key( com, x, y, key, maj )
		{
			var style =
			{
				position: "absolute",
				background: "hsl( 20, 8%, 80% )",
				borderRadius: "4px",
				padding: "0 4px",
				lineHeight: "26px",
				left: x + "px", top: y + "px", width: "45px", height: "26px"
			};
			
			var e = enew( "div", com, null, style );
			
			key_buttons.push( e );
			
			e.Update = function()
			{
				e.innerHTML = chord_play.GetLabel( key, maj );
			}
			
			e.onmouseenter = function()
			{
				hover && hover( chord_play.GetLabel( key, maj ) );
			};
			
			e.onmousedown = function()
			{
				chord_play.SetChord( key, maj );
			}
		}
		
		function update()
		{
			for( var i in key_buttons )  key_buttons[ i ].Update();
		}
		
		update();
		
		com.appendChild( e );
	}
	
	
	var Slider = class_def
	(
		null,
		function()
		{
			this.Initiate = function( table, title, min, max, v_width, width, leaf, dec )
			{
				var self = this;
				
				var tr = enew( "tr", table );
				enew_t( "td", tr, title );
				
				var e_value = enew( "td", tr, null, { width: v_width + "px" } );
				
				var e_range = enew
				(
					"input",
					enew( "td", tr ),
					{
						type: "range",
						min: min,
						max: max,
						oninput: function()
						{
							leaf.SetValue( self.value_pos( this.value ) );
						}
					},
					{
						width: width + "px"
					}
				);
				
				
				leaf.AddView
				(
					function( value )
					{
						e_range.value = self.pos_value( value );
						e_plain( e_value, self.label_value( value ) );
					}
				);
			}
			
			this.pos_value = function( value ) { return value; }
			this.value_pos = function( pos ) { return pos - 0; }
			this.label_value = function( value ) { return value; };
		}
	);
	
}
