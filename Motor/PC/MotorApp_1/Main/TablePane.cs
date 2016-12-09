using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

public partial class TablePane : Control
{
	public static Cell CurrentWheel = null;
	
	public int		BorderWidth = 2;
	public Color	BorderColor = Color.FromArgb( 0x70, 0x70, 0x68 );
	public Color	BorderFocusColor = Color.FromArgb( 0x20, 0x20, 0x1C );
	public Color    HoverColor  = HSVColor.ToRGB( 90, 0.4f, 0.8f );
	public Color    SelColor    = HSVColor.ToRGB( 235, 0.08f, 0.99f );
	
	public int SepWidth = 1;
	public int FontSize = 10;
	
	public string[] ColLabels = new string[ 0 ];
	public string[] RowLabels = new string[ 0 ];
	
	public int RowCount = 5;
	public int ColCount = 5;
	
	public int RowLabelWidth = 80;
	public int RowHeight = 16;
	public int ColWidth = 80;
	
	protected Cell[,] Cells = null;
	protected int SelRow = 1;
	protected int SelCol = 1;
	
	public event Action CellChanged;
	
	public TablePane()
	{
		BackColor = Color.FromArgb( 0xFF, 0xFF, 0xFF );
		
		Enter += delegate
		{
			PaintBorder( CreateGraphics(),true );
			if( GetCurCell() != null ) GetCurCell().Invalidate();
		};
		
		Leave += delegate
		{
			PaintBorder( CreateGraphics(), false );
			if( GetCurCell() != null ) GetCurCell().Invalidate();
		};
		
		MouseDown += delegate { Focus(); };
	}
	
	public static void PutMouseWheel( MouseEventArgs args )
	{
		if( CurrentWheel != null )	CurrentWheel.PutMouseWheel( args );
	}
	
	public void Build()
	{
		Cells = new Cell[ RowCount, ColCount ];
		MakeLabels();
		BuildCells();
		RelocateCells();
	}
	
	protected void MakeLabels()
	{
		for( int row = 0; row < RowLabels.Length; row ++ )
		{
			SetCell( row + 1, 0, new Label( this, RowLabels[ row ] ) );
		}
		
		for( int col = 0; col < ColLabels.Length; col ++ )
		{
			SetCell( 0, col + 1, new Label( this, ColLabels[ col ] ) );
		}
	}
	
	protected virtual void BuildCells()
	{
		for( int row = 1; row < RowCount; row ++ )
		{
			for( int col = 1; col < ColCount; col ++ )
			{
				Cells[ row, col ] = MakeCell( row, col );
			}
		}
	}
	
	protected virtual Cell MakeCell( int row, int col )
	{
		//return new Label( this, row, col );
		return null;
	}
	
	public virtual bool CellSelected( Cell cell )
	{
		if( cell.Row > 0 && SelRow == cell.Row )
		{
			if( cell.Col > 0 && SelCol == cell.Col )
			{
				return true;
			}
		}
		return false;
	}
	
	protected void RelocateCells()
	{
		int top = BorderWidth;
		
		for( int row = 0; row < Cells.GetLength( 0 ); row ++ )
		{
			int left = BorderWidth;
			int height = CellHeight( row );
			
			for( int col = 0; col < Cells.GetLength( 1 ); col ++ )
			{
				Cell cell = Cells[ row, col ];
				int width = CellWidth( col );
				
				if( cell!= null )
				{
					cell.Left = left;
					cell.Width = width;
					cell.Top = top;
					cell.Height = height;
				}
				
				left += width + SepWidth;
			}
			
			top += height + SepWidth;
		}
	}
	
	public Cell GetCell( int row, int col )
	{
		if( Cells != null )
		{
			if( row >=0 && row < Cells.GetLength( 0 ) )
			{
				if( col >=0 && col < Cells.GetLength( 1 ) )
				{
					return Cells[ row, col ];
				}
			}
		}
		return null;
	}
	
	public void SetCell( int row, int col, Cell cell )
	{
		if( Cells != null )
		{
			if( row >=0 && row < Cells.GetLength( 0 ) )
			{
				if( col >=0 && col < Cells.GetLength( 1 ) )
				{
					cell.Row = row;
					cell.Col = col;
					Cells[ row, col ] = cell;
				}
			}
		}
	}
	
	protected int CellWidth( int col )
	{
		return col == 0 ? RowLabelWidth : ColWidth;
	}
	
	protected int CellHeight( int row )
	{
		return RowHeight;
	}
	
	//
	
	public Cell GetCurCell()
	{
		return GetCell( SelRow, SelCol );
	}
	
