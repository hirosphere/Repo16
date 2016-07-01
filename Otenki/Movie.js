
/* Model */

var Movie = class_def
(
	null,
	function()
	{
		/* public */
		
		this.Width = 0;
		this.Height = 0;
		this.Length = 0;
		
		this.CreateFrame = function( index, length )
		{
			return enew( "div", null, {}, {  }, index - 0 + 1 );
		}
		
		/* inner */
		
	}
);


/* UI */

MoviePlayerPane = class_def
(
	null,
	function()
	{
		/* public */
		
		this.Initiate = function( comE, prefix, movie, motion )
		{
			this.E = enew( "div", comE, { className: prefix }, {} );
			this.ControlPane = new MPControlPane( this.E, prefix );
			
			this.MoviePane = new MoviePane( this.E, prefix + "_" );
			this.MoviePane.SetMovie( movie || null );
			this.SetMotion( motion || new MovieMotion() );
			
			this.ControlPane.SetMotion( this.Motion );
		}
		
		this.SetMotion = function( motion )
		{
			this.Motion = motion;
			this.Motion && this.Motion.SetMoviePane( this.MoviePane );
		}
		/* inner */
		
	}
);

var MovieMotion = class_def
(
	null,
	function()
	{
		/* public */
		
		this.Initiate = function()
		{
			this.PrevTick = 0;
			this.ClockId = 0;
			
			this.Rate = 1;
			this.Phase = 0;
			this.State = 0;
			this.CurrentIndex = 0;
			
			var self = this;
			
			this.onclock = function()
			{
				var now = new Date().getTime();
				var step = now - self.PrevTick;
				self.PrevTick = now;
				
				self.Step( step );
			}
		}
		
		this.SetMoviePane = function( pane )
		{
			this.MoviePane = pane;
		}
		
		this.Step = function( step )
		{
			if( step > 20 ) step = 20;
			
			if( this.MoviePane && this.MoviePane.Movie )
			{
				var len = this.MoviePane.Movie.Length;
				
				var rateoffset = this.State == 0 ? 1 : 11
				this.Phase += ( step * this.Rate * rateoffset ) / 1000;
				if( this.Phase >= len )
				{
					this.Phase -= len;
					this.State = this.State == 1 ? 0 : 1;
				}
				
				var rph = this.Phase / len;
				
				var tri = this.State == 0 ? rph : 1 - rph;
				var sin = ( Math.cos( ( 1 + ( tri ) ) * Math.PI ) + 1 ) / 2;
				
				
				var phase = ( this.State == 0 ? tri : 1 ) * len;
				
				if( phase >= len && len >= 1 ) phase = len - 1;
				if( phase < 0 ) phase = 0;
				
				this.MoviePane.SetCurrentIndex( Math.floor( phase ) );
			}
		}
		
		this.ToNext = function( round )
		{
			this.MoviePane && this.MoviePane.ToNext( round );
		}
		
		this.ToPrev = function( round )
		{
			this.MoviePane && this.MoviePane.ToPrev( round );
		}
		
		this.ToggleRun = function()
		{
			this.IsRun() ? this.Stop() : this.Start();
		}
		
		this.Start = function()
		{
			if( ! this.IsRun() )
			{
				this.PrevTick = new Date().getTime();
				this.ClockId = setInterval( this.onclock, 1 );
			}
		}
		
		this.Stop = function( index )
		{
			if( this.IsRun() )
			{
				clearInterval( this.ClockId );
				this.ClockId = 0;
			}
		}
		
		this.IsRun = function()
		{
			return this.ClockId != 0;
		}
		
		this.SetRate = function( value )
		{
			this.Rate = value;
		}
		
		/* inner */
		
	}
);

