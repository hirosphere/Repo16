
#include "Periph.h"

#define  WS_Out_Lat  LATC
#define  WS_Out_Bit  2

#asm
	
	WS_Bit_Out  macro  bit
		
		bsf     WS_Out_Lat,  WS_Out_Bit
		nop
		nop
		nop
		btfss   INDF0, bit
		
		bcf     WS_Out_Lat,  WS_Out_Bit
		nop
		nop
		nop
		nop
		
		bcf     WS_Out_Lat,  WS_Out_Bit
		nop
		nop
		nop
		nop
		
	endm
	
	
	WS_Bit_Out_0  macro
		
		bsf     WS_Out_Lat,  WS_Out_Bit
		nop
		nop
		nop
		btfss   INDF0, 0
		
		bcf     WS_Out_Lat,  WS_Out_Bit
		nop
		nop
		nop
		nop
		
		bcf     WS_Out_Lat,  WS_Out_Bit
		incf    FSR0L
		decfsz  WREG
		
	endm
	
	
#endasm

void WS_Out()
{
	
	#asm
		
		movlw	LOW( _WS_Buffer )
		movwf	FSR0L
		movlw	HIGH( _WS_Buffer )
		movwf	FSR0H
		
		movlw   0x9
		
		WS_Out_Loop:
		
		WS_Bit_Out 7
		WS_Bit_Out 6
		WS_Bit_Out 5
		WS_Bit_Out 4
		WS_Bit_Out 3
		WS_Bit_Out 2
		WS_Bit_Out 1
		WS_Bit_Out_0
		
		bra     WS_Out_Loop
		
	#endasm
}
