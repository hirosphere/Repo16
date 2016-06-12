var xml = {};

var Eki = new function()
{
	var Stations = {};
	
	this.GetRosen = function( line_cd, onload )
	{
		log( line_cd );
		Load( "l/" + line_cd, onload );
	}
	
	this.GetEki = function( station_cd, onload )
	{
		log( station_cd );
		Load( "g/" + station_cd, onload );
	}
	
	//  //
	
	var LoadQueue = [];
	var Loading = false;
	
	function Load( path, onload )
	{
		LoadQueue.push( [ path, onload ] );
		LoadNext();
	}
	
	function LoadNext()
	{
		if( ! Loading && LoadQueue.length )
		{
			Loading = true;
			var path = LoadQueue[ 0 ][ 0 ];
			var url = "http://www.ekidata.jp/api/" + path + ".json";
			log( url );
			var scr = enew( "script", document.documentElement, { src: url } );
		}
	}
	
	xml.onload = function( data )
	{
		var item = LoadQueue.shift();
		item[ 1 ]( data );
		Loading = false;
		LoadNext();
	}
};
