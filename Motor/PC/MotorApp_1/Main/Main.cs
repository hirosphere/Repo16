using System;
using System.Windows.Forms;
using System.Drawing;
using Lay;


public class Programm
{
	[STAThread]
	public static void Main()
	{
		Application.EnableVisualStyles();
		Application.SetCompatibleTextRenderingDefault( false );
		Application.Run( new AppForm( new App() ) );
		
		if( OnTerminate != null )
		{
			OnTerminate();
		}
	}
	
	public static event Action OnTerminate;
}


public class App
{
	public WDL.Land Perm = new WDL.Land { File = @"Data\App.wdl" };
}


public class AppForm : Form
{
	public AppForm( App app )
	{
		this.Text = "MotorApp 2016";
		this.WindowState = FormWindowState.Maximized;
		//this.SetStyle( ControlStyles.Opaque, true );
		
		Rail rail = new Rail();
		Bacchus.App bacchus = new Bacchus.App( @"Data\Bacchus.wdl", rail );
		
		Lay.Container root = new Lay.Vert( this );
		
		{
			Lay.Tabs tabs = new Tabs( root )
			{
				Just = true, Rel = 100
			};
			
			tabs.Client.MouseWheel += ( sender, args ) => { TablePane.PutMouseWheel( args ); };
			
			new Lay.Tab( tabs, "HID", new HID_1_Pane() );
			new Lay.Tab( tabs, "Rail", new RailPane( rail ) );
			new Lay.Tab( tabs, "運行", new Control() );
			new Lay.Tab( tabs, "車両", new Control() );
			new Lay.Tab( tabs, "WDL View", new WDLView( app.Perm ) );
			
			//  new Lay.Tab( tabs, "Bacchus", new Bacchus.AppPane( bacchus ) );
			//  new Lay.Tab( tabs, "COMテスト", new COMTest.AppPane() );
		}
	}
}


// EOF //
