#include <xc.h>;
#include "Peri1.h";


void Ser_Init()
{
	TRISB |= 0x80;
	
	BAUDCON = 0x00;
	
	RCSTA = 0x80;
	TXSTA = 0x20;
	
	SPBRGH = 0;
	SPBRG = 103;
	
}

void WS_Out( void )
{
	
}
