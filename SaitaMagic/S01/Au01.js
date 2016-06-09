var Au1 = new function()
{
	var Context = AudioContext || webkitAudioContext;
	
	var context = new Context();
	
	context.AbsDT = function()
	{
		return this.currentTime + 0.17;
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
		
		this.Voice1 = new VoiceUnitA( context, unit, { Vo_Key: 3, Amp_Mod: 75, MG_Pitch: -5 } );
		this.Voice2 = new VoiceUnitA( context, unit, { Vo_Key: 0, Amp_Mod: 75, MG_Pitch: -6 } );
		this.Voice3 = new VoiceUnitA( context, unit, { Vo_Key: -4, Amp_Mod: 75, MG_Pitch: -7 } );
		
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
		
		var vosc, mg
		
		var vm = context.createGain();
		var fm = context.createGain();
		var am = context.createGain();
		var out = context.createGain();
		
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
		
		var types = [ "sine", "triangle", "square", "sawtooth" ];
		var labels = [ "Sine", "Tri", "Squ", "Saw" ];
		
		this.Vo_Key    = new Leaf( 0, upd_vosc );
		this.Vo_Detune = new Leaf( 0, upd_vosc );
		this.Vo_Type   = new TypeLeaf( 0, upd_vosc, types, labels ); 
		
		this.MG_Pitch  = new Leaf( 0, upd_mg );
		this.Mod_Type   = new TypeLeaf( 0, upd_mg, types, labels ); 
		this.Vo_Mod    = new Leaf( 0, upd_mg );
		this.Amp_Mod   = new Leaf( 0, upd_mg );
		
		function upd_vosc()
		{
			if( vosc == null ) return;
			var value = self.Vo_Key.GetValue() * 100 + self.Vo_Detune.GetValue( );
			vosc.detune.setValueAtTime( value, context.AbsDT() );
			vosc.type = self.Vo_Type.GetType();
		}
		
		function upd_mg()
		{
			if( mg == null ) return;
			var value = self.MG_Pitch.GetValue() * 100;
			mg.detune.setValueAtTime( value, context.AbsDT() );
			
			mg.type = self.Mod_Type.GetType();
			
			var value = self.Vo_Mod.GetValue();
			vm.gain.setValueAtTime( value, context.AbsDT() );
			
			var value = self.Amp_Mod.GetValue() / 100;
			am.gain.setValueAtTime( value, context.AbsDT() );
		}
		
		
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
			vosc.connect( out );
			vm.connect( vosc.detune );
			master.pitch.connect( vosc.detune );
			
			mg = make_osc( mg, 1 );
			mg.connect( vm );
			mg.connect( fm );
			mg.connect( am );
			
			upd_vosc();
			upd_mg();
		}
		
		//  //
		
		if( init )  this.Set( init );
	}
}
