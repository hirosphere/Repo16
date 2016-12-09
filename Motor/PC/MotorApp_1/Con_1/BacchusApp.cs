using System;
using System.Windows.Forms;

namespace Bacchus
{
	public class App
	{
		public WDL.Land Perm;
		public LandA LandA = new LandA();
		public Physical Physical;
		
		// 
		
		public App( string file, Rail rail )
		{
			Physical = new Physical( rail );
			LandA.Physical = Physical;
			
			Perm = new WDL.Land { File = file };
			Perm.Load();
		}
	}
	
	
	public class AppPane : Control
	{
		public AppPane( App app )
		{
			WDLView wdlview = new WDLView( app.Perm );
			
			TabStop = false;
			
			{
				Lay.Container vert = new Lay.Vert( this )
				{
					Sep = 2, Padding = new Lay.Border( 1 )
				};
					
				{
					Lay.Tabs tabs = new Lay.Tabs( vert )
					{
						Just = true,
						Rel = 50
					};
					
					new Lay.Tab( tabs, "テーブル", BuildTables( app ) );
					new Lay.Tab( tabs, "パレット", BuildPalletPane( app ) );
					new Lay.Tab( tabs, "メイン", new Control{ BackColor = HSVColor.ToRGB( 0, 0, 1.0f ) } );
				}
				
				new Lay.Leaf( vert, wdlview )
				{
					Just = true,
					Rel = 50
				};
			}
		}
		
		private static Control BuildTables( App app )
		{
			Control con = new Control();
			
			{
				Lay.Container horiz = new Lay.Horiz( con ) {};
				
				new Lay.Leaf( horiz, new LandATable( app.LandA ) )
				{
					Width = 150, Just = true
				};
				
				new Lay.Leaf( horiz, new PalletTable( app.LandA ) )
				{
					Width = 200, Just = true
				};
				
				new Lay.Leaf( horiz, new PhyTable( app.Physical ) )
				{
					Width = 190, Just = true
				};
			}
			
			return con;
		}
		
		private static Control BuildPalletPane( App app )
		{
			Control pane = new Control();
			{
				Lay.Horiz horiz = new Lay.Horiz( pane );
				
				new Lay.Leaf( horiz, new Control { BackColor = HSVColor.ToRGB( 0, 0, 1.0f ) } )
				{
					Width = 190,
					Just = true
				};
			}
			return pane;
		}
	}

}


namespace Bacchus
{
	public class LandATable : TablePane
	{
		protected LandA Model;
		
		public LandATable( LandA model )
		{
			Model = model;
			
			RowCount = 1 + 7;
			ColCount = 1 + 1;
			
			RowLabelWidth = 80;
			ColWidth = 50;
			
			RowLabels = new string[]
			{
				"パターン", "位相", "あかるさ", "Run", "Speed", "", ""
			};
			
			ColLabels = new string[]
			{
				"値"
			};
			
			CellChanged += delegate { Model.Cure(); };
			
			Build();
		}
		
		protected override void BuildCells()
		{
			float[] spd_ss = new float[] { 0.1f, 1.0f };
			
			SetCell( 1, 1, new TablePane.IntCell( this, Model.Pattern ) { Max = 10 } );
			SetCell( 2, 1, new TablePane.IntCell( this, Model.Phase ) { Max = 5 } );
			SetCell( 3, 1, new FloatCell( this, Model.Volume ) { Max = 1 } );
			SetCell( 4, 1, new TablePane.IntCell( this, Model.Run ) { Max = 1 } );
			SetCell( 5, 1, new FloatCell( this, Model.Speed ) { Max = 100, Steps = spd_ss } );
		}
	}
	
	
	public class PalletTable : TablePane
	{
		protected Color[] Model;
		
		public PalletTable( LandA land )
		{
			Model = land.Pallet;
			
			RowCount = 1 + 7;
			ColCount = 1 + 3;
			
			RowLabelWidth = 30;
			ColWidth = 50;
			
			RowLabels = new string[]
			{
				"1", "2", "3", "4", "5", "6", "7"
			};
			
			ColLabels = new string[]
			{
				"Hue", "Sat", "Value"
			};
			
			CellChanged += delegate { land.Cure(); };
			
			Build();
		}
		
