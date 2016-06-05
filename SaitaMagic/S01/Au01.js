var Au1 = new function()
{
	var Context = AudioContext || webkitAudioContext;
	
	var context = new Context();
	
	context.AbsDT = function()
	{
		return this.currentTime + 0.1;
	}
	
	var exp_min = 0.00001;
	
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
				callback( this.Value );
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
			
		}
	);
	
	//  //
	
	this.Synth1 = function()
	{
		var self = this;
		
		//  音源組み立て  //
		
		var master_vol = context.createGain();
		master_vol.gain.value = exp_min;
		master_vol.connect( context.destination );
		
		this.Voice1 = new VoiceUnitA( context, master_vol, { Vo_Pitch: 0, Amp_Mod: 70 } );
		this.Voice2 = new VoiceUnitA( context, master_vol, { Vo_Pitch: 200, Amp_Mod: 70 } );
		
		this.Voice1.Start();
		this.Voice2.Start();
		
		// インターフェイス //
		
		this.Volume = new Leaf( 65, upd_vol );
		this.Pitch  = new Leaf( 6000, upd_pitch );
		
		function upd_vol( measure )
		{
			var value = measure == 0 ? 0 : Math.pow( 2, measure / 100 * 14 - 14 );
			master_vol.gain.linearRampToValueAtTime( value, context.AbsDT() + 0.0 );
		}
		
		function upd_pitch( measure )
		{
			
		}
		
		this.Trigger = function( ch, key )
		{
			
		}
		
		this.SetTone = function()
		{
		}
		
		this.Reset = function()
		{
		}
	}
	
	function VoiceUnitA( context, dest, init )
	{
		var self = this;
		
		var vosc, mosc
		
		var vm = context.createGain();
		var fm = context.createGain();
		var am = context.createGain();
		var out = context.createGain();
		
		am.connect( out.gain );
		
		out.gain.value = 1.0;
		out.connect( dest );
		
		this.Vo_Pitch = new Leaf( 0, upd_vo_pitch );
		this.MG_Pitch = new Leaf( 0, upd_mg );
		this.Vo_Mod   = new Leaf( 0, upd_mg );
		this.Amp_Mod  = new Leaf( 0, upd_mg );
		
		
		//   //
		
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
			
			mosc = make_osc( mosc, 1 );
			mosc.connect( vm );
			mosc.connect( fm );
			mosc.connect( am );
			
			upd_vo_pitch();
			upd_mg();
		}
		
		function make_osc( osc, freq )
		{
			osc = context.createOscillator();
			osc.frequency.value = freq;
			osc.start();
			return osc;
		}
		
		function upd_vo_pitch()
		{
			if( vosc == null ) return;
			var value = self.Vo_Pitch.GetValue();
			vosc.detune.setValueAtTime( value, context.AbsDT() );
		}
		
		function upd_mg()
		{
			if( mosc == null ) return;
			var value = self.MG_Pitch.GetValue() * 100;
			mosc.detune.setValueAtTime( value, context.AbsDT() );
			
			var value = self.Vo_Mod.GetValue();
			vm.gain.setValueAtTime( value, context.AbsDT() );
			
			var value = self.Amp_Mod.GetValue() / 100;
			am.gain.setValueAtTime( value, context.AbsDT() );
		}
		
		if( init )  this.Set( init );
	}
}
