using System;
using System.Windows.Forms;


class MyHIDHost : HIDHost
{
	public bool f_ToggleLED = false;
	public bool f_Return = false;
	public int AN_Value = 0;
	public bool Button = false;
	
	public byte[] Data = new  byte[ 64 ];
	
	protected System.Timers.Timer Timer = new System.Timers.Timer();
	protected bool GoTick = false;
	
	//
	
	public MyHIDHost()
	{
		Timer.Elapsed += delegate { GoTick = true; };
		Timer.Interval = 50;
		Timer.Start();
	}
	
	public string DataHex() { return hexstr( Data ); }
	public string OutHex() { return hexstr( Out ); }
	
	protected static string hexstr( byte[] data )
	{
		string rt = "";
		for( int i = 0; i < data.Length; i ++ )
		{
			rt += data[ i ].ToString( "X2" ) + ( i % 16 == 15 ? "\r\n" : " " );
		}
		return rt;
	}
	
	protected override void Connect()
	{
	}
	
	protected override void Disconnect()
	{
		f_ToggleLED = false;
		AN_Value = 0;
	}
	
	protected override void Work()
	{
		while( ! GoTick )  System.Threading.Thread.Sleep( 10 );
		GoTick = false;
		
		Out90();
		
		//if( f_ToggleLED )  { ComW( 0x80 ); f_ToggleLED = false; }
		//if( f_Return )  { ComW( 0x82 ); f_Return = false; }
		
		//ComWR( 0x37 );  // ADC
		//ComWR( 0x81 );  // Button //
	}
	
	protected void Out90()
	{
		Out[ 0 ] = 0x00;
		Out[ 1 ] = 0x90;
		
		Out[ 2 ] = 0;
		
		if( f_ToggleLED )
		{
			Out[ 2 ] |= 0x01;
			f_ToggleLED = false;
		}
		
		if( f_Return )
		{
			Out[ 2 ] |= 0x02;
			f_Return = false;
		}
		
		
		if( Write( 64 ) )
		{
			In[ 0 ] = 0x00;
			if( Read() )
			{
				;
				for( int i = 0; i < Data.Length; i ++ )  Data[ i ] = In[ i ];
			}
		}
		
	}
	
	protected void ComW( byte command )
	{
		Out[ 0 ] = 0x00;
		Out[ 1 ] = command;
		Write( 2 );
	}
	
	protected void ComWR( byte command )
	{
		Out[ 0 ] = 0x00;
		Out[ 1 ] = command;
		
		if( Write( 2 ) )
		{
			In[ 0 ] = 0x00;
			if( Read() )  CommandResponse();
		}
	}
	
	protected void CommandResponse()
	{
		//if( In[ 1 ] == 0x37 )  AN_Value = ( ( int ) ( In[3] << 8 ) + In[2] ) >> 1;
		//if( In[ 1 ] == 0x81 )  Button = ( In[ 2 ] & 0x01 ) == 0;
		
		for( int i = 0; i < Data.Length; i ++ )  Data[ i ] = In[ i ];
	}
}

class HID_1_Pane : Control
{
	protected MyHIDHost Host;
	
	protected TextBox TextEditor = new Prime.TextBox();
	protected TextBox Status = new Prime.TextBox
	{
		BackColor = HSVColor.ToRGB( 0.0f, 0.0f, 0.07f ),
		ForeColor = HSVColor.ToRGB( 120.0f, 0.9f, 0.86f )
	};
	protected TextBox TestOutput = new Prime.TextBox();
	
	protected Timer UpdateTimer = new Timer();
	
	public HID_1_Pane()
	{
		Log.OnPost += delegate
		{
			TestOutput.Text += Log.Text;
		};
		
		Host = new MyHIDHost();
		
		TabStop = false;
		
		Lay.Container root = new Lay.Vert( this )
		{
			Padding = new Lay.Border( 8 )
		};
		
		{
			Lay.Container hr = new Lay.Horiz( root )
			{
				Just = true,
				Height = 400,
				Sep = 6
			};
			
			BuildSide( hr );
			BuildContent( hr );
		}
		
		UpdateTimer.Enabled = true;
		UpdateTimer.Interval = 50;
		UpdateTimer.Tick += delegate { UpdateInfo(); };
		
		Host.Initiate( this.Handle );
	}
	
	private void BuildContent( Lay.Container con )
	{
		Lay.Container vert = new Lay.Vert( con )
		{
			Width = 300,  Rel = 95,
			Just = true,
			Sep = 6
		};
		
		new Lay.Leaf( vert, TextEditor )
		{
			Width = 100, 
			// Height = 80,
			Rel = 30,
			Just = true,
		};
		
		new Lay.Leaf( vert, Status )
		{
			Width = 100, 
			Height = 240,
			Rel = 30,
			Just = true,
		};
		
		new Lay.Leaf( vert, TestOutput )
		{
			Width = 100, 
			// Height = 80,
			Rel = 30,
			Just = true,
		};
		
	}
	
	private void BuildSide( Lay.Container con )
	{
		Button bu_1 = new Button { Text = "Toggle LED" };
		Button bu_2 = new Button { Text = "Return" };
		Button bu_3 = new Button { Text = "Button 3" };
		Button bu_4 = new Button { Text = "Button 4" };
		
		bu_1.Click += delegate { Host.f_ToggleLED = true; };
		bu_2.Click += delegate { Host.f_Return = true; };
		bu_3.Click += delegate { TextEditor.Text = "Click 3"; };
		bu_4.Click += delegate { TextEditor.Text = "Click 4"; };
		
		
		{
			Lay.Vert vert = new Lay.Vert( con )
			{
				Width = 100,
				Just = true,
				Sep = 3
			};
			
			new Lay.Leaf( vert, bu_1 ) { Just = true, Height = 32 };
			new Lay.Leaf( vert, bu_2 ) { Just = true, Height = 32 };
			new Lay.Leaf( vert, bu_3 ) { Just = true, Height = 32 };
			new Lay.Leaf( vert, bu_4 ) { Just = true, Height = 32 };
		}
	}
	
	//  //
	
	protected void UpdateInfo()
	{
		string s = "";
		s += ( Host.Connected ? "接続" : "未接続" ) + "\r\n";
		s += "アナログ入力: " + Host.AN_Value.ToString() + "\r\n";
		s += "ボタン: " + Host.Button.ToString() + "\r\n";
		
		s += "Output:\r\n" + Host.OutHex() + "\r\n";
		s += "Input:\r\n" + Host.DataHex() + "\r\n";
		
		Status.Text = s;
		
	}
	
	//  //
	
	protected override void WndProc( ref Message msg )
	{
		if( Host != null && msg != null )  Host.WndProc( ref msg );
		
		base.WndProc( ref msg );
	}
	
	//  HIDHost Events //

}
