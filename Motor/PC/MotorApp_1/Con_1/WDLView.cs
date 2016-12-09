using System;
using System.Windows.Forms;

class WDLView : Control
{
	public WDL.Land Land;
	
	protected TextBox TextEditor = new Prime.TextBox();
	protected TextBox TestOutput = new Prime.TextBox();
	
	public WDLView( WDL.Land land ) : this()
	{
		Land = land != null ? land : new WDL.Land();
		TextEditor.Text = Land.WDL;
	}
	
	public WDLView()
	{
		TabStop = false;
		
		{
			Lay.Container root = new Lay.Horiz( this )
			{
				Sep = 2
			};
			
			BuildSide( root );
			BuildContent( root );
		}
	}
	
	private void BuildContent( Lay.Container con )
	{
		Lay.Horiz vert = new Lay.Horiz( con )
		{
			Width = 300, Rel = 95,
			Just = true
		};
		
		new Lay.Leaf( vert, TextEditor )
		{
			Width = 100, 
			// Height = 80,
			Rel = 70,
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
		Button b11 = new Button { Text = "ファイル読込" };
		Button b12 = new Button { Text = "ファイル保存" };
		Button b21 = new Button { Text = "Editor→Land" };
		Button b22 = new Button { Text = "Land→Editor" };
		
		b11.Click += delegate { Land.Load();  TextEditor.Text = Land.WDL; };
		b12.Click += delegate { Land.Save(); };
		b21.Click += delegate { Land.SetWDL( TextEditor.Text ); };
		b22.Click += delegate { TextEditor.Text = Land.GetWDL(); };
		
		
		{
			Lay.Vert vert = new Lay.Vert( con )
			{
				Width = 100,
				Just = true,
				Sep = 2
			};
			
			new Lay.Leaf( vert, b11 ) { Just = true, Height = 23 };
			new Lay.Leaf( vert, b12 ) { Just = true, Height = 23 };
			new Lay.Leaf( vert, b21 ) { Just = true, Height = 23 };
			new Lay.Leaf( vert, b22 ) { Just = true, Height = 23 };
		}
	}
	
	public void Test()
	{
		WDL.Value v = WDL.ToValue( TextEditor.Text );
		TestOutput.Text = WDL.ToString( v );
	}
}


//  //
