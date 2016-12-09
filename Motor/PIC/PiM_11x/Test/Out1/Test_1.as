opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

opt pagewidth 120

	opt lm

	processor	18F14K50
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 9 "..\Files\WS2811.c"
WS_Bit_Out macro bit ;# 
# 11 "..\Files\WS2811.c"
bsf LATC, 2 ;# 
# 12 "..\Files\WS2811.c"
nop ;# 
# 13 "..\Files\WS2811.c"
nop ;# 
# 14 "..\Files\WS2811.c"
nop ;# 
# 15 "..\Files\WS2811.c"
btfss INDF0, bit ;# 
# 17 "..\Files\WS2811.c"
bcf LATC, 2 ;# 
# 18 "..\Files\WS2811.c"
nop ;# 
# 19 "..\Files\WS2811.c"
nop ;# 
# 20 "..\Files\WS2811.c"
nop ;# 
# 21 "..\Files\WS2811.c"
nop ;# 
# 23 "..\Files\WS2811.c"
bcf LATC, 2 ;# 
# 24 "..\Files\WS2811.c"
nop ;# 
# 25 "..\Files\WS2811.c"
nop ;# 
# 26 "..\Files\WS2811.c"
nop ;# 
# 27 "..\Files\WS2811.c"
nop ;# 
# 29 "..\Files\WS2811.c"
endm ;# 
# 32 "..\Files\WS2811.c"
WS_Bit_Out_0 macro ;# 
# 34 "..\Files\WS2811.c"
bsf LATC, 2 ;# 
# 35 "..\Files\WS2811.c"
nop ;# 
# 36 "..\Files\WS2811.c"
nop ;# 
# 37 "..\Files\WS2811.c"
nop ;# 
# 38 "..\Files\WS2811.c"
btfss INDF0, 0 ;# 
# 40 "..\Files\WS2811.c"
bcf LATC, 2 ;# 
# 41 "..\Files\WS2811.c"
nop ;# 
# 42 "..\Files\WS2811.c"
nop ;# 
# 43 "..\Files\WS2811.c"
nop ;# 
# 44 "..\Files\WS2811.c"
nop ;# 
# 46 "..\Files\WS2811.c"
bcf LATC, 2 ;# 
# 47 "..\Files\WS2811.c"
incf FSR0L ;# 
# 48 "..\Files\WS2811.c"
decfsz WREG ;# 
# 50 "..\Files\WS2811.c"
endm ;# 
# 49 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 180 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 311 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 442 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 573 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 704 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 835 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 966 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1097 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1147 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1210 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1279 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1318 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1368 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UIE equ 0F60h ;# 
# 1423 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1485 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UIR equ 0F62h ;# 
# 1540 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1590 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
UCON equ 0F64h ;# 
# 1640 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1710 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1771 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1840 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1901 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1970 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1975 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2107 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2138 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2170 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2208 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2252 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2290 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2334 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2371 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2507 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2658 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2954 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
LATA equ 0F89h ;# 
# 3060 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3169 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3301 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3306 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3382 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3387 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3511 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3516 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3732 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3801 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3874 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3947 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4020 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4085 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4150 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4215 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4280 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4286 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4292 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4353 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4358 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4562 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4567 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4859 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4864 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4870 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4875 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4881 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4886 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4892 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4898 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5006 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5012 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5018 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5024 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5105 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5174 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5179 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5339 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5382 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5387 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5459 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5464 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5594 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5599 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5679 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5760 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5766 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5772 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5778 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5848 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5894 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6016 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6022 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6028 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6034 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6095 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6164 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6403 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6409 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6415 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6485 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6490 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6594 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6600 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6704 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6710 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6716 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6722 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6854 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6881 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6912 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6990 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7059 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7065 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7071 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7077 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7155 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7161 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7167 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7173 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7179 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7185 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7191 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7197 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7203 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7209 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7215 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7221 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7227 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7233 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7239 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7245 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7251 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7257 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7268 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7274 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7280 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7286 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7292 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7298 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7304 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7310 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7316 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7407 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7476 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7622 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7628 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7634 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7640 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7648 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7654 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7660 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7666 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7674 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7681 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PC equ 0FF9h ;# 
# 7687 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7693 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7699 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7705 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7778 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7784 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7790 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7796 "D:\MCUDev13\PIC\xc8\v1.32\include\pic18f14k50.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_RGB_Osc_Init
	FNCALL	_main,_RGB_Osc_Step
	FNCALL	_main,_WS_Out
	FNCALL	_main,_Wait
	FNCALL	_RGB_Osc_Step,_Osc_Step
	FNROOT	_main
	FNCALL	intlevel2,_On_HIDD_Int
	global	intlevel2
	FNROOT	intlevel2
	FNCALL	intlevel1,_On_HIDD_Event
	global	intlevel1
	FNROOT	intlevel1
	global	_WS_Buffer
	global	_Ill
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_HIDD_Out
psect	intcodelo,class=CODE,space=0,reloc=2
global __pintcodelo
__pintcodelo:

	DABS	1,608,64,_HIDD_Out
	global	_HIDD_In

	DABS	1,672,64,_HIDD_In
