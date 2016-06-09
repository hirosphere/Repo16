var Au1 = new function()
{
	var Context = AudioContext || webkitAudioContext;
	
	var context = new Context();
	
	context.AbsDT = function()
	{
		return this.currentTime + 0.22;
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
	
	var exp_min = 0.00001;
	
	//  //
	
	var Leaf = class_def
	(
		null,
		function()
		{
			this.Initiate = function( init, primeview )
			{
				this.Value = init;
				this.Views = [];
				this.AddView( primeview );
			}
			
			this.AddView = function( callback )
			{
				this.Views.push( callback );
			}
			
			this.SetValue = function( value, changer )
			{
				if( value !== this.GetValue() )
				{
					this.Value = value;
					for( var i in this.Views )   this.Views[ i ]( this.Value, changer );
				}
			}
			
			this.GetValue = function()
			{
				return this.Value;
			}
		}
	);
	
	var TypeLeaf = class_def
	(
		Leaf,
		function( base )
		{
			this.Initiate = function( init, primeview, types, labels )
			{
				base.Initiate.call( this, init, primeview );
				
				this.Types = types;
				this.Labels = labels;
			}
			
			this.GetType = function() { return this.Types[ this.GetValue() ]; }
			this.GetLabel = function() { return this.Labels[ this.GetValue() ]; }
		}
	);
	
	//  //
	
	this.Synth1 = function()
	{
		var self = this;
		
		//  音源組み立て  //
		
		var unit = {};
		
		unit.pitch = CreateDCGain();
		
		unit.dest = context.createGain();
		unit.dest.gain.value = exp_min;
		unit.dest.connect( context.destination );
		
		this.Voice1 = new VoiceUnitA( context, unit, { Vo_Key: 3, Mod_Amp: 75, Mod_Pitch: -5 } );
		this.Voice2 = new VoiceUnitA( context, unit, { Vo_Key: 0, Mod_Amp: 75, Mod_Pitch: -6 } );
		this.Voice3 = new VoiceUnitA( context, unit, { Vo_Key: -4, Mod_Amp: 75, Mod_Pitch: -7 } );
		
		this.Voice1.Start();
		this.Voice2.Start();
		this.Voice3.Start();
		
		// 値インターフェイス //
		
		this.Volume = new Leaf( 50, upd_vol );
		this.Pitch  = new Leaf( 0, upd_pitch );
		
		this.Pitch_nd = CreateDCGain( 0 );
		
		function upd_vol()
		{
			var value = self.Volume.GetValue();
			var gain = value == 0 ? 0 : Math.pow( 2, value / 100 * 14 - 14 );
			unit.dest.gain.linearRampToValueAtTime( gain, context.AbsDT() + 0.0 );
		}
		
		function upd_pitch()
		{
			var value = self.Pitch.GetValue() * 100;
			unit.pitch.gain.setValueAtTime( value, context.AbsDT() );
		}
		
		upd_pitch();
		upd_vol();
		
		//  操作インターフェース  //
		
		this.SetTone = function()
		{
		}
		
		this.Reset = function()
		{
		}
	}
	
	function VoiceUnitA( context, master, init )
	{
		var self = this;
		
		var vosc, mod
		
		var flt = context.createBiquadFilter();
		var vm = context.createGain();
		var fm = context.createGain();
		var am = context.createGain();
		var out = context.createGain();
		
		flt.frequency.value = 440;
		
		flt.connect( out );
		fm.connect( flt.detune );
		am.connect( out.gain );
		
		out.gain.value = 1.0;
		out.connect( master.dest );
		
		
		function make_osc( osc, freq )
		{
			osc = context.createOscillator();
			osc.frequency.value = freq;
			osc.start();
			return osc;
		}
		
		
		//  値インターフェース  //
		
		var vo_types = [ "sine", "triangle", "square", "sawtooth" ];
		var vo_labels = [ "Sine", "Tri", "Squ", "Saw" ];
		
		var flt_types = [ "allpass", "lowpass", "highpass", "bandpass", "notch" ];
		var flt_labels = [ "Pass", "LP", "HP", "BP", "Notch" ];
		
		this.Vo_Key    = new Leaf( 0, upd_vosc );
		this.Vo_Detune = new Leaf( 0, upd_vosc );
		this.Vo_Type   = new TypeLeaf( 0, upd_vosc, vo_types, vo_labels ); 
		
		this.Flt_Key    = new Leaf( 0, upd_flt );
		this.Flt_Detune = new Leaf( 0, upd_flt );
		this.Flt_Q      = new Leaf( 0, upd_flt );
		this.Flt_Type   = new TypeLeaf( 0, upd_flt, flt_types, flt_labels ); 
		
		this.Mod_Pitch  = new Leaf( 0, upd_mod );
		this.Mod_Type   = new TypeLeaf( 0, upd_mod, vo_types, vo_labels ); 
		this.Mod_Vo    = new Leaf( 0, upd_mod );
		this.Mod_Flt   = new Leaf( 0, upd_mod );
		this.Mod_Amp   = new Leaf( 0, upd_mod );
		
		function upd_vosc()
		{
			if( vosc == null ) return;
			var value = self.Vo_Key.GetValue() * 100 + self.Vo_Detune.GetValue( );
			vosc.detune.setValueAtTime( value, context.AbsDT() );
			vosc.type = self.Vo_Type.GetType();
		}
		
		function upd_flt()
		{
			var value = self.Flt_Key.GetValue() * 100 + self.Flt_Detune.GetValue( );
			flt.detune.setValueAtTime( value, context.AbsDT() );
			
			var value = self.Flt_Q.GetValue();
			flt.Q.setValueAtTime( value, context.AbsDT() );
			
			flt.type = self.Flt_Type.GetType();
		}
		
		function upd_mod()
		{
			if( mod == null ) return;
			var value = self.Mod_Pitch.GetValue() * 100;
			mod.detune.setValueAtTime( value, context.AbsDT() );
			
			mod.type = self.Mod_Type.GetType();
			
			var value = self.Mod_Vo.GetValue();
			vm.gain.setValueAtTime( value, context.AbsDT() );
			
			var value = self.Mod_Flt.GetValue();
			fm.gain.setValueAtTime( value, context.AbsDT() );
			
			var value = self.Mod_Amp.GetValue() / 100;
			am.gain.setValueAtTime( value, context.AbsDT() );
		}
		
		upd_flt();
		
		
		//  操作インターフェース  //
		
		this.Set = function( values )
		{
			for( var fn in values )
			{
				if( this[ fn ] != null )  this[ fn ].SetValue( values[ fn ] );
			}
		}
		
		this.Start = function()
		{
			vosc = make_osc( vosc, 440 );
			vosc.connect( flt );
			vm.connect( vosc.detune );
			master.pitch.connect( vosc.detune );
			
			mod = make_osc( mod, 1 );
			mod.connect( vm );
			mod.connect( fm );
			mod.connect( am );
			
			upd_vosc();
			upd_mod();
		}
		
		//  //
		
		if( init )  this.Set( init );
	}
}