		protected override void BuildCells()
		{
			for( int i = 0; i < Physical.Lamp_Count; i ++ )
			{
				BuildLampRow( 1 + i, 1, Model[ i ] );
			}
		}
		
		private static float[] steps = new float[] { 0.002f, 0.05f };
		private static float[] hues = new float[] { 0.1f, 5.0f };
		
		public void BuildLampRow( int row, int col, Color model )
		{
			SetCell( row, col ++, new TablePane.FloatCell( this, model.Hue   ) { Max = 360, Steps = hues } );
			SetCell( row, col ++, new TablePane.FloatCell( this, model.Sat   ) { Max = 1.0f, Steps = steps } );
			SetCell( row, col ++, new TablePane.FloatCell( this, model.Value ) { Max = 1.0f, Steps = steps } );
		}
	}
	
	/*  */
	public class PhyTable : TablePane
	{
		protected Physical Model;
		
		public PhyTable( Physical model )
		{
			Model = model;
			
			RowCount = 1 + 7;
			ColCount = 1 + 3;
			
			RowLabelWidth = 45;
			ColWidth = 45;
			
			RowLabels = new string[]
			{
				"1", "2", "3", "4", "5", "6", "7"
			};
			
			ColLabels = new string[]
			{
				"R", "G", "B"
			};
			
			CellChanged += delegate { model.Cure(); };
			
			Build();
		}
		
		protected override void BuildCells()
		{
			for( int i = 0; i < Physical.Lamp_Count; i ++ )
			{
				BuildLampRow( 1 + i, 1, Model.Lamps[ i ] );
			}
		}
		
		public void BuildLampRow( int row, int col, Physical.Lamp model )
		{
			SetCell( row, col ++, new TablePane.IntCell( this, model.R ) { Max = Physical.PWM_Max } );
			SetCell( row, col ++, new TablePane.IntCell( this, model.G ) { Max = Physical.PWM_Max } );
			SetCell( row, col ++, new TablePane.IntCell( this, model.B ) { Max = Physical.PWM_Max } );
		}
	}
	
	public class FloatCell : TablePane.FloatCell
	{
		private static float[] steps = new float[] { 0.1f, 0.01f };
		
		public FloatCell ( TablePane land, Leaf.Float leaf ) : base( land, leaf )
		{
			Steps = steps;
		}
	}
}


namespace Bacchus
{
	public class LandA
	{
		public Leaf.Int Run = new Leaf.Int();
		public Leaf.Float Speed = new Leaf.Float( 1.0f );
		
		protected int TickPhase = 0;
		
		protected const int StepSpan = 10;   //  10ms  100Hz
		protected System.Timers.Timer Timer = new System.Timers.Timer( StepSpan );
		
		public Leaf.Int Pattern = new Leaf.Int();
		public Leaf.Int Phase = new Leaf.Int();
		public Leaf.Float Volume = new Leaf.Float();
		
		public Physical Physical;
		
		public Color[] Pallet = new Color[]
		{
			new Color( 330, 0.25f, 0.2f ),
			new Color( 240, 0.95f, 0.2f ),
			new Color( 180, 0.95f, 0.2f ),
			new Color( 330, 0.9f, 0.2f ),
			new Color( 120, 1.0f, 0.2f ),
			new Color( 150, 1.0f, 0.2f ),
			new Color( 180, 1.0f, 0.2f ),
			new Color( 210, 1.0f, 0.0f ),
			new Color( 240, 1.0f, 1.0f ),
			new Color( 270, 1.0f, 1.0f ),
			new Color( 0, 0.0f, 1.0f ),
			new Color( 0, 0.0f, 0.0f )
		};
		
		public LandA()
		{
			Timer.Elapsed += delegate { Step(); };
			
			Run.Changed += delegate
			{
				if( Run.Value == 0 )  Timer.Stop();
				if( Run.Value == 1 )  Timer.Start();
			};
		}
		
