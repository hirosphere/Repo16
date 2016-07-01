

// http://saigaijyouhou.com/img/sstD_anm_20130505.gif/ 海水温分布

var Movie = class_def
(
	null,
	function()
	{
		this.MakeContent = function()
		{
		}
	}
);


var WeatherMovie = class_def
(
	Movie,
	function( Base )
	{
		
	}
);

var WM = new function()
{
	this.JMA_WV = function( begin_time, time_span, step_time, zone, color )
	{
		
	}
	
	this.JMA_RA = function( time, zone )
	{
		
	}
	
}

// UI //

var Motion = class_def
(
	null,
	function()
	{
		this.Start = function()
		{
		}
		
		this.Stop = function()
		{
		}
		
	}
);


//

var Anim = new function()
{
	var sec = 1000, min = 60 * 1000, hour = 3600 * 1000;
	var types = {};
	types.DT_512 =
	{
		siteName: 'ディジタル台風', siteUrl: 'http://agora.ex.nii.ac.jp/digital-typhoon/',
		typeName: '512x512',
		site: 'http://agora.ex.nii.ac.jp/digital-typhoon/',
		height: 512, width: 512, step: 1 * hour, delay: 1.5 * hour,
		url: 'http://agora.ex.nii.ac.jp/digital-typhoon/globe/color/{YYYY}/512x512/MTS{MT}{YY}{MM}{DD}{hh}.globe.1.jpg'
	}
	types.DT_W =
	{
		siteName: 'ディジタル台風', siteUrl: 'http://agora.ex.nii.ac.jp/digital-typhoon/',
		typeName: '壁紙',
		height: 768, width: 1024, step: 1 * hour, delay: 1.5 * hour,
		url: 'http://agora.ex.nii.ac.jp/digital-typhoon/wallpaper/globe/1024x768/{YYYY}/MTS{MT}{YY}{MM}{DD}{hh}.jpg'
	}
	types.JMA =
	{
		siteName: '気象庁 衛星画像',
		siteUrl: 'http://www.jma.go.jp/jp/gms/',
		height: 812, width: 800, step: 1 * hour,
		delay: 20 * min, jst: true,
		url: 'http://www.jma.go.jp/jp/gms/imgs_c/{Area}/{Element}/1/{YYYY}{MM}{DD}{hh}00-00.png',
		ElementLabels:
		{
			infrared: "赤外",
			visible: "可視",
			watervapor: "水蒸気"
		},
		AreaLabels:
		{
			"0": "日本域",
			"1": "4分割(北西)",
			"2": "4分割(南西)",
			"3": "4分割(北東)",
			"4": "４分割(南東)",
			"5": "北半球",
			"6": "全球"
		},
		MakeTitle: function( type, mdef, span )
		{
			var subargs =
			{
				//ElemLab: type.ElementLabels[ mdef.Element ],
				ElemLab: type.ElementLabels[ mdef.Element ],
				AreaLab: type.AreaLabels[ mdef.Area ],
				Span: span / hour + '時間'
			}
			return vrep( '<a href="{siteUrl}" target="_blank">{siteName}</a> {ElemLab} {AreaLab} {Span}', subargs, type );
		}
	}
	types.JMA_RadAme =
	{
		siteName: '気象庁 解析雨量・降水短時間予報',
		siteUrl: 'http://www.jma.go.jp/jp/radame/index.html',
		height: 500, width: 600, step: 30 * min, delay: 30 * min, jst: true,
		url: 'http://www.jma.go.jp/jp/radame/imgs/prec/{Area}/{YYYY}{MM}{DD}{hh}{mm}-00.png',
		AreaLabels:
		{
			"000": "全国",
			"201": "北海道北西部",
			"202": "北海道東部",
			"203": "北海道南西部",
			"204": "東北北部",
			"205": "東北南部",
			"206": "関東",
			"207": "甲信",
			"208": "北陸東部",
			"209": "北陸西部",
			"210": "東海",
			"211": "近畿",
			"212": "中国",
			"213": "四国",
			"214": "九州北部",
			"215": "九州南部",
			"216": "奄美",
			"217": "沖縄",
			"218": "大東島",
			"219": "宮古・八重山",
		},
		MakeTitle: function( type, mdef, span )
		{
			var subargs =
			{
				typeName: "( " + type.AreaLabels[ mdef.Area ] + " ) ",
				spanHour: timeStr = span / hour + '時間'
			}
			return vrep( '<a href="{siteUrl}" target="_blank">{siteName}</a> {typeName}{spanHour}', type, subargs );
		}
		
		//	http://www.jma.go.jp/jp/radame/imgs/prec/000/201309022100-00.png
		//	http://www.jma.go.jp/jp/radame/imgs/prec/216/201309022100-00.png
	}
	
	types.JMA_RNC =
	{
		siteName: '気象庁 レーダー・ナウキャスト　降水',
		siteUrl: 'http://www.jma.go.jp/jp/radame/index.html',
		height: 477, width: 550, step: 5 * min, delay: 3 * min, jst: true,
		//url: 'http://www.jma.go.jp/jp/radame/imgs/prec/{Area}/{YYYY}{MM}{DD}{hh}{mm}-00.png',
		url: "http://www.jma.go.jp/jp/radnowc/imgs/radar/{Area}/{YYYY}{MM}{DD}{hh}{mm}-00.png",
		AreaLabels:
		{
			"000": "全国",
			"201": "北海道北西部",
			"202": "北海道東部",
			"203": "北海道南西部",
			"204": "東北北部",
			"205": "東北南部",
			"206": "関東",
			"207": "甲信",
			"208": "北陸東部",
			"209": "北陸西部",
			"210": "東海",
			"211": "近畿",
			"212": "中国",
			"213": "四国",
			"214": "九州北部",
			"215": "九州南部",
			"216": "奄美",
			"217": "沖縄",
			"218": "大東島",
			"219": "宮古・八重山",
		},
		MakeTitle: function( type, mdef, span )
		{
			var subargs =
			{
				typeName: "( " + type.AreaLabels[ mdef.Area ] + " ) ",
				spanHour: timeStr = span / hour + '時間'
			}
			return vrep( '<a href="{siteUrl}" target="_blank">{siteName}</a> {typeName}{spanHour}', type, subargs );
		}
		
		//	http://www.jma.go.jp/jp/radame/imgs/prec/000/201309022100-00.png
		//	http://www.jma.go.jp/jp/radame/imgs/prec/216/201309022100-00.png
	}
	
	types.WG =
	{
		siteName: 'WebGMS', siteUrl: 'http://webgms.iis.u-tokyo.ac.jp/',
		isWG: true,
		// height: 550, width: 550, step: 1 * hour, delay: 90 * min, timeOffset: -60 * min,
		height: 138, width: 138, step: 1 * hour, delay: 90 * min, timeOffset: -60 * min,
		// url: 'http://webgms.iis.u-tokyo.ac.jp/IIS/L1B/{YYYY}/{Mn}/img/MTSAT{MT}R{YYYY}{MM}{DD}{hh}{mm}{subtype}_m.jpg',
		url: 'http://webgms.iis.u-tokyo.ac.jp/IIS/L1B/{YYYY}/{Mn}/img/MTSAT{MT}R{YYYY}{MM}{DD}{hh}{mm}{subtype}_s.jpg',
		
		typeNames: { IR1: '赤外1', IR2: '赤外2', IR3: '赤外3', IR4: '赤外4', VIS: '可視', VIS_pseud_light: '可視(擬似光)' }
		// IR1, IR2, IR3, IR4, VIS, VIS_pseud_light
	}
	types.TEPCO =
	{
		siteName: 'TEPCO', siteUrl: 'http://thunder.tepco.co.jp/cgi-bin/main.cgi?area=1',
		width: 370, height: 480, step: 30 * min, delay: 10 * min, jst: true,
		url: 'http://thunder.tepco.co.jp/wdata/{subtype}/21_{DD}{hh}{mm}.gif',
		typeNames: { 1: '雨量', 4: '雷雲・落雷' }
		//area {  }
	}
	types.NASA_TEC =
	{
		siteName: 'NASA TEC', siteUrl: 'http://iono.jpl.nasa.gov/latest_rti_global.html',
		width: 720, height: 540, step: 60 * min, delay: 60 * sec, jst: false,
		url: 'http://iono.jpl.nasa.gov/RT/map{YYYY}{MM}{DD}_{hh}{mm}00.gif'
		//area {  }
	}
	types.NOAA_SWP =
	{
		siteName: 'NOAA 太陽風予知', siteUrl: 'http://www.swpc.noaa.gov/wsa-enlil/',
		width: 960, height: 600, step: 60 * min, delay: 60 * sec, jst: false,
		url: 'http://www.swpc.noaa.gov/wsa-enlil/images/enlil_com2_20130517T1800_{YYYY}{MM}{DD}T{hh}0000.jpg'
		//area {  }
	}
	var MT =
	[
		[ new Date( "2013/12/19 03:00 UTC" ).getTime(), 2, 32 ],
		[ new Date( "2013/10/22 03:00 UTC" ).getTime(), 1, 30 ],
		[ new Date( "2012/12/26 03:00 UTC" ).getTime(), 2, 32 ],
		[ new Date( "2012/10/18 03:00 UTC" ).getTime(), 1, 30 ],
		[ 0, 2, 32 ]
	];
	
	function getMT( time )
	{
		var rt;
		for( var i in MT )
		{
			rt = MT[ i ];
			if( time >= rt[ 0 ] )
				break;
		}
		return rt;
	}

	function makeMDefs()
	{
		var mdefs = {};
		
		return mdefs;
	}
	
	this.MakeTimeFromQuery =
	
	function makeTimeFromQuery()
	{
		var rt = {};
		var query = fields_query();
		var m;
		
		// end //
		if( m = ( query.End + '' ).match( /([\d\/]+)(_([\d:]+))?/ ) )
		{
			var hm = ( m[ 3 ] + '' ) == '' ? '00:00' : m[ 3 ];
			rt.endStr = m[ 1 ] + ' ' + hm + ' UTC';
			rt.end = new Date( rt.endStr );
		}
		
		// span //
		if( m = ( query.Span + '' ).match( /(\d+)/ ) )
		{
			
		}
		rt.query = query;
		return rt;
	}
	function getTimeFromHMS( str, fs, fn )
	{
		if( ! str.match( /((\d+)[MDhm])+/ ) ) return false;
		var m = str.match( /((\d+)M)?((\d+)D)?((\d+)h)?((\d+)m)?/ );
		if( ! m ) return false;
		
		return true;
	}
	
	function createMovie( mdef, time )
	{
		var type = types[ mdef.type ];
		var mov =
		{
			height: type.height + 40,
			items: []
		};
		var end = time.end || new Date().getTime() - type.delay;
		var span = time.span || mdef.span || 3 * hour;
		var begin = Math.floor( ( time.begin || end - span ) / type.step ) * type.step;
		
		var subargs =
		{
			typeName: type.typeNames ? "(" + type.typeNames[ mdef.subtype ] + ") " : '',
			spanHour: timeStr = span / hour + '時間'
		}
		//mov.title = vrep( '<a href="{siteUrl}" target="_blank">{siteName}</a> {typeName}{spanHour}', type, mdef, subargs );
		var maketitle = type.MakeTitle || MakeTitle;
		mov.title = maketitle( type, mdef, span );
		mov.end = end;
		var offset = ( type.timeOffset || 0 );
		for( var time = begin; time <= end; time += type.step )
		{
			var mt = getMT( time );
			var subinfo = { MT: mt[ 1 ], IISMin: mt[ 2 ] || 0 };
			var d = new Date( time + offset + ( type.isWG ? subinfo.IISMin * min : 0 ) );
			var date = fs_date( d ), udate = fs_udate( d );
			var item =
			{
				src: vrep( type.url, type.jst ? date : udate, mdef, subinfo ),
				label: vrep( '{YYYY}/{MM}/{DD} {hh}:{mm} JST', date, mdef, subinfo )
			}
			mov.items.push( item );
		}
		return mov;
	}
	
	function MakeTitle( type, mdef, span )
	{
		var subargs =
		{
			typeName: type.typeNames ? "(" + type.typeNames[ mdef.subtype ] + ") " : '',
			spanHour: timeStr = span / hour + '時間'
		}
		return vrep( '<a href="{siteUrl}" target="_blank">{siteName}</a> {typeName}{spanHour}', type, mdef, subargs );
	}
	
	this.MoviePane =
	
	function MoviePane( args, iUnit )
	{
		this.args = args;
		var e = enew( 'div', args.com || e_id( args.com_id ), {}, { className: 'ANIM' } );
		enew( 'a', e, {}, { name: args.anc || '' } );
		this.title = enew( 'h2', e, {}, { className: 'ANIM_TITLE' } );
		this.hrz = new Horiz( e );
		
		this.player = new Player( this );
		this.ctrl = new CtrlPane( this, iUnit );
		this.frames = new FramesPane( this );
		
		this.updateMovie = function( time )
		{
			args.mdef && this.setMovie( createMovie( args.mdef, time || {} ) );
		}
		this.setMovie = function( movie )
		{
			this.player.stop();
			this.movie = movie;
			this.title.innerHTML = movie.title;
			this.frames.setMovie( movie );
		}
	}
	function CtrlPane( com, iUnit )
	{
		var e = enew( 'div', com.hrz.add(), null );
		var button = enew( 'button', e, { width: '60px', padding: '0px' }, { title: '開始/停止/コマ送り' }, '開始' );
		enew( 'br', e );
		var items_e = enew( 'div', e, { margin: '10px 0px', padding: '20px 1px', position: 'relative', background: '#000', color: '#ccc', cursor: 'default' } );
		
		var speed = enew( 'div', e );
		var speedsel = enew( 'select', e, { width: '60px' } );
		enew( 'option', speedsel, {}, { value: 'null' }, 'コマ間隔' );
		enew( 'option', speedsel, {}, { value: 10 }, '10ms' );
		enew( 'option', speedsel, {}, { value: 20 }, '20ms' );
		enew( 'option', speedsel, {}, { value: 30 }, '30ms' );
		enew( 'option', speedsel, {}, { value: 40 }, '40ms' );
		enew( 'option', speedsel, {}, { value: 50 }, '50ms' );
		enew( 'option', speedsel, {}, { value: 60 }, '60ms' );
		enew( 'option', speedsel, {}, { value: 80 }, '80ms' );
		enew( 'option', speedsel, {}, { value: 100 }, '100ms' );
		enew( 'option', speedsel, {}, { value: 120 }, '120ms' );
		enew( 'option', speedsel, {}, { value: 160 }, '160ms' );
		enew( 'option', speedsel, {}, { value: 200 }, '200ms' );
		enew( 'option', speedsel, {}, { value: 250 }, '250ms' );
		enew( 'option', speedsel, {}, { value: 333 }, '333ms' );
		enew( 'option', speedsel, {}, { value: 500 }, '500ms' );
		enew( 'option', speedsel, {}, { value: 1000 }, '1s' );
		enew( 'option', speedsel, {}, { value: 2000 }, '2s' );
		enew( 'option', speedsel, {}, { value: 3000 }, '3s' );
		enew( 'option', speedsel, {}, { value: 5000 }, '5s' );
		enew( 'option', speedsel, {}, { value: 10000 }, '10s' );
		speedsel.onchange = function()
		{
			if( this.options[ this.selectedIndex ].value != 'null' )
			{
				com.player.span = this.options[ this.selectedIndex ].value;
				speed_update();
			}
		}
		function speed_update() { speed.innerHTML = com.player.span + "ms" }
		speed_update();
		
		enew( 'br', e );
		var updateButton = enew( 'button', e, { width: '60px', padding: '0px' }, {}, '更新' );
		var self = this;
		var iUnit = iUnit || 2;
		var items;
		var mute = true;
		this.onSetMovie = function( frames )
		{
		//	items.style.height = frames.length * iUnit + 8 + 'px';
			if( items ) for( var i in items ) items[ i ].destruct();
			items = [];
			for( var i in frames ) new Item( i, frames[ i ] );
		}
		button.onclick = function()
		{
			com.player.toggleRun();
		}
		//nextButton.onclick = function() { com.frames.next(); }
		button.onkeydown = function( ev )
		{
			ev = ev || event;
		//	this.innerHTML = ev.keyCode;
			switch( ev.keyCode )
			{
				case 37: com.frames.prev(); break;
				case 39: com.frames.next(); break;
				case 53: com.updateMovie(); break;
				default: return true;
			}
			return false;
		}
		button.setfocus = function()
		{
			if( ! this.focused ){ this.focus(); this.focused = true; }
		}
		button.onmouseover = function() { this.setfocus( true ); }
		button.onblur = function(){ this.focused = false; }
		updateButton.onclick = function() { com.updateMovie(); }
		
		items_e.onmouseover = function() { com.player.mute = true; }
		items_e.onmousedown = function() { mute = true; }
		items_e.onmouseout = function() { mute = false; com.player.mute = false; }
		function Item( index, item )
		{
			items[ index ] = this;
			var e = enew( 'div', items_e, { textAlign: 'center', fontSize: '3px', height: iUnit - 1 + 'px' }, {}, '' );
			e.style.borderBottom = '1px solid #000';
			e.onmouseover = function()
			{
				if( ! mute ) com.frames.setCurrent( index );
			}
			this.update = function( cur )
			{
				var col = item.isCurrent ? '#8f0'
				: item.maked ? ( item.loaded ? '#668' : '#bbb' )
				: '#444';
				e.style.background = col;
			}
			this.destruct = function()
			{
				items_e.removeChild( e );
				e.innerHTML = '';
				e = item = null;
			}
			item.client = this;
			this.update();
		}
	}
	var seqs = {};
	function Player( com )
	{
		var self = this, interval, timepoint;
		this.span = com.args.wait || 50;
		this.mute;
		this.phase = 0;
		var wait;
		this.toggleRun = function()
		{
			interval ? this.stop() : this.start();
		}
		this.action = function()
		{
			timepoint = new Date().getTime();
			this.step();
		}
		this.step = function()
		{
			var cur = com.frames.currentIndex, len = com.frames.items.length, phase = this.phase;
			switch( this.phase )
			{
				case 0: cur = 0; phase = 1; break;
				case 1: if( ! ( ++ cur < ( len - 1 ) ) ){ phase = 0; wait = 0; } break;
				case 2: if( -- wait <= 0 ){ phase = 0; }; break;
			//	case 3: if( ( cur -= Math.ceil( cur / 2.5 + 0.01 ) ) < 0 ){ phase = 4; cur = 0; wait = 3; } break;
				case 3: if( ( cur -= 1 ) < 0 ){ phase = 4; cur = 0; wait = 2; } break;
				case 4: if( -- wait <= 0 ){ phase = 1; }; break;
			}
			this.phase = phase;
			com.frames.setCurrent( cur );
		}
		this.start = function()
		{
			if( interval ) return;
			this.action();
			interval = setInterval( oninterval, 1 );
		}
		this.stop = function()
		{
			if( ! interval ) return;
			clearInterval( interval );
			interval = null;
		}
		function oninterval()
		{
			if( ( new Date().getTime() - timepoint ) > self.span && ! self.mute ) self.action();
		}
	}
	function FramesPane( com )
	{
		this.e = enew( 'div', com.hrz.add(), { overflow: 'hidden', position: 'relative' }, { className: "Frames" } );
		this.items = [];
		this.current;
		this.currentIndex;
		this.setMovie = function( movie )
		{
			if( this.items ) for( var i in this.items ) this.items[ i ].destruct();
			this.movie = movie;
			this.items = [];
			if( this.movie )
			{
				this.e.style.height = this.movie.height + 'px';
				for( var i in movie.items )
				{
					this.items[ i ] = new FramePane( this, i );
				}
				this.setCurrent( this.movie.items.length - 1 );
			}
			com.ctrl.onSetMovie( this.items );
		}
		this.setCurrent = function( index )
		{
			if( this.current ) this.current.release();
			this.currentIndex = index - 0;
			this.current = this.items[ index ];
			if( this.current ) this.current.select();
		}
		this.next = function()
		{
			var index = this.currentIndex + 1;
			if( index >= this.items.length ) index = 0;
			this.setCurrent( index );
		}
		this.prev = function()
		{
			var index = this.currentIndex - 1;
			if( index < 0  ) index = this.items.length - 1;
			this.setCurrent( index );
		}
	}
	function FramePane( com, index )
	{
		var e = enew( 'div', com.e, { height: com.movie.height - 0 + 30 + 'px' }, { className: "Frame" } );
		var label = enew( 'div', e, {}, { className: "FrameInfo" } );
		var img = enew( 'img', e, {} );
		var item = com.movie.items[ index ];
		label.innerHTML = vrep( '[{index}] <b>{label}</b><br>{src}', item, { index: index } );
		var self = this;
		this.make = function()
		{
			if( this.maked ) return;
			img.src = com.movie.items[ index ].src;
			this.maked = true;
			if( this.client ) this.client.update();
		}
		this.select = function()
		{
			this.isCurrent = true;
			if( this.client ) this.client.update( true );
			this.make();
			this.scroll();
		}
		this.release = function()
		{
			this.isCurrent = false;
			if( this.client ) this.client.update( true );
		}
		this.scroll = function()
		{
			//com.e.scrollTop = e.offsetTop;
			if( this.loaded ) com.e.scrollTop = e.offsetTop;
		}
		img.onload = function()
		{
			self.loaded = true;
			if( self.client ) self.client.update();
			if( com.current == self ) self.scroll();
		}
		this.destruct = function()
		{
			com.e.removeChild( e );
			e.innerHTML = '';
			e = img = label = com = item = null;
		}
	}
	function Horiz( com_e )
	{
		var e = enew( 'table', com_e, { border: 'none' }, { className: 'Horiz' } );
		var tbody = enew( 'tbody', e );
		var tr = enew( 'tr', tbody );
		this.add = function()
		{
			return enew( 'td', tr, { border: 'none' }, { vAlign: 'center' } );
		}
	}
	
}