; #config settings
	file	"Out1\Test_1.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_WS_Buffer
_WS_Buffer:
       ds      9
	global	_Ill
_Ill:
       ds      18
	line	#
psect	cinit
; Clear objects allocated to COMRAM (27 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	27
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Osc_Step:	; 0 bytes @ 0x0
	ds   3
	global	_Osc_Step$158
_Osc_Step$158:	; 2 bytes @ 0x3
	ds   2
	global	_Osc_Step$159
_Osc_Step$159:	; 2 bytes @ 0x5
	ds   2
	global	Osc_Step@wave
Osc_Step@wave:	; 1 bytes @ 0x7
	ds   1
?_RGB_Osc_Step:	; 0 bytes @ 0x8
	global	RGB_Osc_Step@this
RGB_Osc_Step@this:	; 2 bytes @ 0x8
	ds   2
	global	RGB_Osc_Step@rr
RGB_Osc_Step@rr:	; 2 bytes @ 0xA
	ds   2
	global	RGB_Osc_Step@gr
RGB_Osc_Step@gr:	; 2 bytes @ 0xC
	ds   2
	global	RGB_Osc_Step@br
RGB_Osc_Step@br:	; 2 bytes @ 0xE
	ds   2
??_RGB_Osc_Step:	; 0 bytes @ 0x10
	ds   3
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_WS_Out:	; 0 bytes @ 0x0
?_On_HIDD_Int:	; 0 bytes @ 0x0
?_On_HIDD_Event:	; 0 bytes @ 0x0
??_On_HIDD_Event:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds   17
??_On_HIDD_Int:	; 0 bytes @ 0x11
	ds   14
?_Wait:	; 0 bytes @ 0x1F
??_WS_Out:	; 0 bytes @ 0x1F
?_RGB_Osc_Init:	; 0 bytes @ 0x1F
?_Osc_Step:	; 1 bytes @ 0x1F
	global	Wait@time
Wait@time:	; 2 bytes @ 0x1F
	global	Osc_Step@phase
Osc_Step@phase:	; 2 bytes @ 0x1F
	global	RGB_Osc_Init@this
RGB_Osc_Init@this:	; 2 bytes @ 0x1F
	ds   2
??_Wait:	; 0 bytes @ 0x21
??_RGB_Osc_Init:	; 0 bytes @ 0x21
	global	Wait@a
Wait@a:	; 2 bytes @ 0x21
	global	Osc_Step@step
Osc_Step@step:	; 2 bytes @ 0x21
	ds   2
	global	RGB_Osc_Step@offset
RGB_Osc_Step@offset:	; 1 bytes @ 0x23
	ds   1
??_main:	; 0 bytes @ 0x24
	global	main@ctr
main@ctr:	; 1 bytes @ 0x24
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         27
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     37      64
;!    BANK0           160     19      19
;!    BANK1           256      0       0
;!    BANK2h           32      0       0
;!    BANK2l           96      0       0

;!
;!Pointer List with Targets:
;!
;!    RGB_Osc_Step@this	PTR struct . size(2) Largest target is 18
;!		 -> Ill(COMRAM[18]), 
;!
;!    RGB_Osc_Init@this	PTR struct . size(2) Largest target is 18
;!		 -> Ill(COMRAM[18]), 
;!
;!    Osc_Step@phase	PTR unsigned int  size(2) Largest target is 18
;!		 -> Ill(COMRAM[18]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_RGB_Osc_Step
;!    _RGB_Osc_Step->_Osc_Step
;!
;!Critical Paths under _On_HIDD_Int in COMRAM
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Event in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_RGB_Osc_Step
;!    _RGB_Osc_Step->_Osc_Step
;!
;!Critical Paths under _On_HIDD_Int in BANK0
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Event in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Int in BANK1
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Event in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2h
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Int in BANK2h
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Event in BANK2h
;!
;!    None.
;!
;!Critical Paths under _main in BANK2l
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Int in BANK2l
;!
;!    None.
;!
;!Critical Paths under _On_HIDD_Event in BANK2l
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2073
;!                                             36 COMRAM     1     1      0
;!                       _RGB_Osc_Init
;!                       _RGB_Osc_Step
;!                             _WS_Out
;!                               _Wait
;! ---------------------------------------------------------------------------------
;! (1) _Wait                                                 4     2      2     116
;!                                             31 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _WS_Out                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RGB_Osc_Step                                        12     4      8    1743
;!                                             35 COMRAM     1     1      0
;!                                              8 BANK0     11     3      8
;!                           _Osc_Step
;! ---------------------------------------------------------------------------------
;! (2) _Osc_Step                                            12     8      4     684
;!                                             31 COMRAM     4     0      4
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _RGB_Osc_Init                                         2     0      2     174
;!                                             31 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _On_HIDD_Event                                       17    17      0       0
;!                                              0 COMRAM    17    17      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _On_HIDD_Int                                         14    14      0       0
;!                                             17 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _RGB_Osc_Init
;!   _RGB_Osc_Step
;!     _Osc_Step
;!   _WS_Out
;!   _Wait
;!
;! _On_HIDD_Event (ROOT)
;!
;! _On_HIDD_Int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMl            25F      0       0      13        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK1           100      0       0      10        0.0%
;!BANK1              100      0       0       5        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0     13      13       4       11.9%
;!BITBANK2l           60      0       0       7        0.0%
;!BANK2l              60      0       0       8        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     25      40       1       67.4%
;!BIGRAMh             20      0       0      12        0.0%
;!BITBANK2h           20      0       0      11        0.0%
;!BANK2h              20      0       0       6        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      53       9        0.0%
;!DATA                 0      0      53      14        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 61 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ctr             1   36[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_RGB_Osc_Init
;;		_RGB_Osc_Step
;;		_WS_Out
;;		_Wait
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"Main.c"
	line	61
global __ptext0
__ptext0:
psect	text0
	file	"Main.c"
	line	61
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	63
	
l811:
;Main.c: 63: unsigned char ctr = 1;
	movlw	low(01h)
	movwf	((c:main@ctr)),c
	line	65
	
l813:
;Main.c: 65: RGB_Osc_Init( & Ill[ 0 ] );
		movlw	high((c:_Ill))
	movwf	((c:RGB_Osc_Init@this+1)),c
	movlw	low((c:_Ill))
	movwf	((c:RGB_Osc_Init@this)),c

	call	_RGB_Osc_Init	;wreg free
	line	66
	
l815:
;Main.c: 66: RGB_Osc_Init( & Ill[ 1 ] );
		movlw	high((c:_Ill)+06h)
	movwf	((c:RGB_Osc_Init@this+1)),c
	movlw	low((c:_Ill)+06h)
	movwf	((c:RGB_Osc_Init@this)),c

	call	_RGB_Osc_Init	;wreg free
	line	67
	
l817:
;Main.c: 67: RGB_Osc_Init( & Ill[ 2 ] );
		movlw	high((c:_Ill)+0Ch)
	movwf	((c:RGB_Osc_Init@this+1)),c
	movlw	low((c:_Ill)+0Ch)
	movwf	((c:RGB_Osc_Init@this)),c

	call	_RGB_Osc_Init	;wreg free
	line	69
	
l819:
;Main.c: 69: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	70
	
l821:
;Main.c: 70: TRISBbits.RB7 = 1;
	bsf	((c:3987)),c,7	;volatile
	line	72
	
l823:
;Main.c: 72: SPBRG = 6;
	movlw	low(06h)
	movwf	((c:4015)),c	;volatile
	line	73
	
l825:
;Main.c: 73: SPBRGH = 0;
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	80
	
l827:
;Main.c: 75: TXSTA =
;Main.c: 76: (
;Main.c: 77: 1 << 0x5 |
;Main.c: 78: 1 << 0x6 |
;Main.c: 79: 1 << 0x2
;Main.c: 80: );
	movlw	low(064h)
	movwf	((c:4012)),c	;volatile
	line	86
	
l829:
;Main.c: 82: RCSTA =
;Main.c: 83: (
;Main.c: 84: 1 << 0x7 |
;Main.c: 85: 1 << 0x6
;Main.c: 86: );
	movlw	low(0C0h)
	movwf	((c:4011)),c	;volatile
	line	91
;Main.c: 91: while( PORTAbits.RA3 )
	goto	l843
	
l67:
	line	94
;Main.c: 92: {
;Main.c: 94: TXREG = ctr;
	movff	(c:main@ctr),(c:4013)	;volatile
	line	96
	
l831:
;Main.c: 96: RGB_Osc_Step( 0, & Ill[ 0 ], 0x0010, 0x0021, 0x0032 );
		movlw	high((c:_Ill))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@this+1))&0ffh
	movlw	low((c:_Ill))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@this))&0ffh

	movlw	high(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@rr+1))&0ffh
	movlw	low(010h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@rr))&0ffh
	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@gr+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@gr))&0ffh
	movlw	high(032h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@br+1))&0ffh
	movlw	low(032h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@br))&0ffh
	movlw	(0)&0ffh
	
	call	_RGB_Osc_Step
	line	97
