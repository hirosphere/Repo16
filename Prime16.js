
//    "みてください、この大きなカニ";    //

/*  Prime  */

function log( msg )
{
	console.log( msg );
}

function class_def( base, decor )
{
	var ctor = function()
	{
		this.Initiate && this.Initiate.apply( this, arguments );
	}
	
	if( base )
	{
		for( var fn in base.prototype )    ctor.prototype[ fn ] = base.prototype[ fn ];
	}
	
	decor.call( ctor.prototype, base && base.prototype, ctor );
	return ctor;
}


function require( file, onload )
{
	var res;
	if( onload )
	{
		text_get
		(
			file,
			function( code )
			{
				eval( "res =\r\n" + code );
				onload( res );
			}
		);
	}
	else
	{
		var code = text_get( file );
		eval( "res =\r\n" + code );
		return res;
	}
}


function str_format( format, args )
{

}

var sf = str_format;


/*  HTML, DOM  */

function enew( type, com, attrs, style, class_name, text )
{
	var e = document.createElement( type );
	if( attrs )  for( var fn in attrs )  e[ fn ] = attrs[ fn ];
	if( style )  for( var fn in style )  e.style[ fn ] = style[ fn ];
	if( class_name != null )  e.className = class_name;
	if( text !== undefined )  e_plain( e, text );
	if( com )  com.appendChild( e );
	return e;
}

function enew_t( type, com, text, attrs, style, class_name )
{
	return enew( type, com, attrs, style, class_name, text );
}

function enew_c( type, com, class_name, attrs, style, text )
{
	return enew( type, com, attrs, style, class_name, text );
}

function enew_ct( type, com, class_name, text, attrs, style )
{
	return enew( type, com, attrs, style, class_name, text );
}

function tnew( value, com )
{
	var t = document.createTextNode( value );
	if( com )  com.appendChild( t );
	return t;
}

function fnew()
{
	return document.createDocumentFragment();
}

function eadd( e, part )
{
	e.appendChild( part );
}

function e_id( id )
{
	return document.getElementById( id );
}

function e_plain( e, plain )
{
	e.innerHTML = ht_plain( plain );
}


var Touch_Supported = window.TouchEvent != null;
var Touches = Touch_Supported ?
{
	start: "touchstart", move: "touchmove", end: "touchend", cancel: "touchcancel"
}
	:
{
	start: "mousedown", move: "mousemove", end: "mouseup", cancel: "mouseleave"
};

function e_touch_start( e, func )
{
	e.addEventListener( Touches.start, func );
}

function e_touch_move( e, func )
{
	e.addEventListener( Touches.move, func );
}

function e_touch_end( e, func )
{
	e.addEventListener( Touches.end, func );
}

function e_touch_cancel( e, func )
{
	e.addEventListener( Touches.cancel, func );
}

var e_touch_stop_propagation = Touch_Supported ?
	function( event ) { event.preventDefault(); slog( event.preventDefault ); } :
	function( event ) { event.stopPropagation(); slog( event.stopPropagation ); }
;


var e_touch = window.TouchEvent != null ?
	new function()
	{
		this.start = function( e, func )
		{
			e.addEventListener( "touchstart", func );
		}
		
		this.move = function( e, func )
		{
			e.addEventListener( "touchmove", func );
		}
		
		this.end = function( e, func )
		{
			e.addEventListener( "touchend", func );
		}
		
		this.cancel = function( e, func )
		{
			e.addEventListener( "touchcancel", func );
		}
		
		this.stop = function( event )
		{
			event.preventDefault();
		}
		
		this.local_pos = function( e, ev )
		{
		}
	}
:
	new function()
	{
		this.start = function( e, func )
		{
			e.addEventListener( "mousedown", func );
		}
		
		this.move = function( e, func )
		{
			e.addEventListener( "mousemove", func );
		}
		
		this.end = function( e, func )
		{
			e.addEventListener( "mouseup", func );
		}
		
		this.cancel = function( e, func )
		{
			e.addEventListener( "mouseleave", func );
		}
		
		this.stop = function( event )
		{
			event.stopPropagation();
		}
		
		this.local_pos = function( e, ev )
		{
			return { x: ev.offsetX, y: ev.offsetY };
		}
	}
;




function ht_plain( plain )
{
	var ht = plain + "";
	
	ht = ht.replace( /&/g, "&amp;" );
	ht = ht.replace( /</g, "&lt;" );
	ht = ht.replace( />/g, "&gt;" );
	ht = ht.replace( /   /g, "&nbsp; &nbsp;" );
	ht = ht.replace( /  /g, "&nbsp; " );
	ht = ht.replace( /\t/g, "&nbsp;&nbsp;&nbsp;&nbsp;" );
	ht = ht.replace( /\r?\n/g, "<br/>\n" );
	
	return ht;
}

/*  HTTP  */

function text_get( url, callback )
{
	var req = new XMLHttpRequest();
	req.open( "GET", url, callback != null );
	
	if( callback )
	{
		req.onloadend = function(  )
		{
			callback( req.responseText );
		};
		
		req.send( null );
	}
	else
	{
		req.send( null );
		return req.responseText;
	}
}

/*  Data  */



/*  Color  */



/*    */

/*    */

/*    */

/*    */

