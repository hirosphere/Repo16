var S01_2 = new function()
{
	function au_new( delay, min_db )
	{
		var Context = AudioContext || webkitAudioContext;
		
		if( Context )
		{
			var context = new Context();
			
			context.bt = function()
			{
				return this.currentTime + delay;
			}
			
			var osc_0_hz = context.createOscillator();
			osc_0_hz.type = "square";
			osc_0_hz.frequency.value = 0.1;
			osc_0_hz.frequency.setValueAtTime( 0, context.bt() + 1 );
			osc_0_hz.start();
			
			var dc_src = context.createGain();
			dc_src.gain.value = 7 / 6;
			osc_0_hz.connect( dc_src );
			
			
			context.create_const_gain = function()
			{
				var gain = context.createGain();
				dc_src.connect( gain );
				return gain;
			}
			
			
			var exp_min = Math.pow( 10, min_db / 20 );
			var exp_ramp_rate = min_db / -60;
			
			AudioParam.prototype.attack = function( time )
			{
				var t = context.bt();
				
				this.cancelScheduledValues( t );
				this.setValueAtTime( 0, t );
				this.linearRampToValueAtTime( 1, t + time );
				//slog( [ "attack", t, time ] );
			}
			
			AudioParam.prototype.release = function( time )
			{
				var t = context.bt();
				
				var curv = this.value;
				//this.cancelScheduledValues( t );
				//this.setValueAtTime( curv, t );
				
				var tend = t + time * exp_ramp_rate;
				( [ "release", t, tend ] );
				this.exponentialRampToValueAtTime( exp_min, tend );
			}
			
			slog( "au_new()" );
			
			return context;
		}
		
		return null;
	}
	
	
	var context = au_new( 0, -60 );
	
	
	//    //
	
	
	var Leaf = class_def
	(
		null,
		function()
		{
			this.Initiate = function( init, primeview )
			{
				this.Value = init;
				this.Views = [];
				if( primeview ) this.Views.push( primeview );
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
		this.Volume = new Leaf( 50 );
		this.Mod_Depth = new Leaf( 0.5 );
		
		
		this.WaveType = new Leaf( 0 );
		
		var volume = context.createGain();
		volume.connect( context.destination );
		volume.gain.value = 0.07;
		
		var base_vo = new Voice( volume, -25, this );
		var ch_vo_1 = new Voice( volume, -22, this );
		var ch_vo_2 = new Voice( volume, -20, this );
		var ch_vo_3 = new Voice( volume, -17, this );
		
		this.SetChord = function( ba, c1, c2, c3 )
		{
			base_vo.NoteOn( ba );
			ch_vo_1.NoteOn( c1 );
			ch_vo_2.NoteOn( c2 );
			ch_vo_3.NoteOn( c3 );
		}
		
		this.OffChord = function()
		{
			base_vo.NoteOff();
			ch_vo_1.NoteOff();
			ch_vo_2.NoteOff();
			ch_vo_3.NoteOff();
		}
		
		this.Volume.AddView
		(
			function( meas )
			{
				var value = ( meas == 0 ? 0 : Math.pow( 2, meas / 10 - 10 ) );
				volume.gain.linearRampToValueAtTime( value, context.currentTime + 0.1 );
			}
		);
	}
	
	
	function Voice( dest, mod_pitch, synth )
	{
		var vosc = context.createOscillator();
		
		var mod  = context.createOscillator();
		var mod_amp =  context.createGain();
		
		var env = context.create_const_gain();
		
		var amp =  context.createGain();
		var amp_in1 =  context.createGain();
		
		
		vosc.connect( amp );
		
		env.connect( amp_in1 );
		
		mod.connect( mod_amp );
		mod_amp.connect( amp_in1.gain );
		
		amp_in1.connect( amp.gain );
		amp.connect( dest );
		
		
		vosc.frequency.value = 440;
		vosc.type = "sawtooth";
		env.gain.value = 0;
		amp.gain.value = 0;
		amp.gain.setTargetAtTime( 0, context.bt(), 0.1 );
		
		mod.frequency.value = 1;
		mod.detune.value = mod_pitch * 100;
		//mod_amp.gain.value = 0.7;
		
		vosc.start();
		mod.start();
		
		
		var w_types = [ "sine", "triangle", "square", "sawtooth" ];
		
		synth.WaveType.AddView( function( mea ) { vosc.type = w_types[ mea ]; } );
		
		synth.Mod_Depth.AddView
		(
			function( value )
			{
				mod_amp.gain.value = value;
			}
		);
		
		var note_on = false;
		
		this.NoteOn = function( key )
		{
			vosc.detune.setValueAtTime( key * 100, context.bt() );
			
			if( ! note_on )
			{
				note_on = true;
				env.gain.attack( 0.1 );
			}
		}
		
		this.NoteOff = function()
		{
			if( note_on )
			{
				note_on = false;
				env.gain.release( 1.0 );
			}
		}
		
		slog( "\tVoice " + [ vosc, amp ] );
	}
	
	
	//    //
	
	
	function ChordPlay( synth )
	{
		var self = this;
		var stat = null;
		this.GetLabel = function( key, maj )
		{
			var oct = Math.floor( key / 12 );
			var key = key_range_loop( key, 0 );
			return keynames[ key ] + ( maj ? "" : "m" );
		}
		
		this.SetChord = function( _stat )
		{
			stat = _stat;
			update();
		}
		
		function update()
		{
			if( ! stat )  return;
			
			var key = stat.key;
			
			var maj = stat.maj ? 4 : 3;
			var c2s = stat.sus2 ? 2 : ( stat.sus4 ? 5 : maj );
			
			var c3s = stat.dom7 ? 10 : 7;
			
			var base = self.Base.GetValue();
			var ba = key_range_loop( key, base ) - 24;
			var c1 = key_range_loop( key, base );
			var c2 = key_range_loop( key + c2s, base );
			var c3 = key_range_loop( key + c3s, base );
			
			var key_on = stat.key_on || self.Hold.GetValue();
			key_on ? synth.SetChord( ba, c1, c2, c3 ) : synth.OffChord();
		}
		
		this.Base = new Leaf( -12, update );
		this.Hold = new Leaf( false, update );
		
		update();
	}
	
	function key_range_loop( key, base )
	{
		var s_key = key - base;
		var loop = s_key >= 0 ? s_key % 12 : ( s_key + 1 ) % 12 + 11;
		return loop + base;
	}
	
	var keynames = [ "A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#" ];
	var keynames_ = [ "9", "10", "11", "0", "1", "2", "3", "4", "5", "6", "7", "8" ];
	
	
	//  //
	
	
	this.AppPane = function( com )
	{
		var synth = new Synth();
		var chord_play = new ChordPlay( synth );
		
		var self = this;
		var e = enew( "div" );
		tnew( "S01 - 2", e );
		
		var table = enew( "table", e );
		
		var dec_100 = new function()
		{
			this.pos_value = this.label_value = function( value )
			{
				return Math.round( 100 * value );
			}
			
			this.value_pos = function( pos )
			{
				return pos / 100;
			}
		}
		
		var wt_labels = [ "Sin", "Tri", "Squ", "Saw" ];
		var dec_wt = { label_value: function( value ) { return wt_labels[ value ]; } };
		
		new Slider( table, "音量",   0,  100, 30, 180, synth.Volume );
		new Slider( table, "範囲", -24, + 24, 30, 180, chord_play.Base );
		new Slider( table, "波形",   0,    3, 30,  80, synth.WaveType, dec_wt );
		new Slider( table, "変調",   0,  100, 30, 180, synth.Mod_Depth, dec_100 );
		
		var tr = enew( "tr", table );
		var td = enew( "td", tr, { colSpan: "3" } );
		new CheckBox( td, "ホールド", chord_play.Hold );
		
		new KeyPane( e, chord_play, hover );
		// new KeyPaneB( e, chord_play, hover );
		
		this.mon = enew( "div", e, null, { height: "1.5em" }, "", "Monitor" );
		
		com.appendChild( e );
		
		function hover( value )
		{
			self.mon.innerHTML = value;
		}
	}
	
	function ChordPlayB( synth )
	{
		
	}
	
	function KeyPaneB( com, cp, hover )
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
		
		var e = enew( "div", com, null, style );
		
		var einfo = enew( "div", e );
		
		var key_pos = new key_pos_c();
		
		e_touch.move
		(
			e,
			function( ev )
			{
				einfo.innerHTML = e_touch.local_pos( e, ev ).x;
			}
		);
		
		function key_pos_c()
		{
			
		}
	}
	
	function KeyPane( com, chord_play, hover )
	{
		var margin_y = 8;
		var margin_x = 8;
		var pitch_x = 58;
		var pitch_y = 78;
		
		var key_width = 53;
		var key_height = 34;
		var min_offset = 36;
		
		
		
		var margin_y = 8;
		var margin_x = 8;
		var pitch_x = 98;
		var pitch_y = 94;
		
		var key_width = 85;
		var key_height = 40;
		var min_offset = 42;
		
		var sub_width = 16;
		var sub_height = 11;
		
		
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
			var y_maj = margin_y + row * pitch_y;
			var y_min = y_maj + min_offset;
			for( var i = 0; i < 3; i ++ )
			{
				var x = margin_x + i * pitch_x;
				var ckey = ( i - 1 ) * 7;
				make_key( e, x, y_maj, rkey + ckey + 3, true );
				make_key( e, x, y_min, rkey + ckey + 0, false );
			}
		}
		
		function make_key( com, x, y, key, maj )
		{
			var stat =
			{
				key: key, maj: maj, key_on: false,
				sus2: false, sus4: false, dom7: false, maj7: false
			};
			
			var key_style =
			{
				position: "absolute",
				borderRadius: "4px",
				padding: "0 " + 4 + "px",
				lineHeight: key_height + "px",
				
				background: "hsl( 45, 20%, 90% )",
				fontSize: "11px",
				
				left: x + "px",
				top: y + "px",
				width: key_width - 8 + "px",
				height: key_height + "px",
			};
			
			var sub_style =
			{
				position: "absolute",
				width: sub_width + "px",
				height: sub_height + "px",
				background: "hsl( 45, 20%, 75% )"
			};
			
			
			var e = enew( "div", com, null, key_style );
			
			//make_sub( e, 0,  0, "sus2" );
			//make_sub( e, key_width - sub_width,  0, "sus4" );
			//make_sub( e, 0,  key_height - sub_height, "dom7" );
			
			var label = tnew( "", e );
			
			e.Update = function()
			{
				label.nodeValue = chord_play.GetLabel( key, maj );
			}
			
			e.onmouseenter = function()
			{
				hover && hover( chord_play.GetLabel( key, maj ) );
			};
			
			e_touch_start
			(
				e,
				function( ev )
				{
					hover && hover( chord_play.GetLabel( key, maj ) );
					
					stat.key_on = true;
					e_touch_stop_propagation( ev );
					chord_play.SetChord( stat );
				}
			);
			
			e_touch_move( e, function( ev )  {  e_touch_stop_propagation( ev );  }  );
			
			e_touch_cancel( e, touch_end );
			e_touch_end( e, touch_end );
			
			e.onmouseenter =
			e.onmouseclick =
			e.ondblclick = function( ev ) { slog( "doubleclick" ); e_touch_stop_propagation( ev ); };
			
			function touch_end()
			{
				if( stat.key_on )
				{
					stat.key_on = false;
					chord_play.SetChord( stat );
				}
			}
			
			key_buttons.push( e );
			
			function make_sub( e, x, y, prop )
			{
				var sub = enew( "div", e, null, sub_style );
				sub.style.left = x + "px";
				sub.style.top = y + "px";
				
				sub.onmouseover  = function( ev )
				{
					stat[ prop ] = true;
					chord_play.SetChord( stat );
				};
				
				sub.onmouseleave  = function( ev )
				{
					//sev.stopPropagation();
					stat[ prop ] = false;
					chord_play.SetChord( stat );
				};

			}
			
		}
		
		function update()
		{
			for( var i in key_buttons )  key_buttons[ i ].Update();
		}
		
		update();
		
		com.appendChild( e );
	}
	
	
	var CheckBox = class_def
	(
		null,
		function()
		{
			this.Initiate = function( com, title, leaf )
			{
				enew_t( "label", com, title );
				var e = enew( "input", com, { type: "checkbox" } );
				
				e.onchange = function()
				{
					leaf.SetValue( e.checked );
				}
				
				function update()
				{
					e.chacked = leaf.GetValue();
				}
				
				update();
			}
		}
	);
	
	
	var Slider = class_def
	(
		null,
		function()
		{
			this.Initiate = function( table, title, min, max, v_width, width, leaf, dec )
			{
				var self = this;
				
				if( dec )  for( var fn in dec )  this[ fn ] = dec[ fn ];
				
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