;Main.c: 97: RGB_Osc_Step( 3, & Ill[ 1 ], 0x0024, 0x0025, 0x0026 );
		movlw	high((c:_Ill)+06h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@this+1))&0ffh
	movlw	low((c:_Ill)+06h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@this))&0ffh

	movlw	high(024h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@rr+1))&0ffh
	movlw	low(024h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@rr))&0ffh
	movlw	high(025h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@gr+1))&0ffh
	movlw	low(025h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@gr))&0ffh
	movlw	high(026h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@br+1))&0ffh
	movlw	low(026h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@br))&0ffh
	movlw	(03h)&0ffh
	
	call	_RGB_Osc_Step
	line	98
;Main.c: 98: RGB_Osc_Step( 6, & Ill[ 2 ], 0x0048, 0x0049, 0x004A );
		movlw	high((c:_Ill)+0Ch)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@this+1))&0ffh
	movlw	low((c:_Ill)+0Ch)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@this))&0ffh

	movlw	high(048h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@rr+1))&0ffh
	movlw	low(048h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@rr))&0ffh
	movlw	high(049h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@gr+1))&0ffh
	movlw	low(049h)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@gr))&0ffh
	movlw	high(04Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@br+1))&0ffh
	movlw	low(04Ah)
	movlb	0	; () banked
	movwf	((RGB_Osc_Step@br))&0ffh
	movlw	(06h)&0ffh
	
	call	_RGB_Osc_Step
	line	100
	
