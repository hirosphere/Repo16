using System;
using System.Windows.Forms;

public class RailPane : Control
{
	protected Rail Rail;
	
	public RailPane( Rail rail )
	{
		Rail = rail;
		
		TabStop = false;
		
		Lay.Container vert = new Lay.Vert( this )
		{
			Sep = 2, Padding = new Lay.Border( 1 )
		};
		
		{
			Lay.Horiz h1 = new Lay.Horiz( vert )
			{
				Just = true, Height = 350, Sep = 1
			};
			
			new Lay.Leaf( h1, new MotorTablePane( Rail ) )
			{
				Width = 350, Rel = 100,
				Just = true
			};
		}
		
		{
			CheckBox cb = new CheckBox();
			cb.Click += delegate
			{
				rail.PortEnabled.Value = cb.Checked;
			};
			
			Lay.Horiz h3 = new Lay.Horiz( vert )
			{
				Just = true, Height = 30, Sep = 2
			};
			
			new Lay.Leaf( h3, cb )
			{
				Width = 150, Just = true 
			};
			
			new Lay.Leaf( h3, new Button { Text = "オスだけ" } )
			{
				Width = 100, Height = 26
			};
		
			new Lay.Leaf( h3, new TrackBar {  } )
			{
				Width = 150, Just = true 
			};
		}
	}
}

public class MotorTablePane : TablePane
{
	protected Rail Rail;
	
	public MotorTablePane( Rail rail )
	{
		Rail = rail;
		
		RowCount = 1 + 14;
		ColCount = 1 + 8;
		
		RowLabelWidth = 120;
		ColWidth = 70;
		
		RowLabels = new string[]
		{
			"速度", "照明バイアス", "動力バイアス", "スケール", "VVVFタイプ", "VVVFレベル",
			"VDC", "方向", 
			"Osc1 レベル", "Osc1 パルス幅", "Osc1 周波数",
			"Osc2 レベル", "Osc2 パルス幅", "Osc2 周波数"
		};
		
		ColLabels = new string[]
		{
			"動力1", "動力2", "動力3", "動力4", "動力5", "動力6", "動力7", "動力8"
		};
		
		Build();
	}
	
	protected override void BuildCells()
	{
		for( int col = 1, i = 0; col < ColCount && i < Rail.Trains.Length; col ++, i ++ )
		{
			new TrainColumn( this, 1, col, Rail.Trains[ i ] );
		}
	}
}

public class TrainColumn
{
	protected Rail.Train  Model;
	
	public TrainColumn( TablePane table, int row, int col, Rail.Train model )
	{
		Model = model;
		
		table.SetCell( row ++, col, new TablePane.FloatCell( table, Model.Speed ) );
		
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.LightBias ) { Max = 250  } );
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.MotorBias ) { Max = 250  } );
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.Scale     ) { Max = 1000 } );
		
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.VVVFType ) );
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.VVVFVolume ) { Max = 100 } );
		new MotorColumn( table, row, col, model.Motor );
	}
}

public class MotorColumn
{
	protected Rail.Motor  Model;
	
	public MotorColumn( TablePane table, int row, int col, Rail.Motor model )
	{
		Model = model;
		
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.VDC ) { Max = 250 } );
		table.SetCell( row ++, col, new TablePane.IntCell( table, Model.Direction ) { Max = 2 } );
		
		new OscColumn( table, ref row, col, model.Osc_1 );
		new OscColumn( table, ref row, col, model.Osc_2 );
	}
}

public class OscColumn
{
	public OscColumn( TablePane table, ref int row, int col, Rail.Osc model )
	{
		table.SetCell( row ++, col, new TablePane.IntCell( table, model.Level ) { Max = 250 } );
		table.SetCell( row ++, col, new TablePane.IntCell( table, model.Width ) { Max = 255 } );
		table.SetCell( row ++, col, new TablePane.FloatCell( table, model.Freq ) { Max = 16000 } );
	}
}

public class MonTablePane : TablePane
{
	public MonTablePane()
	{
		RowCount = 6;
		RowLabelWidth = 60;
		ColCount = 6;
		ColWidth = 60;
		
		Build();
	}
	
	protected override TablePane.Cell MakeCell( int row, int col )
	{
		return new TablePane.IntCell( this, new Leaf.Int() );
	}
}

public class MotorProfilePane : Control
{
	protected Rail Rail;
	
	public MotorProfilePane( Rail rail )
	{
		Rail = rail;
		
		TabStop = false;
		
		Lay.Container vert = new Lay.Vert( this ) { Sep = 2, Padding = new Lay.Border( 2 ) };
		{
			Lay.Horiz horiz = new Lay.Horiz( vert ) { Height = 160, Just = true, Sep = 2 };
			
			//new Leaf( horiz, Unit_1 ) { Just = true, Width = 500 };
		}
		{
			Lay.Horiz horiz = new Lay.Horiz( vert ) { Rel = 100, Just = true, Sep = 3 };
			//new Leaf( horiz, Monitor ) { Just = true, Rel = 10 };
		}
	}
	
}

