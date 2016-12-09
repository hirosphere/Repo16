using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

public partial class GridPane : Control
{
	public int BorderSize = 2;
	public Color BorderColor = Color.FromArgb( 0x50, 0x50, 0x50 );
	public Color BorderFocusColor = Color.FromArgb( 0x10, 0x10, 0x10 );
	
	public int RowCount = 5;
	public int ColCount = 5;
	
	public int DefRowSize = 20;
	public int DefColSize = 20;
	
	public GridPane()
	{
	}
	
	// content //
	
	protected virtual void Build()
	{
		
	}
	
	// prop //
	
	// paint //
	
	protected override void OnPaint( PaintEventArgs args )
	{
		Graphics gr = args.Graphics;
		Color color = Focused ? BorderFocusColor : BorderColor;
		
		using( Pen pen = new Pen( color, BorderSize ) )
		{
			int p = BorderSize / 2;
			int s = p * 2 + 1;
			
			gr.DrawRectangle( pen, p, p, Width - s, Height - s );
		}
	}
}


public partial class GridPane
{
	public class Cell
	{
		public virtual void Paint( Graphics gr )
		{
			
		}
	}
}


//    //