	public virtual void Select( int row, int col )
	{
		if( row > 0 && row < RowCount && col > 0 && col < ColCount )
		{
			if( row != SelRow || col != SelCol )
			{
				Cell o_cell = GetCurCell();
				SelRow = row;
				SelCol = col;
				Cell n_cell = GetCurCell();
				if( o_cell != null )	o_cell.Invalidate();
				if( n_cell != null )	n_cell.Invalidate();
			}
		}
	}
	
	public void NoteCellChanged( Cell cell )
	{
		if( CellChanged != null )  CellChanged();
	}
	
	//  //
	
	protected override void OnPaint( PaintEventArgs args )
	{
		base.OnPaint( args );
		
		Graphics gr = args.Graphics;
		
		int left = BorderWidth;
		int top = BorderWidth;
		int right = Width - BorderWidth;
		int bottom = Height - BorderWidth;
		
		PaintBorder( gr, Focused );
		
		using( Pen sep_pen = new Pen( Color.FromArgb( 0x50, 0x50, 0x50 ), SepWidth ) )
		{
			sep_pen.DashStyle = DashStyle.Dash;
			int h = SepWidth / 2;
			
			int row_bottom = BorderWidth + CellHeight( 0 );
			
			for( int row = 0; row < RowCount; row ++ )
			{
				Point beg = new Point( left + h, row_bottom + h );
				Point end = new Point( right - h, row_bottom + h );
				gr.DrawLine( sep_pen, beg, end );
				
				row_bottom += CellHeight( row ) + SepWidth;
			}
			
			int col_right = BorderWidth;
			
			for( int col = 0; col < ColCount; col ++ )
			{
				col_right += CellWidth( col );
				
				Point beg = new Point( col_right + h, top + h );
				Point end = new Point( col_right + h, bottom - h );
				gr.DrawLine( sep_pen, beg, end );
				
				col_right += SepWidth;
			}
		}
	}
	
	protected void PaintBorder( Graphics gr, bool focused )
	{
		Color color = focused ? BorderFocusColor : BorderColor;
		
		using( Pen pen = new Pen( color, BorderWidth ) )
		{
			int p = BorderWidth / 2;
			int s = p * 2 + 1;
			
			gr.DrawRectangle( pen, 0 + p, 0 + p, Width - s, Height - s );
		}
	}
	
	protected override void OnPreviewKeyDown( PreviewKeyDownEventArgs args )
	{
		switch( args.KeyCode )
		{
			case Keys.Right:
			case Keys.Left:
			case Keys.Down:
			case Keys.Up:
				args.IsInputKey = true;
				break;
		}
	}
	
	protected override void OnKeyDown( KeyEventArgs args )
	{
		switch( args.KeyCode )
		{
			case Keys.S:
			case Keys.Right:
				Select( SelRow, SelCol + 1 );
				break;
				
			case Keys.A:
			case Keys.Left:
				Select( SelRow, SelCol - 1 );
				break;
				
			case Keys.X:
			case Keys.Down:
				Select( SelRow + 1, SelCol );
				break;
				
			case Keys.W:
			case Keys.Up:
				Select( SelRow - 1, SelCol );
				break;
				
			default:
				if( GetCurCell() != null )
				{
					GetCurCell().PutKeyEvent( args );
				}
				return;
		}
		
		args.Handled = true;
	}
}


public partial class TablePane
{
	public class Cell : Control
	{
		protected TablePane Land;
		protected bool Hovered;
		
		public int Row, Col;
 
		public Cell( TablePane land )
		{
			Land = land;
			Parent = land;
			TabStop = false;
			
			MouseDown += delegate { Land.Focus(); Land.Select( Row, Col ); };
			MouseEnter += delegate { TablePane.CurrentWheel = this; Hovered = true; Invalidate(); };
			MouseLeave += delegate { TablePane.CurrentWheel = null; Hovered = false; Invalidate(); };
		}
		
		public bool IsSelected()
		{
			return Land.CellSelected( this );
		}
		
		protected override void OnPaintBackground( PaintEventArgs args )
		{
			Color color = ( Land.Focused && IsSelected() ) ? Land.SelColor : Land.BackColor;
			
			using ( Brush br = new SolidBrush( color ) )
			{
				args.Graphics.FillRectangle( br, 0, 0, Width, Height );
			}
		}
		
		protected override void OnPaint( PaintEventArgs args )
		{
			PaintLabel( args.Graphics );
			PaintHover( args.Graphics );
		}
		
		protected virtual void PaintLabel( Graphics gr )
		{
			DrawText( gr, MakeLabel() );
		}
		
