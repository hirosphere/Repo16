var xml = {};

var Eki = new function()
{
	"https://www.ekidata.jp/api/l/11302.json"
	
	
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
			var url = "https://www.ekidata.jp/api/" + path + ".json";
			log( url );
			var scr = enew( "script", document.body, { src: url, type: "text/javascript" } );
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
