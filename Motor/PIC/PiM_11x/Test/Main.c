#include <xc.h>
#include "Prime.h"
#include "Periph.h"
#include <HIDD.h>

uint8 HIDD_Out[ 64 ] @ 0x0260;
uint8 HIDD_In [ 64 ] @ 0x02A0;


uint8	WS_Buffer[ 9 ];

void interrupt On_HIDD_Int()
{
	
}


void interrupt low_priority On_HIDD_Event()
{
	
}


typedef struct
{
	uint16   R;
	uint16   G;
	uint16   B;
} RGB_Osc;


uint8 Osc_Step( uint16 * phase, uint16 step )
{
	uint8 wave;
	* phase += step;
	
	wave =  * phase < 0x8000 ? ( * phase >> 7 ) : 0xFF - ( * phase >> 7 );
	
	return wave > 0x80 ? wave - 0x80 : 0;
}


void RGB_Osc_Init( RGB_Osc * this )
{
	this->R = 0;
	this->G = 0;
	this->B = 0;
}


void RGB_Osc_Step( uint8 offset, RGB_Osc * this, uint16 rr, uint16 gr, uint16 br )
{
	WS_Buffer[ offset + 0 ] = Osc_Step( & this->R, rr );
	WS_Buffer[ offset + 1 ] = Osc_Step( & this->G, gr );
	WS_Buffer[ offset + 2 ] = Osc_Step( & this->B, br );
}

RGB_Osc Ill[ 3 ];


void main( void )
{
	uint8  ctr = 1;
	
	RGB_Osc_Init( & Ill[ 0 ] );
	RGB_Osc_Init( & Ill[ 1 ] );
	RGB_Osc_Init( & Ill[ 2 ] );
	
	TRISC = 0x00;
	TRISBbits.RB7 = 1;
	
	SPBRG = 6;
	SPBRGH = 0;
	
	TXSTA =
	(
		On  <<  _TXSTA_TXEN_POSITION  |
		On  <<  _TXSTA_TX9_POSITION   |
		On  <<  _TXSTA_BRGH_POSITION
	);
	
	RCSTA =
	(
		On  <<  _RCSTA_SPEN_POSITION  |
		On  <<  _RCSTA_RX9_POSITION
	);
	
	
	
	
	while( PORTAbits.RA3 )
	{
		// LATCbits.LC1 = 0;
		TXREG = ctr;
		
		RGB_Osc_Step( 0, & Ill[ 0 ], 0x0010, 0x0021, 0x0032 );
		RGB_Osc_Step( 3, & Ill[ 1 ], 0x0024, 0x0025, 0x0026 );
		RGB_Osc_Step( 6, & Ill[ 2 ], 0x0048, 0x0049, 0x004A );
		
		WS_Out();
		
		Wait( 5 );
		
		// LATCbits.LC1 = 1;
		
		Wait( 5 );
		
		ctr ++;
		ctr &= 0x1F;
		
		//ctr << 1;
		//if( ctr == 0 )  ctr = 1;
		
	}
	
	WS_Buffer[ 0 ] = 0x00;
	WS_Buffer[ 1 ] = 0x00;
	WS_Buffer[ 2 ] = 0x00;
	
	WS_Buffer[ 3 ] = 0x00;
	WS_Buffer[ 4 ] = 0x00;
	WS_Buffer[ 5 ] = 0x00;
	
	WS_Buffer[ 6 ] = 0x00;
	WS_Buffer[ 7 ] = 0x00;
	WS_Buffer[ 8 ] = 0x00;

	WS_Out();
	
	RESET();
}
