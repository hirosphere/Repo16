using System;

public partial class Rail
{
	public const int Motor_Count = 8;
	
	public Train[] Trains = new Train[ Motor_Count ];
	
	protected const int StepSpan = 40;   //  40ms  25Hz
	protected System.Timers.Timer Timer = new System.Timers.Timer( StepSpan );
	protected SerialPort _Port = new SerialPort();
	public Leaf.Bool PortEnabled = new Leaf.Bool( false );
	
	public Rail()
	{
		for( int i = 0; i < Motor_Count; i ++ )
		{
			Trains[ i ] = new Train();
		}
		
		Timer.Elapsed += delegate { Step(); };
		Timer.Start();
	}
	
	public SerialPort Port { get { return _Port; } }
	
	protected void Step()
	{
		//Trains[ 0 ].Step( StepSpan );
		//Trains[ 0 ].Motor.Cure( Port );
		
		for( int i = 0; i < Motor_Count; i ++ )
		{
			// Motors[ i ].Cure( Port );
		}
	}
}



public partial class Rail
{
	public class Player
	{
		public Leaf.Bool Run = new Leaf.Bool();
		//public Leaf.String Sequence = new Leaf.String();
		public Leaf.Double Param_1 = new Leaf.Double();
		public Leaf.Double Param_2 = new Leaf.Double();
		public Leaf.Double Param_3 = new Leaf.Double();
	}
	
	public class Train
	{
		public Leaf.Bool Run = new Leaf.Bool();
		public Leaf.Float TargetSpeed = new Leaf.Float();
		public Leaf.Float Acceleration = new Leaf.Float();
		
		public Leaf.Float Speed = new Leaf.Float();
		
		public Leaf.Int MotorBias = new Leaf.Int();
		public Leaf.Int LightBias = new Leaf.Int();
		public Leaf.Int Scale = new Leaf.Int() { Value = 70 };
		
		public Leaf.Int VVVFVolume = new Leaf.Int() { Value = 0 };
		public Leaf.Int VVVFType = new Leaf.Int() { Value = 0 };
		
		public LPConv Conv = new LPConv();
		
		public Motor Motor = new Motor();
		
		public void Step( int stepms )
		{
			Conv.Action( this, Motor );
		}
	}
	
	public class LPConv
	{
		public const int VDC_Max = 250;
		
		public void SetPower( float power, float speed )
		{
			
		}
		
		public void Action( Train train, Motor motor )
		{
			float scale =     ( float ) train.Scale      .Value / 100;
			float speed =               train.Speed      .Value / 250;
			float lbias    =  ( float ) train.LightBias  .Value / 100;
			float mbias    =  ( float ) train.MotorBias  .Value / 100;
			float vvvf_vol =  ( float ) train.VVVFVolume .Value / 100;
			
			float power = speed > 0 ? mbias + speed * scale : 0;
			float vdc_power = ( 1 - vvvf_vol ) * power;
			
			float osc_width = vvvf_vol > 0 ? power : 0;
			float osc_level = vvvf_vol;
			
			float vdc = vdc_power + lbias;
			
			motor.VDC.SetValue( ( int ) ( vdc * VDC_Max ) );
			motor.Osc_1.Level.SetValue( ( int ) ( osc_level * 256 ) );
			motor.Osc_1.Width.SetValue( ( int ) ( osc_width * 256 ) );
		}
	}
	
	public class Motor
	{
		public byte Addr = 0;
		public Leaf.Int VDC = new Leaf.Int();
		public Leaf.Int Direction = new Leaf.Int() { Value = 1 };
		public Osc Osc_1 = new Osc();
		public Osc Osc_2 = new Osc();
		
		public Motor()
		{
		}
		
		// Buffer //
		
		public const int DataSize = 10;
		public const int BuffSize = 13;
		
		protected const int O_Mark = 0;
		protected const int O_Len = 1;
		protected const int O_Addr = 2;
		
		protected const int O_Dir = 3;
		protected const int O_VDC = 4;
		protected const int O_Osc_1 = 5;
		protected const int O_Osc_2 = 9;
		
		protected byte[] Buffer = new byte[ BuffSize ];
		
		public void Cure( SerialPort port )
		{
			Buffer[ O_Mark ] = 0x4D;
			Buffer[ O_Len ] = DataSize;
			Buffer[ O_Addr ] = Addr;
			Buffer[ O_Dir ] = ( byte ) ( 0xFF & Direction.Value );
			Buffer[ O_VDC ] = ( byte ) ( 0xFF & VDC.Value );
			
			Osc_1.Cure( Buffer, O_Osc_1 );
			Osc_2.Cure( Buffer, O_Osc_2 );
			
			port.Transfer( Buffer );
		}
	}
	
	public class Osc
	{
		public Leaf.Int Level = new Leaf.Int {};
		public Leaf.Int Width = new Leaf.Int {};
		public Leaf.Float Freq = new Leaf.Float { Value = 400 };
		
		public const int Size = 4;
		protected const int O_Level = 0;
		protected const int O_Width = 1;
		protected const int O_Freq = 2;
		
		public void SetPower( float volume, float power, float freq )
		{
			
		}
		
		public void Cure( byte[] buffer, int offset )
		{
			buffer[ offset + O_Level ] = ( byte ) Level.Value;
			buffer[ offset + O_Width ] = ( byte ) Width.Value;
			
			int freq = ( int ) ( Freq.Value * 65526 / 32000 );
			buffer[ offset + O_Freq + 0 ] = ( byte ) ( 0xFF & ( freq >> 0 ) );
			buffer[ offset + O_Freq + 1 ] = ( byte ) ( 0xFF & ( freq >> 8 ) );
		}
	}
}


public partial class Rail
{
	public class SerialPort : System.IO.Ports.SerialPort
	{
		public bool Enabled = true;
		
		public SerialPort()
		{
			PortName = "COM11";
			BaudRate = 115200;
		}
		
		public void Transfer( byte[] data )
		{
			if( Enabled && Make() )
			{
				Write( data, 0, data.Length );
			}
		}
		
		protected bool Make()
		{
			if( ! IsOpen )
			{
				try { Open(); } catch( Exception ex ) { Log.Post( ex ); }
			}
			return IsOpen;
		}
	}
	
	public class Packet
	{
		protected byte[] Buffer;
		
		public Packet( byte addr, byte datasize ) : this( datasize )
		{
			Addr = addr;
		}
		
		public Packet( byte datasize )
		{
			Buffer = new byte[ datasize + 3 ];
			Mark = 0x4D;
			Length = datasize;
		}
		
		public void Write( SerialPort port )
		{
			port.Transfer( Buffer );
		}
		
		protected byte Mark    { set { Buffer[ 0 ] = value; } }
		protected byte Length  { set { Buffer[ 1 ] = value; } }
		public    byte Addr    { set { Buffer[ 2 ] = value; } }
	}
}

