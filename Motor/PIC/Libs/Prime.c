
#include  "Prime.h"



void Wait( unsigned int time )
{
	unsigned int a;
 
	while( time -- > 0 )
	{
		for( a = 750; a -- > 0; )
		{
			#asm
			
			NOP
			NOP
			NOP
			NOP
			NOP
			
			NOP
			NOP
			NOP
			NOP
			NOP
			
			#endasm
		}
	}
}