l833:
;Main.c: 100: WS_Out();
	call	_WS_Out	;wreg free
	line	102
	
l835:
;Main.c: 102: Wait( 5 );
	movlw	high(05h)
	movwf	((c:Wait@time+1)),c
	movlw	low(05h)
	movwf	((c:Wait@time)),c
	call	_Wait	;wreg free
	line	106
	
l837:
;Main.c: 106: Wait( 5 );
	movlw	high(05h)
	movwf	((c:Wait@time+1)),c
	movlw	low(05h)
	movwf	((c:Wait@time)),c
	call	_Wait	;wreg free
	line	108
	
l839:
;Main.c: 108: ctr ++;
	incf	((c:main@ctr)),c
	line	109
	
l841:
;Main.c: 109: ctr &= 0x1F;
	movlw	(01Fh)&0ffh
	andwf	((c:main@ctr)),c
	goto	l843
	line	114
	
l66:
	line	91
	
l843:
	btfsc	((c:3968)),c,3	;volatile
	goto	u171
	goto	u170
u171:
	goto	l67
u170:
	goto	l845
	
l68:
	line	116
	
l845:
;Main.c: 114: }
;Main.c: 116: WS_Buffer[ 0 ] = 0x00;
	movlw	low(0)
	movwf	((c:_WS_Buffer)),c
	line	117
;Main.c: 117: WS_Buffer[ 1 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+01h)),c
	line	118
;Main.c: 118: WS_Buffer[ 2 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+02h)),c
	line	120
;Main.c: 120: WS_Buffer[ 3 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+03h)),c
	line	121
;Main.c: 121: WS_Buffer[ 4 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+04h)),c
	line	122
;Main.c: 122: WS_Buffer[ 5 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+05h)),c
	line	124
;Main.c: 124: WS_Buffer[ 6 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+06h)),c
	line	125
;Main.c: 125: WS_Buffer[ 7 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+07h)),c
	line	126
;Main.c: 126: WS_Buffer[ 8 ] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_WS_Buffer)+08h)),c
	line	128
	
l847:
;Main.c: 128: WS_Out();
	call	_WS_Out	;wreg free
	line	130
# 130 "Main.c"
reset ;# 
psect	text0
	line	131
	
l69:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Wait