var MoviePane = class_def
(
	null,
	function()
	{
		/* public */
		
		this.Initiate = function( comE, prefix, movie )
		{
			var style = { overflow: "hidden", position: "relative" };
			this.E = enew( "div", comE, { className: prefix + "MOVIE" }, style, "Movie" );
			this.Movie = movie;
			this.CurrentIndex = 0;
			this.SetMovie( movie );
		}
		
		this.SetMovie = function( movie )
		{
			this.Movie = movie;
			this.UpdateMovie();
		}
		
		this.UpdateMovie = function()
		{
			e_clear( this.E );
			this.CurrentIndex = 0;
			
			if( this.Movie )
			{
				this.E.style.width = this.Movie.Width + "px";
				this.E.style.height = this.Movie.Height + "px";
				
				var contents = frnew();
				var frmstyle =
				{
					width: this.Movie.Width + "px",
					height: this.Movie.Height + "px",
					overflow: "hidden"
				};
				
				for( var index = 0; index < this.Movie.Length; index ++ )
				{
					var frame = enew ( "div", null, null, frmstyle );
					var content = this.Movie.CreateFrame( index );
					frame.appendChild( content );
					contents.appendChild( frame );
				}
				this.E.appendChild( contents );
			}
			
			this.UpdateScroll();
		}
		
		this.ToNext = function( round )
		{
			if( this.Movie )
			{
				this.CurrentIndex ++;
				if( this.CurrentIndex >= this.Movie.Length )
				{
					this.CurrentIndex = round ? 0 : this.Movie.Length - 1;
				}
				this.UpdateScroll();
			}
		}
		
		this.ToPrev = function( round )
		{
			if( this.Movie )
			{
				this.CurrentIndex --;
				if( this.CurrentIndex < 0 )
				{
					this.CurrentIndex = round ? this.Movie.Length - 1 : 0;
				}
				this.UpdateScroll();
			}
		}
		
		this.SetCurrentIndex = function( index )
		{
			if( index != this.CurrentIndex )
			{
				this.CurrentIndex = index;
				this.UpdateScroll();
			}
		}
		
		this.UpdateScroll = function()
		{
			var cur = this.E.childNodes[ this.CurrentIndex ];
			this.E.scrollTop = cur ? cur.offsetTop : 0;
		}
		
		/* inner */
		
	}
);

var MPControlPane = class_def
(
	null,
	function()
	{
		/* public */
		
		this.Initiate = function( comE, prefix )
		{
			this.E = enew( "div", comE, { className: prefix + "_CONTROL" }, {} );
			this.Motion = null;
			
			var button = enew( "button", this.E, {}, {}, "ボタン" );
			new SelectUI( this.E, speeds, onspeedchange );
			
			var self = this;
			
			button.onclick = function()
			{
				self.Motion.ToggleRun();
			}
			
			button.onkeydown = function( ev )
			{
				// this.innerHTML = ev.keyCode; //
				switch( ev.keyCode )
				{
					case 39: self.Motion.ToNext( true ); break;
					case 37: self.Motion.ToPrev( true ); break;
					case 13: self.Motion.ToggleRun( true ); break;
				}
			}
			
			function onspeedchange( index )
			{
				if( index != "000" ) self.Motion.SetRate( index - 0 );
			}
		}
		
		var speeds =
		{
			"1" : "1",
			"2" : "2",
			"3" : "3",
			"4" : "4",
			"5" : "5",
			"6" : "6",
			"7" : "7",
			"8" : "8",
			"9" : "9",
			"10" : "10",
			"12" : "12",
			"15" : "15",
			"20" : "20",
			"25" : "25",
			"30" : "30",
			"40" : "40",
			"50" : "50",
			"60" : "60",
			"70" : "70",
			"80" : "80",
			"90" : "90",
			"100" : "100",
			"120" : "120",
			"0.5" : "0.5",
			"0.1" : "0.1",
			"000": "コマ/秒"
		}
		
		this.SetMotion = function( motion )
		{
			this.Motion = motion;
		}
		
		/* inner */
		
	}
);

/* Gen UI */

