new function()
{
	// ?t=sm1,va(46.011,3,wt(0,15,1,1,0,1)a20)vb(46.00,sin)f(841.1hz,q22)ma(0.2hz)e(30,32,40,25,ma30,mb30)
	
	
	this.AppAPane = class_def
	(
		null,
		function()
		{
			this.Initiate = function( com )
			{
				var synth = new Au1.Synth1();
				
				var fr = fnew();
				var e = enew( "div", fr );
				build_div_1( e, synth );
				com.appendChild( fr );
			};
			
			function build_div_1( com, synth )
			{
				var table = enew( "table", com );
				
				new Slider( table,  "Volume",      0,   100,  "350px",  synth.Volume );
				//new Slider( table,  "Pitch",   -6000,  6000,  "350px",  synth.Pitch );
				build_voice( "Voice 1", table, synth.Voice1 );
				build_voice( "Voice 2", table, synth.Voice2 );
			}
			
			function build_voice( title, table, voice )
			{
				t_label( table, title );
				new Slider( table,  "Vo Pitch", -6000, 6000,  "350px",  voice.Vo_Pitch );
				//new Select( table, "Type", voice.Vo_Type );
				new Slider( table,  "Vo Mod",  -6000, 6000,  "350px",  voice.Vo_Mod );
				new Slider( table,  "Mod Pitch",  -120, 120,  "350px",  voice.MG_Pitch );
				new Slider( table,  "Amp Mod",  -100, 100,  "350px",  voice.Amp_Mod );
			}
		}
	);
	
	function t_label( table, text )
	{
		var tr = enew( "tr", table );
		var td = enew_t( "td", tr, text, { colSpan: "2" }, { textAlign: "center", fontWeight: "bold" } );
	}
	
	var Slider = class_def
	(
		null,
		function()
		{
			this.Initiate = function( com, title, min, max, width, leaf )
			{
				this.Leaf = leaf;
				
				var tr = enew( "tr", com );
				var td = enew( "td", tr );
				enew_t( "label", td, title );
				
				var td = enew( "td", tr );
				this.Slider = enew( "input", td, { type: "range", min: min, max: max, value: 0 } );
				
				var td = enew( "td", tr );
				this.Measure = enew_t( "label", td, "--" );
				this.Slider.style.width = width;
				
				this.Slider.oninput = function()
				{
					self.Leaf.SetValue( self.Value_Pos() );
				}
				
				var self = this;
				this.Leaf.AddView( function(){ self.Update(); } );
			}
			
			this.Update = function()
			{
				this.Slider.value = this.Pos_Value();
				this.Measure.innerHTML = ht_plain( this.Measure_Value() );
			}
			
			this.Value_Pos = function()      { return  this.Slider.value * 1; }
			this.Pos_Value = function()      { return  this.Leaf.GetValue() / 1; }
			this.Measure_Value = function()  { return  this.Leaf.GetValue() / 1; }
		}
	);
	
	function Select( com, title, leaf )
	{
		var tr = enew( "tr", com );
		var td = enew( "td", tr );
		enew_t( "label", td, title );
		
		var td = enew( "td", tr );
		var select = enew( "select", td );
	}
	
	var Table = class_def
	(
		null,
		function()
		{
			this.Initiate = function( com )
			{
				//var e = enew( "table"
			}
		}
	);
}