////////////////////////////////////

function class_def( base_ctor, proto_ctor )
{
	var ctor = function()
	{
		proto.Initiate && proto.Initiate.apply( this, arguments );
	};
	
	var proto = ctor.prototype;
	var base_proto = base_ctor && base_ctor.prototype;
	if( base_proto )
	{
		for( var i in base_proto ) proto[ i ] = base_proto[ i ];
	}
	
	proto_ctor.call( proto, base_proto, base_ctor );
	
	// IE toString 対策 //
	if( base_proto && base_proto.toString != Object.prototype.toString )
		if( proto.toString == Object.prototype.toString )
			proto.toString = base_proto.toString;
	
	ctor.Base = base_ctor;
	return ctor;
}

function enew( type, com, style, attrs, text )
{
	var e = document.createElement( type );
	if( style ) for( var i in style ) e.style[ i ] = style[ i ];
	if( attrs ) for( var i in attrs ) e[ i ] = attrs[ i ];
	if( text != null ) e.innerHTML = ht_str( text );
	if( com ) com.appendChild( e );
	return e;
}
function ht_str( str )
{
	if( str == null ) return '';
	str = str.toString();
	str = str.replace( /&/g,'&amp;' );
	str = str.replace( /</g,'&lt;' );
	str = str.replace( />/g,'&gt;' );
	//str = str.replace( /  /g,'&nbsp;&nbsp;' );
	str = str.replace( / /g,'&nbsp;' );
	str = str.replace( /\t/g,'&nbsp;&nbsp;&nbsp;&nbsp;' );
	str = str.replace( /\r?\n/g, "<br />\r\n");
	return str;
}
var youbi_list = [ "日", "月", "火", "水", "木", "金", "土" ];
var day_list = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ];
var month_list = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ];
function fs_date( date )
{
	date = date || new Date();
	var fs =
	{
		YYYY:  str_right( '000' + date.getFullYear(), 4 ),
		YY: str_right( '0' + date.getFullYear(), 2 ),
		MM: str_right( '0' + ( date.getMonth() + 1 ), 2 ),
		M: ( date.getMonth() + 1 ) + '',
		Mn: month_list[ date.getMonth() ] + '',
		DD: str_right( '0' + date.getDate(), 2 ),
		D: date.getDate(),
		Dn: day_list[ date.getDay() ],
		B: youbi_list[ date.getDay() ],
		hh: str_right( '0' + date.getHours(), 2 ),
		h: date.getHours(),
		mm: str_right( '0' + date.getMinutes(), 2 ),
		m: date.getMinutes(),
		ss: str_right( '0' + date.getSeconds(), 2 ),
		s: date.getSeconds()
	}
	return fs;
}
function fs_udate( date )
{
	date = date || new Date();
	var fs =
	{
		YYYY:  str_right( '000' + date.getUTCFullYear(), 4 ),
		YY: str_right( '0' + date.getUTCFullYear(), 2 ),
		MM: str_right( '0' + ( date.getUTCMonth() + 1 ), 2 ),
		M: ( date.getUTCMonth() + 1 ) + '',
		Mn: month_list[ date.getUTCMonth() ] + '',
		DD: str_right( '0' + date.getUTCDate(), 2 ),
		D: date.getUTCDate(),
		Dn: day_list[ date.getUTCDay() ],
		B: youbi_list[ date.getUTCDay() ],
		hh: str_right( '0' + date.getUTCHours(), 2 ),
		h: date.getUTCHours(),
		mm: str_right( '0' + date.getUTCMinutes(), 2 ),
		m: date.getUTCMinutes(),
		ss: str_right( '0' + date.getUTCSeconds(), 2 ),
		s: date.getUTCSeconds()
	}
	return fs;
}
function date_format( format, date ) { return vrep( format, fs_date( date ) ); }
function date_uformat( format, date ) { return vrep( format, fs_udate( date ) ); }
function str_right( str, ct )
{
	return ( str + '' ).substr( str.length - ct, ct );
}
function vrep( str )
{
	var fss = arguments;
	function fn( a, e, n )
	{
		if( e ) return '{';
		for( var i = 1; i < fss.length; i ++ )
		{
			var fs = fss[ i ];
			if( fs && fs[ n ] !== undefined ) return fs[ n ]; 
		}
		return '';
	}
	return fss.length >= 1 ? str.replace( /(\{\-)|\{(\w+)\}/g, fn ) : '';
}
function e_id( id ){ return document.getElementById( id ); }
function str_value( value, space )
{
	var type = typeof value;
	if( type == 'number' ) return value + '\n';
	if( type == 'string' ) return value + '\n';
	if( type == 'boolean' ) return value + '\n';
	if( type == 'function' ) return '[ function ]' + '\n';
	if( type == 'object' )
	{
		if( value == null ) return 'null' + '\n';
		var rt = space ? '\n' : '';
		space = ( space || '' ) + '\t';
		for( var name in value )
			rt += space + name + ': ' + str_value( value[ name ], space );
		return rt;
	}
	if( type == 'undefined' ) return 'undefined\n';
	return '\n';
}
function fields_query( q )
{
	if( q == null ) q = location.search;
	q = q.replace( /\?/g, '' );
	q = q.split( '&' );
	var rt = {}
	for( var n in q )
	{
		var i = q[ n ].split( '=' );
		rt[ str_uric( i[ 0 ] ) ] = str_uric( i[ 1 ] );
	}
	return rt;
}
function str_uric( uric, errv )
{
	try{ return decodeURIComponent( uric ); }catch( e ){ return errv; }
}