		protected virtual string MakeLabel()
		{
			return "";
		}
		
		protected virtual void PaintHover( Graphics gr )
		{
		}
		
		protected void DrawText( Graphics gr, string text )
		{
			int fs = Land.FontSize;
			int ftop = ( Land.RowHeight - fs ) / 2 - 1;
			
			using( Font font = new Font( "MS UI Gothic", fs ) )
			{
				gr.DrawString( text, font, Brushes.Black, 1, ftop );
			}
		}
		
		public virtual void PutMouseWheel( MouseEventArgs args )
		{
		}
		
		public virtual void PutKeyEvent( KeyEventArgs args )
		{
		}
	}
	
	public class Label : Cell
	{
		protected new string Text;
		
		public Label( TablePane land, string text ) : base( land )
		{
			Text = text;
		}
		
		protected override string MakeLabel()
		{
			return Text;
		}
	}
	
	public class ValueCell : Cell
	{
		public ValueCell( TablePane land ) : base( land )
		{
		}
		
		protected override void PaintHover( Graphics gr )
		{
			if( ! Hovered ) return;
			
			int bw = 1;
			using ( Pen pen = new Pen( Land.HoverColor, bw ) )
			{
				gr.DrawRectangle( pen, 0, 0, Width - bw, Height - bw );
			}
		}
		
	}
	
	
	
	public abstract class NumberCell : ValueCell
	{
		protected int CurNumClass = 0;
		
		public NumberCell( TablePane land ) : base( land )
		{
		}
		
		protected override void OnMouseMove( MouseEventArgs args )
		{
			bool f = args.X > 20;
			CurNumClass = f ? 0 : 1;
		}
		
		public override void PutMouseWheel( MouseEventArgs args )
		{
			ValueOper( CurNumClass, args.Delta > 0 );
		}
		
		public override void PutKeyEvent( KeyEventArgs args )
		{
			switch( args.KeyCode )
			{
				case Keys.E:  ValueOper( 0, true );  break;
				case Keys.D:  ValueOper( 0, false );  break;
				case Keys.R:  ValueOper( 1, true );  break;
				case Keys.F:  ValueOper( 1, false );  break;
				case Keys.C:  ValueOper( -1, false );  break;
				default: return;
			}
			args.Handled = true;
		}
		
		protected virtual void ValueOper( int step_class, bool increment ) {}
	}
	
	
	
	public class IntCell : NumberCell
	{
		public int[] Steps = new int[] { 1, 10 };
		public int Min = 0;
		public int Max = int.MaxValue;
		public int Def = 0;
		
		protected Leaf.Int Leaf;
		
		public IntCell( TablePane land, Leaf.Int leaf ) : base( land )
		{
			Leaf = leaf;
			Leaf.Changed += delegate { Invalidate(); };
		}
		
		protected override string MakeLabel()
		{
			return Leaf.Value.ToString();
		}
		
		protected override void ValueOper( int sc, bool inc )
		{
			if( sc >= 0 && sc < Steps.Length )
			{
				int step = Steps[ sc ];
				int value = Leaf.Value + ( inc ? step : - step );
				value = Math.Min( this.Max, Math.Max( this.Min, value ) );
				Leaf.SetValue( value );
			}
			else if( sc == -1 )
			{
				Leaf.SetValue( Def );
			}
			
			Land.NoteCellChanged( this );
		}
	}
	
	
	
	public class FloatCell : NumberCell
	{
		public float[] Steps = new float[] { 1, 10 };
		public float Min = 0;
		public float Max = float.MaxValue;
		public float Def = 0;
		
		protected Leaf.Float Leaf;
		
		public FloatCell( TablePane land, Leaf.Float leaf ) : base( land )
		{
			Leaf = leaf;
			Leaf.Changed += delegate { Invalidate(); };
		}
		
		protected override string MakeLabel()
		{
			return Leaf.Value.ToString();
		}
		
		protected override void ValueOper( int sc, bool inc )
		{
			if( sc >= 0 && sc < Steps.Length )
			{
				float step = Steps[ sc ];
				float value = Leaf.Value + ( inc ? step : - step );
				value = Math.Min( this.Max, Math.Max( this.Min, value ) );
				Leaf.SetValue( value );
			}
			else if( sc == -1 )
			{
				Leaf.SetValue( Def );
			}
			
			Land.NoteCellChanged( this );
		}
	}
	
	//  //
}

public partial class TablePane
{
}

//	コントロールを描画する
//	http://dobon.net/vb/dotnet/graphics/drawcontrols.html

/*  */