var SelectUI = class_def
(
	null,
	function()
	{
		this.Initiate = function( comE, captions, onselect )
		{
			this.E = enew( "select", comE, {}, {} );
			this.Captions = captions;
			
			var self = this;
			this.E.onchange = function()
			{
				var cur = self.E.childNodes[ self.E.selectedIndex ];
				cur && onselect && onselect( cur.Index );
			}
			
			this.Update();
		}
		this.Update = function()
		{
			e_clear( this.E );
			for( var index in this.Captions )
			{
				enew( "option", this.E, { Index: index }, null, this.Captions[ index ] );
			}
		}
	}
);


/* Prime */

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

function str_fields( fs )
{
	var rt = "";
	if( fs != null ) for( var fn in fs ) rt += fn + ": " + fs[ fn ] + "\r\n";
	return rt;
}

function str_format( str )
{
	var args = arguments;
	function fn( all, esc, varName )
	{
		if( esc ) return "{";
		for( var i = 1; i < args.length; i ++ )
		{
			var rt = args[ i ][ varName ];
			if( rt !== undefined )
				return "" + rt;
		}
		return "";
	}
	return arguments.length > 1 ? str.replace( /(`{)|\{(\w+)\}/g, fn ) : '';
}

var sf = str_format;

function str_right( str, ct )
{
	str = str + "";
	return str.substr( str.length - ct, ct );
}


function ht_plain( str )
{
	if( str == null ) return '';
	str = str.toString();
	str = str.replace( /&/g,'&amp;' );
	str = str.replace( /</g,'&lt;' );
	str = str.replace( />/g,'&gt;' );
	str = str.replace( /\-/g,'&#45;' );
	str = str.replace( / /g,'&nbsp;' );
	str = str.replace( /\t/g,'&nbsp;&nbsp;&nbsp;&nbsp;' );
	str = str.replace( /\r?\n/g, "<br/>\r\n");
	return str;
}

function e_id( id ){ return document.getElementById( id ); }

function e_str( e, str )
{
	e_clear( e );
	if( e ) e.innerHTML = ht_plain( str );
}
function e_clear( e )
{
	if( e ) for( var i; i = e.firstChild;  ) e.removeChild( i ); return;
}

function enew( type, com, attrs, style, text )
{
	var e = document.createElement( type );
	if( attrs ) for( var i in attrs ) e[ i ] = attrs[ i ];
	if( style ) for( var i in style ) e.style[ i ] = style[ i ];
	if( text != null ) e.innerHTML = ht_plain( text );
	if( com ) com.appendChild( e );
	return e;
}

function frnew(){ return document.createDocumentFragment(); }

var youbi_list = [ "日", "月", "火", "水", "木", "金", "土" ];
var day_list = [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ];
var month_list = [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ];
function fs_date( date )
{
	date = ( date && ( date.constructor == Number ? new Date( date ) : date ) ) || new Date();
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
		s: date.getSeconds(),
		
		uYYYY:  str_right( '000' + date.getUTCFullYear(), 4 ),
		uYY: str_right( '0' + date.getUTCFullYear(), 2 ),
		uMM: str_right( '0' + ( date.getUTCMonth() + 1 ), 2 ),
		uM: ( date.getUTCMonth() + 1 ) + '',
		uMn: month_list[ date.getUTCMonth() ] + '',
		uDD: str_right( '0' + date.getUTCDate(), 2 ),
		uD: date.getUTCDate(),
		uDn: day_list[ date.getUTCDay() ],
		uB: youbi_list[ date.getUTCDay() ],
		uhh: str_right( '0' + date.getUTCHours(), 2 ),
		uh: date.getUTCHours(),
		umm: str_right( '0' + date.getUTCMinutes(), 2 ),
		um: date.getUTCMinutes(),
		uss: str_right( '0' + date.getUTCSeconds(), 2 ),
		us: date.getUTCSeconds()
	}
	return fs;
}

//