		protected void Step()
		{
			TickPhase += ( int ) ( StepSpan * ( Speed.Value * 1.5f ) );
			if( TickPhase >= 1000 )
			{
				TickPhase -= 1000;
				if( TickPhase > 1000 )  TickPhase = 0;
				
				int ph = ++ Phase.Value;
				if( ph >= 6 )  ph = 0;
				Phase.SetValue( ph );
				Cure();
			}
		}
		
		protected int[,] RefPatt = new int[,]
		{
			{ 1, 1, 1, 1, 1, 1, 0 },
			{ 1, 1, 1, 2, 2, 2, 0 },
			{ 1, 1, 2, 1, 1, 2, 0 },
			{ 1, 2, 1, 2, 1, 2, 0 },
			{ 1, 1, 2, 2, 3, 3, 0 },
			{ 1, 2, 3, 1, 2, 3, 0 },
			{ 1, 2, 3, 4, 5, 6, 0 },
			{ 1, 2, 2, 1, 2, 2, 1 },
		};
		
		public void Cure()
		{
			int ps = Math.Min( Pattern.Value, Math.Max( 0, RefPatt.GetLength( 0 ) - 1 ) );
			
			for( int l = Phase.Value, p = 0; p < 6; p ++ )
			{
				if( l >= 6 ) l = 0; 
				
				Physical.Lamps[ l ++ ].Set( Pallet[ RefPatt[ ps, p ] ] );
			}
			Physical.Lamps[ 6 ].Set( Pallet[ RefPatt[ ps, 6 ] ] );
			Physical.Cure();
		}
	}
	
	public class Color
	{
		public Leaf.Float Hue = new Leaf.Float();
		public Leaf.Float Sat = new Leaf.Float();
		public Leaf.Float Value = new Leaf.Float();
		
		public Color() {}
		
		public Color( float hue, float sat, float value )
		{
			Hue.Value = hue;
			Sat.Value = sat;
			Value.Value = value;
		}
	}
}


namespace Bacchus
{
	public class Physical
	{
		public Lamp[] Lamps = new Lamp[ Lamp_Count ];
		public const int Lamp_Count = 7;
		public const byte PWM_Step = 250;
		public const byte PWM_Max = 230;
		
		protected Packet Buffer = new Packet( Lamp_Count );
		
		protected Rail Rail;
		
		public Physical( Rail rail )
		{
			Rail = rail;
			
			for( int i = 0; i < Lamp_Count; i ++ )
			{
				Lamps[ i ] = new Lamp();
			}
		}
		
		public void Cure()
		{
			for( int i = 0; i < Lamp_Count; i ++ )
			{
				Buffer[ i ] = Lamps[ i ];
			}
			
			Buffer.Write( Rail.Port );
		}
		
		//  //
		
		public class Lamp
		{
			public Leaf.Int R = new Leaf.Int {};
			public Leaf.Int G = new Leaf.Int {};
			public Leaf.Int B = new Leaf.Int {};
			
			public void Set( Color col )
			{
				float r, g, b;
				HSVColor.ToRGB( col.Hue.Value, col.Sat.Value, col.Value.Value, out r, out g, out b );
				R.SetValue( ( int ) ( r * PWM_Max ) );
				G.SetValue( ( int ) ( g * PWM_Max ) );
				B.SetValue( ( int ) ( b * PWM_Max ) );
			}
		}
		
		//  //
		
		protected class Packet : Rail.Packet
		{
			public Packet( int lamp_count ) : base( 0x70, ( byte ) ( 3 * lamp_count ) )
			{
				
			}
			
			public Lamp this[ int index ]
			{
				set
				{
					int b = 3 + index * 3;
					Buffer[ b + 0 ] = ( byte ) ( PWM_Step - value.R.Value );
					Buffer[ b + 1 ] = ( byte ) ( PWM_Step - value.G.Value );
					Buffer[ b + 2 ] = ( byte ) ( PWM_Step - value.B.Value );
				}
			}
		}
	}
}

