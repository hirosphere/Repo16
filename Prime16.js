
"みてください、この大きなカニ";

/*  Prime  */

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
	
	decor.call( ctor.prototype, base, ctor );
	return ctor;
}



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

function enew_t( type, com, text, attrs, class_name, style )
{
	return enew( type, com, attrs, style, class_name, text );
}

function tnew( value )
{
	return document.createTextNode( value );
}

function fnew( value )
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



/*  Data  */



/*  Color  */



/*    */

/*    */

/*    */

/*    */