;; *************** function _Wait *****************
;; Defined at:
;;		line 6 in file "..\..\Libs\Prime.c"
;; Parameters:    Size  Location     Type
;;  time            2   31[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  a               2   33[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"..\..\Libs\Prime.c"
	line	6
global __ptext1
__ptext1:
psect	text1
	file	"..\..\Libs\Prime.c"
	line	6
	global	__size_of_Wait
	__size_of_Wait	equ	__end_of_Wait-_Wait
	
_Wait:
;incstack = 0
	opt	stack 28
	line	10
	
l673:
;Prime.c: 8: unsigned int a;
;Prime.c: 10: while( time -- > 0 )
	goto	l679
	
l4:
	line	12
	
l675:
;Prime.c: 11: {
;Prime.c: 12: for( a = 750; a -- > 0; )
	movlw	high(02EEh)
	movwf	((c:Wait@a+1)),c
	movlw	low(02EEh)
	movwf	((c:Wait@a)),c
	goto	l677
	line	13
	
l6:
	line	16
# 16 "..\..\Libs\Prime.c"
NOP ;# 
	line	17
# 17 "..\..\Libs\Prime.c"
NOP ;# 
	line	18
# 18 "..\..\Libs\Prime.c"
NOP ;# 
	line	19
# 19 "..\..\Libs\Prime.c"
NOP ;# 
	line	20
# 20 "..\..\Libs\Prime.c"
NOP ;# 
	line	22
# 22 "..\..\Libs\Prime.c"
NOP ;# 
	line	23
# 23 "..\..\Libs\Prime.c"
NOP ;# 
	line	24
# 24 "..\..\Libs\Prime.c"
NOP ;# 
	line	25
# 25 "..\..\Libs\Prime.c"
NOP ;# 
	line	26
# 26 "..\..\Libs\Prime.c"
NOP ;# 
psect	text1
	goto	l677
	line	12
	
l5:
	
l677:
	decf	((c:Wait@a)),c
	btfss	status,0
	decf	((c:Wait@a+1)),c
	incf	((c:Wait@a))&0ffh,w
	btfsc	status,2
	incf ((c:Wait@a+1))&0ffh,w

	btfss	status,2
	goto	u51
	goto	u50
u51:
	goto	l6
u50:
	goto	l679
	
l7:
	goto	l679
	line	30
	
l3:
	line	10
	
l679:
	decf	((c:Wait@time)),c
	btfss	status,0
	decf	((c:Wait@time+1)),c
	incf	((c:Wait@time))&0ffh,w
	btfsc	status,2
	incf ((c:Wait@time+1))&0ffh,w

	btfss	status,2
	goto	u61
	goto	u60
u61:
	goto	l675
u60:
	goto	l9
	
l8:
	line	31
	
l9:
	return
	opt stack 0
GLOBAL	__end_of_Wait
	__end_of_Wait:
	signat	_Wait,4216
	global	_WS_Out

;; *************** function _WS_Out *****************
;; Defined at:
;;		line 55 in file "..\Files\WS2811.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"..\Files\WS2811.c"
	line	55
global __ptext2
__ptext2:
psect	text2
	file	"..\Files\WS2811.c"
	line	55
	global	__size_of_WS_Out
	__size_of_WS_Out	equ	__end_of_WS_Out-_WS_Out
	
_WS_Out:
;incstack = 0
	opt	stack 28
	line	60
	
l681:
# 60 "..\Files\WS2811.c"
movlw LOW( _WS_Buffer ) ;# 
	line	61
# 61 "..\Files\WS2811.c"
movwf FSR0L ;# 
	line	62
# 62 "..\Files\WS2811.c"
movlw HIGH( _WS_Buffer ) ;# 
	line	63
# 63 "..\Files\WS2811.c"
movwf FSR0H ;# 
	line	65
# 65 "..\Files\WS2811.c"
movlw 0x9 ;# 
	line	67
# 67 "..\Files\WS2811.c"
WS_Out_Loop: ;# 
	line	69
# 69 "..\Files\WS2811.c"
WS_Bit_Out 7 ;# 
	line	70
# 70 "..\Files\WS2811.c"
WS_Bit_Out 6 ;# 
	line	71
# 71 "..\Files\WS2811.c"
WS_Bit_Out 5 ;# 
	line	72
# 72 "..\Files\WS2811.c"
WS_Bit_Out 4 ;# 
	line	73
# 73 "..\Files\WS2811.c"
WS_Bit_Out 3 ;# 
	line	74
# 74 "..\Files\WS2811.c"
WS_Bit_Out 2 ;# 
	line	75
# 75 "..\Files\WS2811.c"
WS_Bit_Out 1 ;# 
	line	76
# 76 "..\Files\WS2811.c"
WS_Bit_Out_0 ;# 
	line	78
# 78 "..\Files\WS2811.c"
bra WS_Out_Loop ;# 
psect	text2
	line	81
	
l12:
	return
	opt stack 0
GLOBAL	__end_of_WS_Out
	__end_of_WS_Out:
	signat	_WS_Out,88
	global	_RGB_Osc_Step

;; *************** function _RGB_Osc_Step *****************
;; Defined at:
;;		line 51 in file "Main.c"
;; Parameters:    Size  Location     Type
;;  offset          1    wreg     unsigned char 
;;  this            2    8[BANK0 ] PTR struct .
;;		 -> Ill(18), 
;;  rr              2   10[BANK0 ] unsigned int 
;;  gr              2   12[BANK0 ] unsigned int 
;;  br              2   14[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  offset          1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       8       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1      11       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Osc_Step
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"Main.c"
	line	51
global __ptext3
__ptext3:
psect	text3
	file	"Main.c"
	line	51
	global	__size_of_RGB_Osc_Step
	__size_of_RGB_Osc_Step	equ	__end_of_RGB_Osc_Step-_RGB_Osc_Step
	
_RGB_Osc_Step:
;incstack = 0
	opt	stack 27
;RGB_Osc_Step@offset stored from wreg
	movwf	((c:RGB_Osc_Step@offset)),c
	line	53
	
l809:
;Main.c: 53: WS_Buffer[ offset + 0 ] = Osc_Step( & this->R, rr );
	movlb	0	; () banked
		movff	(RGB_Osc_Step@this+1),(c:Osc_Step@phase+1)
	movlb	0	; () banked
	movff	(RGB_Osc_Step@this),(c:Osc_Step@phase)

	movff	(RGB_Osc_Step@rr),(c:Osc_Step@step)
	movff	(RGB_Osc_Step@rr+1),(c:Osc_Step@step+1)
	call	_Osc_Step	;wreg free
	movlb	0	; () banked
	movwf	(??_RGB_Osc_Step+0+0)&0ffh
	movlw	low((c:_WS_Buffer))
	addwf	((c:RGB_Osc_Step@offset)),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high((c:_WS_Buffer))
	addwfc	1+c:fsr2l
	movff	(??_RGB_Osc_Step+0+0),indf2

	line	54
;Main.c: 54: WS_Buffer[ offset + 1 ] = Osc_Step( & this->G, gr );
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((RGB_Osc_Step@this))&0ffh,w
	
	movwf	((c:Osc_Step@phase)),c
	movlw	high(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((RGB_Osc_Step@this+1))&0ffh,w
	movwf	1+((c:Osc_Step@phase)),c
	movff	(RGB_Osc_Step@gr),(c:Osc_Step@step)
	movff	(RGB_Osc_Step@gr+1),(c:Osc_Step@step+1)
	call	_Osc_Step	;wreg free
	movlb	0	; () banked
	movwf	(??_RGB_Osc_Step+0+0)&0ffh
	movf	((c:RGB_Osc_Step@offset)),c,w
	movlb	0	; () banked
	movwf	(??_RGB_Osc_Step+1+0)&0ffh
	clrf	(??_RGB_Osc_Step+1+0+1)&0ffh

	movlw	01h
	movlb	0	; () banked
	addwf	(??_RGB_Osc_Step+1+0)&0ffh
	movlw	0
	addwfc	(??_RGB_Osc_Step+1+1)&0ffh
	movlw	low((c:_WS_Buffer))
	movlb	0	; () banked
	addwf	(??_RGB_Osc_Step+1+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high((c:_WS_Buffer))
	movlb	0	; () banked
	addwfc	(??_RGB_Osc_Step+1+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	(??_RGB_Osc_Step+0+0),indf2

	line	55
;Main.c: 55: WS_Buffer[ offset + 2 ] = Osc_Step( & this->B, br );
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((RGB_Osc_Step@this))&0ffh,w
	
	movwf	((c:Osc_Step@phase)),c
	movlw	high(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((RGB_Osc_Step@this+1))&0ffh,w
	movwf	1+((c:Osc_Step@phase)),c
	movff	(RGB_Osc_Step@br),(c:Osc_Step@step)
	movff	(RGB_Osc_Step@br+1),(c:Osc_Step@step+1)
	call	_Osc_Step	;wreg free
	movlb	0	; () banked
	movwf	(??_RGB_Osc_Step+0+0)&0ffh
	movf	((c:RGB_Osc_Step@offset)),c,w
	movlb	0	; () banked
	movwf	(??_RGB_Osc_Step+1+0)&0ffh
	clrf	(??_RGB_Osc_Step+1+0+1)&0ffh

	movlw	02h
	movlb	0	; () banked
	addwf	(??_RGB_Osc_Step+1+0)&0ffh
	movlw	0
	addwfc	(??_RGB_Osc_Step+1+1)&0ffh
	movlw	low((c:_WS_Buffer))
	movlb	0	; () banked
	addwf	(??_RGB_Osc_Step+1+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high((c:_WS_Buffer))
	movlb	0	; () banked
	addwfc	(??_RGB_Osc_Step+1+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	(??_RGB_Osc_Step+0+0),indf2

	line	56
	
l61:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_RGB_Osc_Step
	__end_of_RGB_Osc_Step:
	signat	_RGB_Osc_Step,20600
	global	_Osc_Step

;; *************** function _Osc_Step *****************
;; Defined at:
;;		line 32 in file "Main.c"
;; Parameters:    Size  Location     Type
;;  phase           2   31[COMRAM] PTR unsigned int 
;;		 -> Ill(18), 
;;  step            2   33[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  wave            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         4       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         4       8       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RGB_Osc_Step
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	32
global __ptext4
__ptext4:
psect	text4
	file	"Main.c"
	line	32
	global	__size_of_Osc_Step
	__size_of_Osc_Step	equ	__end_of_Osc_Step-_Osc_Step
	
_Osc_Step:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	35
	
l789:
;Main.c: 34: unsigned char wave;
;Main.c: 35: * phase += step;
	movff	(c:Osc_Step@phase),fsr2l
	movff	(c:Osc_Step@phase+1),fsr2h
	movf	((c:Osc_Step@step)),c,w
	addwf	postinc2
	movf	((c:Osc_Step@step+1)),c,w
	addwfc	postdec2
	line	37
	
l791:
;Main.c: 37: wave = * phase < 0x8000 ? ( * phase >> 7 ) : 0xFF - ( * phase >> 7 );
	movff	(c:Osc_Step@phase),fsr2l
	movff	(c:Osc_Step@phase+1),fsr2h
	movff	postinc2,??_Osc_Step+0+0
	movff	postdec2,??_Osc_Step+0+0+1
	movlw	0
	movlb	0	; () banked
	subwf	(??_Osc_Step+0+0)&0ffh,w
	movlw	080h
	subwfb	(??_Osc_Step+0+1)&0ffh,w
	btfss	status,0
	goto	u131
	goto	u130
u131:
	goto	l795
u130:
	
l793:; BSR set to: 0

	movff	(c:Osc_Step@phase),fsr2l
	movff	(c:Osc_Step@phase+1),fsr2h
	movff	postinc2,??_Osc_Step+0+0
	movff	postdec2,??_Osc_Step+0+0+1
	movlw	07h
	movlb	0	; () banked
	movwf	(??_Osc_Step+2+0)&0ffh
u145:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_Osc_Step+0+1)&0ffh
	rrcf	(??_Osc_Step+0+0)&0ffh
	movlb	0	; () banked
	decfsz	(??_Osc_Step+2+0)&0ffh
	goto	u145
	movlb	0	; () banked
	comf	(??_Osc_Step+0+0)&0ffh
	comf	(??_Osc_Step+0+1)&0ffh
	infsnz	(??_Osc_Step+0+0)&0ffh
	incf	(??_Osc_Step+0+1)&0ffh
	movlw	low(0FFh)
	movlb	0	; () banked
	addwf	(??_Osc_Step+0+0)&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((_Osc_Step$158))&0ffh
	movlw	high(0FFh)
	movlb	0	; () banked
	addwfc	(??_Osc_Step+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((_Osc_Step$158))&0ffh
	goto	l797
	
l48:; BSR set to: 0

	
l795:; BSR set to: 0

	movff	(c:Osc_Step@phase),fsr2l
	movff	(c:Osc_Step@phase+1),fsr2h
	movff	postinc2,??_Osc_Step+0+0
	movff	postdec2,??_Osc_Step+0+0+1
	movlw	07h
	movlb	0	; () banked
	movwf	(??_Osc_Step+2+0)&0ffh
u155:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_Osc_Step+0+1)&0ffh
	rrcf	(??_Osc_Step+0+0)&0ffh
	movlb	0	; () banked
	decfsz	(??_Osc_Step+2+0)&0ffh
	goto	u155
	movff	??_Osc_Step+0+0,(_Osc_Step$158)
	movff	??_Osc_Step+0+1,(_Osc_Step$158+1)
	goto	l797
	
l50:; BSR set to: 0

	
l797:; BSR set to: 0

	movff	(_Osc_Step$158),(Osc_Step@wave)
	line	39
	
l799:; BSR set to: 0

;Main.c: 39: return wave > 0x80 ? wave - 0x80 : 0;
	movlw	(081h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((Osc_Step@wave))&0ffh,w
	btfsc	status,0
	goto	u161
	goto	u160
u161:
	goto	l803
u160:
	
l801:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Osc_Step$159+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Osc_Step$159))&0ffh
	goto	l805
	
l52:; BSR set to: 0

	
l803:; BSR set to: 0

	movlw	low(-128)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((Osc_Step@wave))&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((_Osc_Step$159))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	1+((_Osc_Step$159))&0ffh
	movlw	high(-128)
	addwfc	1+((_Osc_Step$159))&0ffh
	goto	l805
	
l54:; BSR set to: 0

	
l805:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Osc_Step$159))&0ffh,w
	goto	l55
	
l807:; BSR set to: 0

	line	40
	
l55:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_Osc_Step
	__end_of_Osc_Step:
	signat	_Osc_Step,8313
	global	_RGB_Osc_Init

;; *************** function _RGB_Osc_Init *****************
;; Defined at:
;;		line 43 in file "Main.c"
;; Parameters:    Size  Location     Type
;;  this            2   31[COMRAM] PTR struct .
;;		 -> Ill(18), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	43
global __ptext5
__ptext5:
psect	text5
	file	"Main.c"
	line	43
	global	__size_of_RGB_Osc_Init
	__size_of_RGB_Osc_Init	equ	__end_of_RGB_Osc_Init-_RGB_Osc_Init
	
_RGB_Osc_Init:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	45
	
l683:
;Main.c: 45: this->R = 0;
	movff	(c:RGB_Osc_Init@this),fsr2l
	movff	(c:RGB_Osc_Init@this+1),fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	46
	
l685:
;Main.c: 46: this->G = 0;
	lfsr	2,02h
	movf	((c:RGB_Osc_Init@this)),c,w
	addwf	fsr2l
	movf	((c:RGB_Osc_Init@this+1)),c,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	47
	
l687:
;Main.c: 47: this->B = 0;
	lfsr	2,04h
	movf	((c:RGB_Osc_Init@this)),c,w
	addwf	fsr2l
	movf	((c:RGB_Osc_Init@this+1)),c,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	48
	
l58:
	return
	opt stack 0
GLOBAL	__end_of_RGB_Osc_Init
	__end_of_RGB_Osc_Init:
	signat	_RGB_Osc_Init,4216
	global	_On_HIDD_Event

;; *************** function _On_HIDD_Event *****************
;; Defined at:
;;		line 18 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:         17       0       0       0       0
;;      Totals:        17       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo
psect	intcodelo
	file	"Main.c"
	line	18
	global	__size_of_On_HIDD_Event
	__size_of_On_HIDD_Event	equ	__end_of_On_HIDD_Event-_On_HIDD_Event
	
_On_HIDD_Event:
;incstack = 0
	opt	stack 27
	movff	status+0,??_On_HIDD_Event+0
	movff	wreg+0,??_On_HIDD_Event+1
	movff	bsr+0,??_On_HIDD_Event+2
	movff	pclat+0,??_On_HIDD_Event+3
	movff	pclat+1,??_On_HIDD_Event+4
	movff	fsr0l+0,??_On_HIDD_Event+5
	movff	fsr0h+0,??_On_HIDD_Event+6
	movff	fsr1l+0,??_On_HIDD_Event+7
	movff	fsr1h+0,??_On_HIDD_Event+8
	movff	fsr2l+0,??_On_HIDD_Event+9
	movff	fsr2h+0,??_On_HIDD_Event+10
	movff	prodl+0,??_On_HIDD_Event+11
	movff	prodh+0,??_On_HIDD_Event+12
	movff	tblptrl+0,??_On_HIDD_Event+13
	movff	tblptrh+0,??_On_HIDD_Event+14
	movff	tblptru+0,??_On_HIDD_Event+15
	movff	tablat+0,??_On_HIDD_Event+16
	line	21
	
i1l44:
	movff	??_On_HIDD_Event+16,tablat+0
	movff	??_On_HIDD_Event+15,tblptru+0
	movff	??_On_HIDD_Event+14,tblptrh+0
	movff	??_On_HIDD_Event+13,tblptrl+0
	movff	??_On_HIDD_Event+12,prodh+0
	movff	??_On_HIDD_Event+11,prodl+0
	movff	??_On_HIDD_Event+10,fsr2h+0
	movff	??_On_HIDD_Event+9,fsr2l+0
	movff	??_On_HIDD_Event+8,fsr1h+0
	movff	??_On_HIDD_Event+7,fsr1l+0
	movff	??_On_HIDD_Event+6,fsr0h+0
	movff	??_On_HIDD_Event+5,fsr0l+0
	movff	??_On_HIDD_Event+4,pclat+1
	movff	??_On_HIDD_Event+3,pclat+0
	movff	??_On_HIDD_Event+2,bsr+0
	movff	??_On_HIDD_Event+1,wreg+0
	movff	??_On_HIDD_Event+0,status+0
	retfie
	opt stack 0
GLOBAL	__end_of_On_HIDD_Event
	__end_of_On_HIDD_Event:
	signat	_On_HIDD_Event,1112
	global	_On_HIDD_Int

;; *************** function _On_HIDD_Int *****************
;; Defined at:
;;		line 12 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:         14       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"Main.c"
	line	12
	global	__size_of_On_HIDD_Int
	__size_of_On_HIDD_Int	equ	__end_of_On_HIDD_Int-_On_HIDD_Int
	
_On_HIDD_Int:
;incstack = 0
	opt	stack 27
	movff	pclat+0,??_On_HIDD_Int+0
	movff	pclat+1,??_On_HIDD_Int+1
	movff	fsr0l+0,??_On_HIDD_Int+2
	global	int_func
	goto	int_func
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:
	movff	fsr0h+0,??_On_HIDD_Int+3
	movff	fsr1l+0,??_On_HIDD_Int+4
	movff	fsr1h+0,??_On_HIDD_Int+5
	movff	fsr2l+0,??_On_HIDD_Int+6
	movff	fsr2h+0,??_On_HIDD_Int+7
	movff	prodl+0,??_On_HIDD_Int+8
	movff	prodh+0,??_On_HIDD_Int+9
	movff	tblptrl+0,??_On_HIDD_Int+10
	movff	tblptrh+0,??_On_HIDD_Int+11
	movff	tblptru+0,??_On_HIDD_Int+12
	movff	tablat+0,??_On_HIDD_Int+13
	line	15
	
i2l41:
	movff	??_On_HIDD_Int+13,tablat+0
	movff	??_On_HIDD_Int+12,tblptru+0
	movff	??_On_HIDD_Int+11,tblptrh+0
	movff	??_On_HIDD_Int+10,tblptrl+0
	movff	??_On_HIDD_Int+9,prodh+0
	movff	??_On_HIDD_Int+8,prodl+0
	movff	??_On_HIDD_Int+7,fsr2h+0
	movff	??_On_HIDD_Int+6,fsr2l+0
	movff	??_On_HIDD_Int+5,fsr1h+0
	movff	??_On_HIDD_Int+4,fsr1l+0
	movff	??_On_HIDD_Int+3,fsr0h+0
	movff	??_On_HIDD_Int+2,fsr0l+0
	movff	??_On_HIDD_Int+1,pclat+1
	movff	??_On_HIDD_Int+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_On_HIDD_Int
	__end_of_On_HIDD_Int:
	signat	_On_HIDD_Int,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
