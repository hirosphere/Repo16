var WM =
{
	JMA_Sat:
	{
		Title:"気象庁 衛星画像",
		MakeImgURL: function( time, options )
		{
			var format = "http://www.jma.go.jp/jp/gms/imgs_c/{Area}/{Element}/1/{YYYY}{MM}{DD}{hh}{Jm}-00.png";
			var date = new Date( time );
			var h = date.getHours();
			var cross = h == 3 || h == 9 || h == 15 || h == 21;
			var jm = ( date.getMinutes() < 30 || cross ) ? "00" : "15";
			return str_format( format, fs_date( date ), options, { Jm: jm } );
		},
		Delay: 1.5 * 3600 * 1000,
		ArgDefs:
		{
			Area:
			{
				"0": "日本域",
				"1": "4分割(北西)",
				"2": "4分割(南西)",
				"3": "4分割(北東)",
				"4": "４分割(南東)",
				"5": "北半球",
				"6": "全球"
			},
			Element:
			{
				infrared: "赤外",
				watervapor: "水蒸気"
			},
			ImgType:
			{
				imgs_c: "カラー",
				imgs: "モノクロ"
			}
		}
	},
	JMA_RA: "気象庁 解析雨量・降水短時間予報",
	Tepco: "TEPCO",
	WG: "Web GMS",
	"": ""
}

var WeatherMovie = class_def
(
	Movie,
	function()
	{
		this.Initiate = function( endTime, length, step, kind, options )
		{
			this.Length = 28;
			this.Width = 800;
			this.Height = 800;
			
			var unit = 30 * 60 * 1000;
			
			this.WMDef = WM.JMA_Sat;
			
			this.EndTime = new Date().getTime() - this.WMDef.Delay;
			this.StepTime = 60 * 60 * 1000;
			this.StartTime = this.EndTime - this.StepTime * ( this.Length - 1 );
			this.Options = { ImgType: "img_c", Area: "0", Element: "watervapor" };
		}
		
		this.CreateFrame = function( index, length )
		{
			var e = enew( "div", null );
			var ca = enew( "div", e );
			enew( "div", ca, null, { fontSize: "30px" }, index - 0 + 1 );
			
			var time = this.StartTime + this.StepTime * index;
			var url = this.WMDef.MakeImgURL( time, this.Options );
			enew( "a", ca, { target: "_blank", href: url }, { fontSize: "13px" }, url );
			
			var cb = enew( "div", e );
			enew( "img", cb, { src: url }, {  }, url );
			
			return e;
		}
	}
);

WMSettingPane = class_def
(
	null,
	function()
	{
		this.Initiate = function( comE )
		{
			this.E = enew( "div", comE, {}, {} );
			enew( "div", this.E, {}, {}, "Weather" );
		}
	}
);

// UTF-8Nでエンコード //
