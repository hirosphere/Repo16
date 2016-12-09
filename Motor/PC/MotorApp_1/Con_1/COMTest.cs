using System;
using System.IO.Ports;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace COMTest
{
	public class AppPane : Control
	{
		public AppPane()
		{
			TabStop = false;
			
			Lay.Container root = new Lay.Vert( this );
			{
				Lay.Tabs tabs = new Lay.Tabs( root )
				{
					Just = true,  Rel = 100
				};
				
				tabs.Add(  "Test A", new TestAPane() );
				
			}
		}
	}
}

namespace COMTest
{
	public class TestAPane : Control
	{
		public TestAPane()
		{
			TabStop = false;
			
			Items items = new Items();
			
			Button bu_clear = new Button { Text = "クリア" };
			
			bu_clear.Click += delegate
			{
				items.tx_receive.Clear();
			};
			
			Lay.Container root = new Lay.Vert( this );
			
			{
				Lay.Container con = new Lay.Horiz( root )
				{
					Padding = new Lay.Border( 3, 3 ),
					Just = true,  Height = 80, Sep = 8
				};
				
				items.BuildList( con );
				
				new Lay.Leaf( con, bu_clear )
				{
					Width = 50,  Just = true
				};
				
				new TestALay( con, items )
				{
					Width = 100, Just = true
				};
				
				new TestBLay( con, items )
				{
					Width = 100,  Just = true
				};
			}
			
			{
				Lay.Container con = new Lay.Horiz( root )
				{
					Just = true, Rel = 100
				};
				
				new Lay.Leaf( con, items.tx_trans )
				{
					Rel = 100, Just = true
				};
				
				new Lay.Leaf( con, items.tx_receive )
				{
					Rel = 100, Just = true
				};
			}
		}
		
		// class //
		
		public class Items
		{
			public TextBox tx_trans = new Prime.TextBox { Text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstu\r\n" };
			public TextBox tx_receive = new Prime.TextBox();
			public ListBox plist = new ListBox {  };
			public ListBox baudlist = new ListBox {  };
			
			public Items()
			{
				baudlist.Items.Add( "115200" );
				baudlist.Items.Add( "9600" );
				baudlist.Items.Add( "320000" );
				baudlist.Items.Add( "32000" );
				baudlist.Items.Add( "3200" );
				baudlist.Items.Add( "320" );
				
				UpdatePortList( plist );
			}
			
			public void PortOpen( SerialPort port )
			{
				if( ! port.IsOpen )
				{
					port.PortName = plist.SelectedItem.ToString();
					port.BaudRate = int.Parse( baudlist.SelectedItem.ToString() );
					port.Open();
				}
			}
			
			public void BuildList( Lay.Container con )
			{
				Button listupd = new Button { Text = "更新" };
				
				listupd.Click += delegate
				{
					UpdatePortList( plist );
				};
				
				Lay.Horiz root = new Lay.Horiz( con )
				{
					Width = 238,  Just = true, Sep = 4
				};
					
				new Lay.Leaf( root, listupd )
				{
					Width = 50,  Just = true
				};
				
				new Lay.Leaf( root, plist )
				{
					Width = 90,  Just = true
				};
				
				new Lay.Leaf( root, baudlist )
				{
					Width = 90,  Just = true
				};
				
			}
			
			protected static void UpdatePortList( ListBox box )
			{
				box.Items.Clear();
				
				string[] list = SerialPort.GetPortNames();
				foreach( string name in list )
				{
					box.Items.Add( name );
				}
			}
			
			public SerialPort CreatePort()
			{
				return new SerialPort
				{
					WriteTimeout = 10000,
					ReadTimeout = 10000,
					//Parity = Parity.None,
					//DataBits = 8,
					//StopBits = StopBits.One,
					//Encoding = System.Text.Encoding.UTF8
					ReadBufferSize = 64000,
					WriteBufferSize = 64000
				};
			}
		}
		
		//  //
		
		class TestALay : Lay.Vert
		{
			public TestALay( Lay.Container con, Items items ) : base( con )
			{
				SerialPort port = items.CreatePort();				
				System.Timers.Timer timer = new System.Timers.Timer( 20 );
				
				CheckBox ch_open = new CheckBox {};
				Button bu_tx_trans = new Button { Text = "送信" };
				
				ch_open.Click += delegate
				{
					if( ch_open.Checked )
					{
						items.PortOpen( port );
						timer.Start();
					}
					else
					{
						timer.Stop();
						port.Close();
					}
				};
				
				bu_tx_trans.Click += delegate
				{
					if( port.BytesToWrite == 0 )
					{
						byte[] data = System.Text.Encoding.UTF8.GetBytes( items.tx_trans.Text );
						port.Write( data, 0, data.Length );
					}
				};
				
				timer.Elapsed += delegate
				{
					if( port.BytesToRead > 0 )
					{
						byte[] data = new byte[ 64000 ];
						int rs = port.Read( data, 0, data.Length );
						items.tx_receive.Text += System.Text.Encoding.UTF8.GetString( data, 0, rs );
					}
				};
				
				new Lay.Leaf( this, ch_open )
				{
					Just = true,  Height = 22
				};
				
				new Lay.Leaf( this, bu_tx_trans )
				{
					Just = true,  Height = 22
				};
			}
		}
		
		//  //
		
		public class TestBLay : Lay.Vert
		{
			public TestBLay( Lay.Container con, Items items ) : base( con )
			{
				SerialPort port = items.CreatePort();
				System.Timers.Timer timer = new System.Timers.Timer( 20 );
				
				Sep = 4;
				
				byte[] tx_buff = CreateRand( 100 );
				byte[] r_buff = new byte[ tx_buff.Length ];
				int rb_ctr = 0;
				
				CheckBox ck_open = new CheckBox {};
				Button bu_1 = new Button { Text = "テスト" };
				Label res = new Label { Text = "結果" };
				
				ck_open.Click += delegate
				{
					if( ck_open.Checked )
					{
						items.PortOpen( port );
					}
					else
					{
						port.Close();
					}
				};
				
				bu_1.Click += delegate
				{
					rb_ctr = 0;
					port.DiscardOutBuffer();
					port.DiscardInBuffer();
					timer.Start();
					port.Write( tx_buff, 0, tx_buff.Length );
				};
				
				timer.Elapsed += delegate
				{
					if( port.BytesToRead > 0 )
					{
						rb_ctr += port.Read( r_buff, rb_ctr, r_buff.Length );
						
						if( rb_ctr >= tx_buff.Length )
						{
							timer.Stop();
							items.tx_receive.Text += rb_ctr.ToString() + "\r\n";
						}
					}
				};
				
				new Lay.Leaf( this, ck_open )
				{
					Just = true, Height = 20
				};
				
				new Lay.Leaf( this, bu_1 )
				{
					Just = true, Height = 20
				};
				
				new Lay.Leaf( this, res )
				{
					Just = true, Height = 20
				};
				
			}
			
			private byte[] CreateRand( int size )
			{
				byte[] data = new byte[ size ];
				
				for( int i = 0; i < data.Length; i ++ )
				{
					data[ i ] = ( byte ) ( 255 & Prime.Rand( 256 ) );
				}
				
				return data;
			}
		}
	}
}

namespace COMTest
{
	
}


//
