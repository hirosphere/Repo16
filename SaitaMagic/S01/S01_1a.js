new function()
{
	// ?t=sm1,va(46.011,3,wt(0,15,1,1,0,1)a20)vb(46.00,sin)f(841.1hz,q22)ma(0.2hz)e(30,32,40,25,ma30,mb30)
	
	var Synth = class_def
	(
		null,
		function()
		{
			this.Initiate = function()
			{
				var ac = AudioContext || webkitAudioContext;
				var context = this.Context = ac ? new ac() : null;
				
				this.Volume = context.createGain();
				this.Voice1 = new Voice( context, this.Volume, 0.5 );
				this.Voice2 = new Voice( context, this.Volume, 0.44 );
				this.Volume.connect( context.destination );
				this.Volume.gain.value = 0.0;
			}
			
			this.Trigger = function()
			{
				
			}
		}
	);

	var Voice = class_def
	(
		null,
		function()
		{
			this.Initiate = function( context, volume, morate )
			{
				this.Context = context;
				
				this.VoOsc1 = context.createOscillator();
				this.VoEnv = context.createGain();
				
				this.Mo1Osc = context.createOscillator();
				this.Mo1AVol = context.createGain();
				
				// connect
				this.VoOsc1.connect( this.VoEnv );
				this.VoEnv.connect( volume );
				
				this.Mo1Osc.connect( this.Mo1AVol );
				this.Mo1AVol.connect( this.VoEnv.gain );
				
				// init
				this.VoOsc1.frequency.value = 440;
				this.VoOsc1.type = "sine";
				this.VoEnv.gain.value = 1.0;
				
				this.Mo1Osc.frequency.value = morate;
				this.Mo1Osc.type = "sine";
				this.Mo1AVol.gain.value = 0.5;
				
				
				this.VoOsc1.start();
				this.Mo1Osc.start();
			}
			
			this.Trigger = function()
			{
				
			}
			
			this.toString = function() { return "class Synth" }
		}
	);


	this.AppAPane = class_def
	(
		null,
		function()
		{
			this.Initiate = function( com )
			{
				var fr = fnew();
				var e = enew( "div", fr );
				
				var synth = new Synth();
				
				build_div1( fr, synth );
				build_div2( fr, synth );
				eadd( com, fr );
			}
			
			function build_div1( com, synth )
			{
				var e = enew( "div", com, null, { marginBottom: "8px" } );
				//var bu_1 = enew_t( "button", e, "ÉgÉäÉKÅ[" );
				//var bu_2 = enew_t( "button", e, "ÉgÉäÉKÅ[" );
				//var bu_3 = enew_t( "button", e, "ÉgÉäÉKÅ[" );
				
				//bu_1.onclick = function()
				{
				//	synth.Voice1.Trigger();
				}
			}
			
			function build_div2( com, synth )
			{
				function vl1( label ) { return label / 1000; }
				function vl2( label ) { return 20 * Math.pow( 2, label / 1000 * 10 ); }
				
				var e = enew( "div", com, null, { marginBottom: "4px" } );
				new Slide( "Volume", e, 0, 1000, synth.Volume.gain, vl1 );  enew( "br", e );
				new Slide( "Vo1 VCO Freq", e, 0, 1000, synth.Voice1.VoOsc1.frequency, vl2 );  enew( "br", e );
				new Slide( "Vo2 VCO Freq", e, 0, 1000, synth.Voice2.VoOsc1.frequency, vl2 );  enew( "br", e );
				//new Slide( e, 0, 1000 );  enew( "br", e );
				//new Slide( e, 0, 1000 );  enew( "br", e );
			}
			
		}
	);

	function Slide( label, com, min, max, target, vl )
	{
		var lab = enew_t( "label", com, label );
		var slide = enew( "input", com, { type: "range", min: min, max: max, value: 0 } );
		slide.style.width = "500px";
		
		slide.oninput = function()
		{
			target.value = vl( this.value );
		}
	}
}
