
namespace Leaf
{
	public class Base
	{
		public event System.Action Changed;
		
		public void Notify()
		{
			if( Changed != null )	Changed();
		}
	}
	
	
	public class TypedLeaf< T > : Base  where T : System.IComparable
	{
		public T Value = default( T );
		
		public void SetValue( T value )
		{
			if( value.CompareTo( Value ) != 0 )
			{
				Value = value;
				Notify();
			}
		}
	}
	
	
	public class Bool : TypedLeaf< bool >
	{
		public Bool() {}
		
		public Bool( bool value )
		{
			Value = value;
		}
	}
	
	public class Int : TypedLeaf< int > {}
	
	public class Float : TypedLeaf< float >
	{
		public Float() {}
		
		public Float( float value )
		{
			Value = value;
		}
	}
	
	public class Double : TypedLeaf< double > {}
	//public class String : TypedLeaf< string > {}
	
}


//*  *//
