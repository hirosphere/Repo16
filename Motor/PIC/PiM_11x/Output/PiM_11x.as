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
	FNCALL	_main,_APP_DeviceCustomHIDTasks
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_USBDeviceAttach
	FNCALL	_main,_USBDeviceDetach
	FNCALL	_main,_USBDeviceInit
	FNCALL	_USBDeviceInit,_memset
	FNCALL	_SYSTEM_Initialize,_ADC_Enable
	FNCALL	_SYSTEM_Initialize,_ADC_SetConfiguration
	FNCALL	_SYSTEM_Initialize,_BUTTON_Enable
	FNCALL	_SYSTEM_Initialize,_LED_Enable
	FNCALL	_APP_DeviceCustomHIDTasks,_ADC_Read10bit
	FNCALL	_APP_DeviceCustomHIDTasks,_BUTTON_IsPressed
	FNCALL	_APP_DeviceCustomHIDTasks,_DoCommand
	FNCALL	_APP_DeviceCustomHIDTasks,_USBTransferOnePacket
	FNCALL	_DoCommand,_ADC_Read10bit
	FNCALL	_DoCommand,_BUTTON_IsPressed
	FNCALL	_DoCommand,_LED_Toggle
	FNCALL	_DoCommand,_USBTransferOnePacket
	FNROOT	_main
	FNCALL	_SYS_InterruptHigh,_USBDeviceTasks
	FNCALL	_USBDeviceTasks,_USBCtrlEPAllowStatusStage
	FNCALL	_USBDeviceTasks,_USBCtrlEPService
	FNCALL	_USBDeviceTasks,_USBIncrement1msInternalTimers
	FNCALL	_USBDeviceTasks,_USBStallHandler
	FNCALL	_USBDeviceTasks,_USBSuspend
	FNCALL	_USBDeviceTasks,_USBWakeFromSuspend
	FNCALL	_USBDeviceTasks,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBDeviceTasks,i2_USBDeviceInit
	FNCALL	i2_USBDeviceInit,i2_memset
	FNCALL	_USBWakeFromSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPService,_USBCtrlTrfInHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfOutHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfSetupHandler
	FNCALL	_USBCtrlEPService,_memcpy
	FNCALL	_USBCtrlTrfSetupHandler,_USBCheckStdRequest
	FNCALL	_USBCtrlTrfSetupHandler,_USBCtrlEPServiceComplete
	FNCALL	_USBCtrlTrfSetupHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowDataStage
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlEPAllowDataStage,_USBCtrlTrfTxService
	FNCALL	_USBCheckStdRequest,_USBStdFeatureReqHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetDscHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetStatusHandler
	FNCALL	_USBCheckStdRequest,_USBStdSetCfgHandler
	FNCALL	_USBCheckStdRequest,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,i2_memset
	FNCALL	_USBStdFeatureReqHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_DeviceCustomHIDInitialize
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_APP_LEDUpdateUSBStatus
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCheckHIDRequest
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,i2_SYSTEM_Initialize
	FNCALL	i2_SYSTEM_Initialize,i2_ADC_Enable
	FNCALL	i2_SYSTEM_Initialize,i2_ADC_SetConfiguration
	FNCALL	i2_SYSTEM_Initialize,i2_BUTTON_Enable
	FNCALL	i2_SYSTEM_Initialize,i2_LED_Enable
	FNCALL	_APP_LEDUpdateUSBStatus,_LED_Off
	FNCALL	_APP_LEDUpdateUSBStatus,_LED_On
	FNCALL	_APP_DeviceCustomHIDInitialize,_USBEnableEndpoint
	FNCALL	_APP_DeviceCustomHIDInitialize,i2_USBTransferOnePacket
	FNCALL	_USBEnableEndpoint,_USBConfigureEndpoint
	FNCALL	_USBCtrlTrfOutHandler,_USBCtrlTrfRxService
	FNCALL	_USBCtrlTrfRxService,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlTrfInHandler,_USBCtrlTrfTxService
	FNCALL	intlevel2,_SYS_InterruptHigh
	global	intlevel2
	FNROOT	intlevel2
	global	_USB_SD_Ptr
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"HIDD\USB\usb_descriptors.c"
	line	265
_USB_SD_Ptr:
	dw	((_sd000))&0ffffh
	dw	((_sd001))&0ffffh
	dw	((_sd002))&0ffffh
	global __end_of_USB_SD_Ptr
__end_of_USB_SD_Ptr:
	global	_USB_CD_Ptr
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	259
_USB_CD_Ptr:
	dw	((_configDescriptor1))&0ffffh
	global __end_of_USB_CD_Ptr
__end_of_USB_CD_Ptr:
	global	_sd001
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	225
_sd001:
	db	low(034h)
	db	low(03h)
	dw	(04Dh)&0ffffh
	dw	(069h)&0ffffh
	dw	(063h)&0ffffh
	dw	(072h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(069h)&0ffffh
	dw	(070h)&0ffffh
	dw	(020h)&0ffffh
	dw	(054h)&0ffffh
	dw	(065h)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(067h)&0ffffh
	dw	(079h)&0ffffh
	dw	(020h)&0ffffh
	dw	(049h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(063h)&0ffffh
	dw	(02Eh)&0ffffh
	global __end_of_sd001
__end_of_sd001:
	global	_sd002
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	232
_sd002:
	db	low(02Eh)
	db	low(03h)
	dw	(053h)&0ffffh
	dw	(069h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(070h)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(065h)&0ffffh
	dw	(020h)&0ffffh
	dw	(048h)&0ffffh
	dw	(049h)&0ffffh
	dw	(044h)&0ffffh
	dw	(020h)&0ffffh
	dw	(044h)&0ffffh
	dw	(065h)&0ffffh
	dw	(076h)&0ffffh
	dw	(069h)&0ffffh
	dw	(063h)&0ffffh
	dw	(065h)&0ffffh
	dw	(020h)&0ffffh
	dw	(044h)&0ffffh
	dw	(065h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(06Fh)&0ffffh
	global __end_of_sd002
__end_of_sd002:
	global	_configDescriptor1
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	171
_configDescriptor1:
	db	low(09h)
	db	low(02h)
	db	low(029h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0C0h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(02h)
	db	low(03h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(09h)
	db	low(021h)
	db	low(011h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(022h)
	db	low(01Dh)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(01h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	global __end_of_configDescriptor1
__end_of_configDescriptor1:
	global	_hid_rpt01
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	239
_hid_rpt01:
	db	low(06h)
	db	low(0)
	db	low(0FFh)
	db	low(09h)
	db	low(01h)
	db	low(0A1h)
	db	low(01h)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(015h)
	db	low(0)
	db	low(026h)
	db	low(0FFh)
	db	low(0)
	db	low(075h)
	db	low(08h)
	db	low(095h)
	db	low(040h)
	db	low(081h)
	db	low(0)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(091h)
	db	low(0)
	db	low(0C0h)
	global __end_of_hid_rpt01
__end_of_hid_rpt01:
	global	_device_dsc
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	152
_device_dsc:
	db	low(012h)
	db	low(01h)
	dw	(0200h)&0ffffh
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(08h)
	dw	(04D8h)&0ffffh
	dw	(03Fh)&0ffffh
	dw	(0100h)&0ffffh
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_device_dsc
__end_of_device_dsc:
	global	_sd000
psect	smallconst
	file	"HIDD\USB\usb_descriptors.c"
	line	220
_sd000:
	db	low(04h)
	db	low(03h)
	dw	(0409h)&0ffffh
	global __end_of_sd000
__end_of_sd000:
	global	_USB_SD_Ptr
	global	_USB_CD_Ptr
	global	_sd001
	global	_sd002
	global	_configDescriptor1
	global	_hid_rpt01
	global	_device_dsc
	global	_sd000
	global	_USB1msTickCount
	global	APP_LEDUpdateUSBStatus@ledCount
	global	_pBDTEntryEP0OutCurrent
	global	_pBDTEntryEP0OutNext
	global	_pDst
	global	_BothEP0OutUOWNsSet
	global	_RemoteWakeup
	global	_USBBusIsSuspended
	global	_USBDeferINDataStagePackets
	global	_USBDeferOUTDataStagePackets
	global	_USBDeferStatusStagePacket
	global	_USBStatusStageEnabledFlag1
	global	_USBStatusStageEnabledFlag2
	global	_USBStatusStageTimeoutCounter
	global	_USBTicksSinceSuspendEnd
	global	_controlTransferState
	global	_endpoint_number
	global	_shortPacketStatus
	global	_USBActiveConfiguration
	global	_USBAlternateInterface
	global	_USTATcopy
	global	_active_protocol
	global	_idle_rate
	global	_outPipes
	global	_pBDTEntryIn
	global	_pBDTEntryOut
	global	_USBInHandle
	global	_USBOutHandle
	global	_ep_data_in
	global	_ep_data_out
	global	_ReturnToBL
	global	_USBDeviceState
	global	_inPipes
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADCON2bits
_ADCON2bits	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ANSELHbits
_ANSELHbits	set	0xF7F
	global	_BAUDCTL
_BAUDCTL	set	0xFB8
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_IPR2bits
_IPR2bits	set	0xFA2
	global	_LATB
_LATB	set	0xF8A
	global	_LATCbits
_LATCbits	set	0xF8B
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_UADDR
_UADDR	set	0xF5C
	global	_UCFG
_UCFG	set	0xF61
	global	_UCON
_UCON	set	0xF64
	global	_UCONbits
_UCONbits	set	0xF64
	global	_UEIE
_UEIE	set	0xF5B
	global	_UEIR
_UEIR	set	0xF5F
	global	_UEP0bits
_UEP0bits	set	0xF53
	global	_UIE
_UIE	set	0xF60
	global	_UIEbits
_UIEbits	set	0xF60
	global	_UIR
_UIR	set	0xF62
	global	_UIRbits
_UIRbits	set	0xF62
	global	_USTAT
_USTAT	set	0xF63
	global	_UEP0
_UEP0	set	0xF53
	global	_UEP1
_UEP1	set	0xF54
	global	_ReceivedDataBuffer

	DABS	1,608,64,_ReceivedDataBuffer
	global	_BDT

	DABS	1,512,32,_BDT
	global	_ToSendDataBuffer

	DABS	1,672,64,_ToSendDataBuffer
	global	_CtrlTrfData

	DABS	1,552,8,_CtrlTrfData
	global	_SetupPkt

	DABS	1,544,8,_SetupPkt
; #config settings
global __CFG_CPUDIV$NOCLKDIV
__CFG_CPUDIV$NOCLKDIV equ 0x0
global __CFG_USBDIV$OFF
__CFG_USBDIV$OFF equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_PLLEN$ON
__CFG_PLLEN$ON equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$30
__CFG_BORV$30 equ 0x0
global __CFG_PWRTEN$OFF
__CFG_PWRTEN$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_HFOFST$OFF
__CFG_HFOFST$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_BBSIZ$OFF
__CFG_BBSIZ$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"Output\PiM_11x.as"
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
	global	_USB1msTickCount
_USB1msTickCount:
       ds      4
APP_LEDUpdateUSBStatus@ledCount:
       ds      2
	global	_pBDTEntryEP0OutCurrent
_pBDTEntryEP0OutCurrent:
       ds      2
	global	_pBDTEntryEP0OutNext
_pBDTEntryEP0OutNext:
       ds      2
	global	_pDst
_pDst:
       ds      2
	global	_BothEP0OutUOWNsSet
_BothEP0OutUOWNsSet:
       ds      1
	global	_RemoteWakeup
_RemoteWakeup:
       ds      1
	global	_USBBusIsSuspended
_USBBusIsSuspended:
       ds      1
	global	_USBDeferINDataStagePackets
_USBDeferINDataStagePackets:
       ds      1
	global	_USBDeferOUTDataStagePackets
_USBDeferOUTDataStagePackets:
       ds      1
	global	_USBDeferStatusStagePacket
_USBDeferStatusStagePacket:
       ds      1
	global	_USBStatusStageEnabledFlag1
_USBStatusStageEnabledFlag1:
       ds      1
	global	_USBStatusStageEnabledFlag2
_USBStatusStageEnabledFlag2:
       ds      1
	global	_USBStatusStageTimeoutCounter
_USBStatusStageTimeoutCounter:
       ds      1
	global	_USBTicksSinceSuspendEnd
_USBTicksSinceSuspendEnd:
       ds      1
	global	_controlTransferState
_controlTransferState:
       ds      1
	global	_endpoint_number
_endpoint_number:
       ds      1
	global	_shortPacketStatus
_shortPacketStatus:
       ds      1
	global	_USBActiveConfiguration
_USBActiveConfiguration:
       ds      1
	global	_USBAlternateInterface
_USBAlternateInterface:
       ds      1
	global	_USTATcopy
_USTATcopy:
       ds      1
_active_protocol:
       ds      1
_idle_rate:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_outPipes
_outPipes:
       ds      8
	global	_pBDTEntryIn
_pBDTEntryIn:
       ds      4
	global	_pBDTEntryOut
_pBDTEntryOut:
       ds      4
	global	_USBInHandle
_USBInHandle:
       ds      2
	global	_USBOutHandle
_USBOutHandle:
       ds      2
	global	_ep_data_in
_ep_data_in:
       ds      2
	global	_ep_data_out
_ep_data_out:
       ds      2
	global	_ReturnToBL
_ReturnToBL:
       ds      1
	global	_USBDeviceState
_USBDeviceState:
       ds      1
	global	_inPipes
_inPipes:
       ds      6
	line	#
psect	cinit
; Clear objects allocated to BANK0 (32 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	32
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (30 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	30
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_USBDeviceAttach:	; 0 bytes @ 0x0
??_USBDeviceDetach:	; 0 bytes @ 0x0
??_LED_Toggle:	; 0 bytes @ 0x0
??_BUTTON_IsPressed:	; 0 bytes @ 0x0
??_LED_Enable:	; 0 bytes @ 0x0
??_BUTTON_Enable:	; 0 bytes @ 0x0
??_ADC_SetConfiguration:	; 0 bytes @ 0x0
??_ADC_Enable:	; 0 bytes @ 0x0
	global	?_USBTransferOnePacket
?_USBTransferOnePacket:	; 2 bytes @ 0x0
	global	?_ADC_Read10bit
?_ADC_Read10bit:	; 2 bytes @ 0x0
?_memset:	; 2 bytes @ 0x0
	global	USBTransferOnePacket@dir
USBTransferOnePacket@dir:	; 1 bytes @ 0x0
	global	ADC_Enable@channel
ADC_Enable@channel:	; 1 bytes @ 0x0
	global	ADC_SetConfiguration@configuration
ADC_SetConfiguration@configuration:	; 1 bytes @ 0x0
	global	BUTTON_IsPressed@button
BUTTON_IsPressed@button:	; 1 bytes @ 0x0
	global	BUTTON_Enable@button
BUTTON_Enable@button:	; 1 bytes @ 0x0
	global	LED_Toggle@led
LED_Toggle@led:	; 1 bytes @ 0x0
	global	LED_Enable@led
LED_Enable@led:	; 1 bytes @ 0x0
	global	memset@p1
memset@p1:	; 2 bytes @ 0x0
	ds   1
??_SYSTEM_Initialize:	; 0 bytes @ 0x1
	global	SYSTEM_Initialize@state
SYSTEM_Initialize@state:	; 1 bytes @ 0x1
	global	USBTransferOnePacket@data
USBTransferOnePacket@data:	; 2 bytes @ 0x1
	ds   1
??_ADC_Read10bit:	; 0 bytes @ 0x2
	global	memset@c
memset@c:	; 2 bytes @ 0x2
	ds   1
	global	USBTransferOnePacket@len
USBTransferOnePacket@len:	; 1 bytes @ 0x3
	global	ADC_Read10bit@result
ADC_Read10bit@result:	; 2 bytes @ 0x3
	ds   1
??_USBTransferOnePacket:	; 0 bytes @ 0x4
	global	memset@n
memset@n:	; 2 bytes @ 0x4
	ds   1
	global	ADC_Read10bit@channel
ADC_Read10bit@channel:	; 1 bytes @ 0x5
	ds   1
??_memset:	; 0 bytes @ 0x6
	global	USBTransferOnePacket@ep
USBTransferOnePacket@ep:	; 1 bytes @ 0x6
	global	memset@p
memset@p:	; 2 bytes @ 0x6
	ds   1
	global	USBTransferOnePacket@handle
USBTransferOnePacket@handle:	; 2 bytes @ 0x7
	ds   1
??_USBDeviceInit:	; 0 bytes @ 0x8
	global	USBDeviceInit@i
USBDeviceInit@i:	; 1 bytes @ 0x8
	ds   1
??_DoCommand:	; 0 bytes @ 0x9
	ds   3
	global	DoCommand@pot
DoCommand@pot:	; 2 bytes @ 0xC
	ds   2
??_APP_DeviceCustomHIDTasks:	; 0 bytes @ 0xE
	ds   3
	global	APP_DeviceCustomHIDTasks@pot
APP_DeviceCustomHIDTasks@pot:	; 2 bytes @ 0x11
	ds   2
??_main:	; 0 bytes @ 0x13
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_SYSTEM_Initialize:	; 0 bytes @ 0x0
?_USBDeviceInit:	; 0 bytes @ 0x0
?_USBDeviceAttach:	; 0 bytes @ 0x0
?_APP_DeviceCustomHIDTasks:	; 0 bytes @ 0x0
?_USBDeviceDetach:	; 0 bytes @ 0x0
?_LED_Toggle:	; 0 bytes @ 0x0
?_LED_Off:	; 0 bytes @ 0x0
??_LED_Off:	; 0 bytes @ 0x0
?_LED_On:	; 0 bytes @ 0x0
??_LED_On:	; 0 bytes @ 0x0
?_LED_Enable:	; 0 bytes @ 0x0
?_BUTTON_Enable:	; 0 bytes @ 0x0
?_USBDeviceTasks:	; 0 bytes @ 0x0
?_USBCheckHIDRequest:	; 0 bytes @ 0x0
??_USBCheckHIDRequest:	; 0 bytes @ 0x0
?_USBWakeFromSuspend:	; 0 bytes @ 0x0
?_USBSuspend:	; 0 bytes @ 0x0
?_USBIncrement1msInternalTimers:	; 0 bytes @ 0x0
??_USBIncrement1msInternalTimers:	; 0 bytes @ 0x0
?_USBCtrlEPAllowStatusStage:	; 0 bytes @ 0x0
??_USBCtrlEPAllowStatusStage:	; 0 bytes @ 0x0
?_USBStallHandler:	; 0 bytes @ 0x0
??_USBStallHandler:	; 0 bytes @ 0x0
?_USBCtrlEPService:	; 0 bytes @ 0x0
?_USBConfigureEndpoint:	; 0 bytes @ 0x0
?_USBCtrlTrfTxService:	; 0 bytes @ 0x0
??_USBCtrlTrfTxService:	; 0 bytes @ 0x0
?_USBCtrlTrfSetupHandler:	; 0 bytes @ 0x0
?_USBCtrlTrfOutHandler:	; 0 bytes @ 0x0
?_USBCtrlTrfInHandler:	; 0 bytes @ 0x0
?_USBCheckStdRequest:	; 0 bytes @ 0x0
?_USBStdFeatureReqHandler:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_APP_DeviceCustomHIDInitialize:	; 0 bytes @ 0x0
?_DoCommand:	; 0 bytes @ 0x0
?_APP_LEDUpdateUSBStatus:	; 0 bytes @ 0x0
?_SYS_InterruptHigh:	; 0 bytes @ 0x0
?_USBCtrlEPAllowDataStage:	; 0 bytes @ 0x0
?_USBCtrlEPServiceComplete:	; 0 bytes @ 0x0
?_USBCtrlTrfRxService:	; 0 bytes @ 0x0
??_USBCtrlTrfRxService:	; 0 bytes @ 0x0
?_USBStdSetCfgHandler:	; 0 bytes @ 0x0
?_USBStdGetDscHandler:	; 0 bytes @ 0x0
??_USBStdGetDscHandler:	; 0 bytes @ 0x0
?_USBStdGetStatusHandler:	; 0 bytes @ 0x0
??_USBStdGetStatusHandler:	; 0 bytes @ 0x0
?i2_SYSTEM_Initialize:	; 0 bytes @ 0x0
?i2_USBDeviceInit:	; 0 bytes @ 0x0
??i2_ADC_Enable:	; 0 bytes @ 0x0
??i2_ADC_SetConfiguration:	; 0 bytes @ 0x0
?i2_BUTTON_Enable:	; 0 bytes @ 0x0
??i2_BUTTON_Enable:	; 0 bytes @ 0x0
?i2_LED_Enable:	; 0 bytes @ 0x0
??i2_LED_Enable:	; 0 bytes @ 0x0
?_BUTTON_IsPressed:	; 1 bytes @ 0x0
?_ADC_SetConfiguration:	; 1 bytes @ 0x0
?_ADC_Enable:	; 1 bytes @ 0x0
?i2_ADC_Enable:	; 1 bytes @ 0x0
?i2_ADC_SetConfiguration:	; 1 bytes @ 0x0
?_memcpy:	; 2 bytes @ 0x0
	global	?i2_USBTransferOnePacket
?i2_USBTransferOnePacket:	; 2 bytes @ 0x0
?i2_memset:	; 2 bytes @ 0x0
	global	USBConfigureEndpoint@direction
USBConfigureEndpoint@direction:	; 1 bytes @ 0x0
	global	USBCtrlTrfTxService@byteToSend
USBCtrlTrfTxService@byteToSend:	; 1 bytes @ 0x0
	global	USBCtrlTrfRxService@i
USBCtrlTrfRxService@i:	; 1 bytes @ 0x0
	global	LED_On@led
LED_On@led:	; 1 bytes @ 0x0
	global	LED_Off@led
LED_Off@led:	; 1 bytes @ 0x0
	global	i2USBTransferOnePacket@dir
i2USBTransferOnePacket@dir:	; 1 bytes @ 0x0
	global	i2ADC_Enable@channel
i2ADC_Enable@channel:	; 1 bytes @ 0x0
	global	i2ADC_SetConfiguration@configuration
i2ADC_SetConfiguration@configuration:	; 1 bytes @ 0x0
	global	i2BUTTON_Enable@button
i2BUTTON_Enable@button:	; 1 bytes @ 0x0
	global	i2LED_Enable@led
i2LED_Enable@led:	; 1 bytes @ 0x0
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x0
	global	i2memset@p1
i2memset@p1:	; 2 bytes @ 0x0
	ds   1
??_USBConfigureEndpoint:	; 0 bytes @ 0x1
??_USBCtrlTrfInHandler:	; 0 bytes @ 0x1
??_APP_LEDUpdateUSBStatus:	; 0 bytes @ 0x1
??_USBCtrlEPAllowDataStage:	; 0 bytes @ 0x1
??_USBCtrlEPServiceComplete:	; 0 bytes @ 0x1
??i2_SYSTEM_Initialize:	; 0 bytes @ 0x1
	global	USBCtrlTrfRxService@byteToRead
USBCtrlTrfRxService@byteToRead:	; 1 bytes @ 0x1
	global	USBCtrlTrfInHandler@lastDTS
USBCtrlTrfInHandler@lastDTS:	; 1 bytes @ 0x1
	global	i2SYSTEM_Initialize@state
i2SYSTEM_Initialize@state:	; 1 bytes @ 0x1
	global	USBStdGetStatusHandler@p
USBStdGetStatusHandler@p:	; 2 bytes @ 0x1
	global	i2USBTransferOnePacket@data
i2USBTransferOnePacket@data:	; 2 bytes @ 0x1
	ds   1
??_USBCtrlTrfOutHandler:	; 0 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x2
	global	i2memset@c
i2memset@c:	; 2 bytes @ 0x2
	ds   1
	global	i2USBTransferOnePacket@len
i2USBTransferOnePacket@len:	; 1 bytes @ 0x3
	ds   1
??i2_USBTransferOnePacket:	; 0 bytes @ 0x4
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x4
	global	i2memset@n
i2memset@n:	; 2 bytes @ 0x4
	ds   1
	global	USBConfigureEndpoint@EPNum
USBConfigureEndpoint@EPNum:	; 1 bytes @ 0x5
	ds   1
??_memcpy:	; 0 bytes @ 0x6
??i2_memset:	; 0 bytes @ 0x6
	global	i2USBTransferOnePacket@ep
i2USBTransferOnePacket@ep:	; 1 bytes @ 0x6
	global	USBConfigureEndpoint@handle
USBConfigureEndpoint@handle:	; 2 bytes @ 0x6
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0x6
	global	i2memset@p
i2memset@p:	; 2 bytes @ 0x6
	ds   1
	global	i2USBTransferOnePacket@handle
i2USBTransferOnePacket@handle:	; 2 bytes @ 0x7
	ds   1
?_USBEnableEndpoint:	; 0 bytes @ 0x8
??i2_USBDeviceInit:	; 0 bytes @ 0x8
	global	USBEnableEndpoint@options
USBEnableEndpoint@options:	; 1 bytes @ 0x8
	global	i2USBDeviceInit@i
i2USBDeviceInit@i:	; 1 bytes @ 0x8
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0x8
	ds   1
??_USBEnableEndpoint:	; 0 bytes @ 0x9
	ds   2
	global	USBEnableEndpoint@p
USBEnableEndpoint@p:	; 2 bytes @ 0xB
	ds   2
	global	USBEnableEndpoint@ep
USBEnableEndpoint@ep:	; 1 bytes @ 0xD
	ds   1
??_APP_DeviceCustomHIDInitialize:	; 0 bytes @ 0xE
?_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0xE
	global	USER_USB_CALLBACK_EVENT_HANDLER@event
USER_USB_CALLBACK_EVENT_HANDLER@event:	; 2 bytes @ 0xE
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@pdata
USER_USB_CALLBACK_EVENT_HANDLER@pdata:	; 2 bytes @ 0x10
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@size
USER_USB_CALLBACK_EVENT_HANDLER@size:	; 2 bytes @ 0x12
	ds   2
??_USER_USB_CALLBACK_EVENT_HANDLER:	; 0 bytes @ 0x14
	ds   2
??_USBWakeFromSuspend:	; 0 bytes @ 0x16
??_USBSuspend:	; 0 bytes @ 0x16
??_USBStdFeatureReqHandler:	; 0 bytes @ 0x16
??_USBStdSetCfgHandler:	; 0 bytes @ 0x16
	global	USBStdSetCfgHandler@i
USBStdSetCfgHandler@i:	; 1 bytes @ 0x16
	ds   3
	global	USBStdFeatureReqHandler@pUEP
USBStdFeatureReqHandler@pUEP:	; 2 bytes @ 0x19
	ds   2
	global	USBStdFeatureReqHandler@current_ep_data
USBStdFeatureReqHandler@current_ep_data:	; 1 bytes @ 0x1B
	ds   1
	global	USBStdFeatureReqHandler@p
USBStdFeatureReqHandler@p:	; 2 bytes @ 0x1C
	ds   2
??_USBCheckStdRequest:	; 0 bytes @ 0x1E
	ds   2
??_USBCtrlEPService:	; 0 bytes @ 0x20
??_USBCtrlTrfSetupHandler:	; 0 bytes @ 0x20
	ds   1
??_USBDeviceTasks:	; 0 bytes @ 0x21
	global	USBDeviceTasks@i
USBDeviceTasks@i:	; 1 bytes @ 0x21
	ds   1
??_SYS_InterruptHigh:	; 0 bytes @ 0x22
	ds   14
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    198
;!    Data        0
;!    BSS         62
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     48      78
;!    BANK0           160     19      51
;!    BANK1           256      0       0
;!    BANK2h           32      0       0
;!    BANK2l           48      0       0

;!
;!Pointer List with Targets:
;!
;!    USER_USB_CALLBACK_EVENT_HANDLER@pdata	PTR void  size(2) Largest target is 767
;!		 -> RAM(DATA[767]), USTATcopy(COMRAM[1]), USBActiveConfiguration(COMRAM[1]), BDT(BIGRAMll[32]), 
;!		 -> NULL(NULL[0]), 
;!
;!    memset@p1	PTR void  size(2) Largest target is 32
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(ABS[1]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 32
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(ABS[1]), 
;!
;!    memcpy@d1	PTR void  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMlh[8]), 
;!
;!    memcpy@d	PTR unsigned char  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMlh[8]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 767
;!		 -> CtrlTrfData(BIGRAMlh[8]), RAM(DATA[767]), SetupPkt(BIGRAMlh[8]), ToSendDataBuffer(BIGRAMh[64]), 
;!		 -> ReceivedDataBuffer(BIGRAMll[64]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 767
;!		 -> CtrlTrfData(BIGRAMlh[8]), RAM(DATA[767]), SetupPkt(BIGRAMlh[8]), ToSendDataBuffer(BIGRAMh[64]), 
;!		 -> ReceivedDataBuffer(BIGRAMll[64]), 
;!
;!    USBStdFeatureReqHandler@pUEP	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(ABS[1]), 
;!
;!    USBStdFeatureReqHandler@p	PTR struct __BDT size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMlh[8]), 
;!
;!    USBStdGetStatusHandler@p	PTR struct __BDT size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    pDst	PTR volatile unsigned char  size(2) Largest target is 8
;!		 -> CtrlTrfData(BIGRAMlh[8]), NULL(NULL[0]), 
;!
;!    USBConfigureEndpoint@handle	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), 
;!
;!    pBDTEntryEP0OutCurrent	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    pBDTEntryEP0OutNext	PTR volatile struct __BDT size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBTransferOnePacket@data	PTR unsigned char  size(2) Largest target is 64
;!		 -> ToSendDataBuffer(BIGRAMh[64]), ReceivedDataBuffer(BIGRAMll[64]), 
;!
;!    USBTransferOnePacket@handle	PTR volatile struct __BDT size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBEnableEndpoint@p	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(ABS[1]), 
;!
;!    pBDTEntryOut	PTR volatile struct __BDT[2] size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    pBDTEntryIn	PTR volatile struct __BDT[2] size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    S435$pFunc	PTR FTN()void  size(2) Largest target is 0
;!
;!    outPipes.pFunc	PTR FTN()void  size(2) Largest target is 0
;!
;!    S425$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    outPipes.pDst.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S425$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    outPipes.pDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S401$wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    S401$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S401$bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S401$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__memset	PTR void  size(2) Largest target is 32
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(ABS[1]), 
;!
;!    USB_SD_Ptr	const PTR const unsigned char [3] size(2) Largest target is 52
;!		 -> sd002(CODE[46]), sd001(CODE[52]), sd000(CODE[4]), 
;!
;!    USB_CD_Ptr	const PTR const unsigned char [1] size(2) Largest target is 41
;!		 -> configDescriptor1(CODE[41]), 
;!
;!    sp__USBTransferOnePacket	PTR void  size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBOutHandle	PTR volatile void  size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!
;!    USBInHandle	PTR volatile void  size(2) Largest target is 767
;!		 -> RAM(DATA[767]), BDT(BIGRAMll[32]), NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in COMRAM
;!
;!    _SYS_InterruptHigh->_USBDeviceTasks
;!    _USBDeviceTasks->_USBCtrlEPService
;!    i2_USBDeviceInit->i2_memset
;!    _USBWakeFromSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBCtrlTrfSetupHandler->_USBCheckStdRequest
;!    _USBCtrlEPAllowDataStage->_USBCtrlTrfTxService
;!    _USBCheckStdRequest->_USBStdFeatureReqHandler
;!    _USBStdSetCfgHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdFeatureReqHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    i2_SYSTEM_Initialize->i2_ADC_Enable
;!    i2_SYSTEM_Initialize->i2_ADC_SetConfiguration
;!    i2_SYSTEM_Initialize->i2_BUTTON_Enable
;!    i2_SYSTEM_Initialize->i2_LED_Enable
;!    _APP_LEDUpdateUSBStatus->_LED_Off
;!    _APP_LEDUpdateUSBStatus->_LED_On
;!    _APP_DeviceCustomHIDInitialize->_USBEnableEndpoint
;!    _USBEnableEndpoint->_USBConfigureEndpoint
;!    _USBCtrlTrfOutHandler->_USBCtrlTrfRxService
;!    _USBCtrlTrfInHandler->_USBCtrlTrfTxService
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_APP_DeviceCustomHIDTasks
;!    _USBDeviceInit->_memset
;!    _SYSTEM_Initialize->_ADC_Enable
;!    _SYSTEM_Initialize->_ADC_SetConfiguration
;!    _SYSTEM_Initialize->_BUTTON_Enable
;!    _SYSTEM_Initialize->_LED_Enable
;!    _APP_DeviceCustomHIDTasks->_DoCommand
;!    _DoCommand->_USBTransferOnePacket
;!
;!Critical Paths under _SYS_InterruptHigh in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2h
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK2h
;!
;!    None.
;!
;!Critical Paths under _main in BANK2l
;!
;!    None.
;!
;!Critical Paths under _SYS_InterruptHigh in BANK2l
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
;! (0) _main                                                 0     0      0    4802
;!           _APP_DeviceCustomHIDTasks
;!                  _SYSTEM_Initialize
;!                    _USBDeviceAttach
;!                    _USBDeviceDetach
;!                      _USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceInit                                        1     1      0    1132
;!                                              8 BANK0      1     1      0
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (2) _memset                                               8     2      6     930
;!                                              0 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceDetach                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceAttach                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    1     1      0     110
;!                                              1 BANK0      1     1      0
;!                         _ADC_Enable
;!               _ADC_SetConfiguration
;!                      _BUTTON_Enable
;!                         _LED_Enable
;! ---------------------------------------------------------------------------------
;! (2) _LED_Enable                                           1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _BUTTON_Enable                                        1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_SetConfiguration                                 1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Enable                                           1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _APP_DeviceCustomHIDTasks                             5     5      0    3560
;!                                             14 BANK0      5     5      0
;!                      _ADC_Read10bit
;!                   _BUTTON_IsPressed
;!                          _DoCommand
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (2) _DoCommand                                            5     5      0    1791
;!                                              9 BANK0      5     5      0
;!                      _ADC_Read10bit
;!                   _BUTTON_IsPressed
;!                         _LED_Toggle
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (2) _USBTransferOnePacket                                 9     5      4    1633
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! (3) _LED_Toggle                                           1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _BUTTON_IsPressed                                     1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Read10bit                                        6     4      2      69
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _SYS_InterruptHigh                                   14    14      0   29987
;!                                             34 COMRAM    14    14      0
;!                     _USBDeviceTasks
;! ---------------------------------------------------------------------------------
;! (5) _USBDeviceTasks                                       1     1      0   29987
;!                                             33 COMRAM     1     1      0
;!          _USBCtrlEPAllowStatusStage
;!                   _USBCtrlEPService
;!      _USBIncrement1msInternalTimers
;!                    _USBStallHandler
;!                         _USBSuspend
;!                 _USBWakeFromSuspend
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                    i2_USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (6) i2_USBDeviceInit                                      1     1      0     610
;!                                              8 COMRAM     1     1      0
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (6) _USBWakeFromSuspend                                   0     0      0    3944
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBSuspend                                           0     0      0    3944
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBStallHandler                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _USBIncrement1msInternalTimers                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _USBCtrlEPService                                     1     1      0   17499
;!                                             32 COMRAM     1     1      0
;!                _USBCtrlTrfInHandler
;!               _USBCtrlTrfOutHandler
;!             _USBCtrlTrfSetupHandler
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (7) _memcpy                                              10     4      6     387
;!                                              0 COMRAM    10     4      6
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfSetupHandler                               0     0      0   16883
;!                 _USBCheckStdRequest
;!           _USBCtrlEPServiceComplete
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlEPServiceComplete                             0     0      0      92
;!            _USBCtrlEPAllowDataStage
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPAllowDataStage                              0     0      0      92
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCheckStdRequest                                   2     2      0   12847
;!                                             30 COMRAM     2     2      0
;!            _USBStdFeatureReqHandler
;!                _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!                _USBStdSetCfgHandler
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (9) _USBStdSetCfgHandler                                  1     1      0    4442
;!                                             22 COMRAM     1     1      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (7) i2_memset                                             8     2      6     408
;!                                              0 COMRAM     8     2      6
;! ---------------------------------------------------------------------------------
;! (9) _USBStdGetStatusHandler                               3     3      0      46
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (9) _USBStdGetDscHandler                                  2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (9) _USBStdFeatureReqHandler                              8     8      0    4415
;!                                             22 COMRAM     8     8      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USER_USB_CALLBACK_EVENT_HANDLER                      8     2      6    3944
;!                                             14 COMRAM     8     2      6
;!      _APP_DeviceCustomHIDInitialize
;!             _APP_LEDUpdateUSBStatus
;!                 _USBCheckHIDRequest
;!                i2_SYSTEM_Initialize
;! ---------------------------------------------------------------------------------
;! (7) i2_SYSTEM_Initialize                                  1     1      0     110
;!                                              1 COMRAM     1     1      0
;!                       i2_ADC_Enable
;!             i2_ADC_SetConfiguration
;!                    i2_BUTTON_Enable
;!                       i2_LED_Enable
;! ---------------------------------------------------------------------------------
;! (8) i2_LED_Enable                                         1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) i2_BUTTON_Enable                                      1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) i2_ADC_SetConfiguration                               1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) i2_ADC_Enable                                         1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _USBCheckHIDRequest                                   1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _APP_LEDUpdateUSBStatus                               0     0      0      44
;!                            _LED_Off
;!                             _LED_On
;! ---------------------------------------------------------------------------------
;! (8) _LED_On                                               1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) _LED_Off                                              1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _APP_DeviceCustomHIDInitialize                        0     0      0    1098
;!                  _USBEnableEndpoint
;!             i2_USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (8) i2_USBTransferOnePacket                               9     5      4     454
;!                                              0 COMRAM     9     5      4
;! ---------------------------------------------------------------------------------
;! (8) _USBEnableEndpoint                                    6     5      1     644
;!                                              8 COMRAM     6     5      1
;!               _USBConfigureEndpoint
;! ---------------------------------------------------------------------------------
;! (9) _USBConfigureEndpoint                                 8     7      1     400
;!                                              0 COMRAM     8     7      1
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfOutHandler                                 0     0      0     114
;!                _USBCtrlTrfRxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfRxService                                  2     2      0     114
;!                                              0 COMRAM     2     2      0
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPAllowStatusStage                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfInHandler                                  1     1      0     115
;!                                              1 COMRAM     1     1      0
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlTrfTxService                                 1     1      0      92
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _APP_DeviceCustomHIDTasks
;!     _ADC_Read10bit
;!     _BUTTON_IsPressed
;!     _DoCommand
;!       _ADC_Read10bit
;!       _BUTTON_IsPressed
;!       _LED_Toggle
;!       _USBTransferOnePacket
;!     _USBTransferOnePacket
;!   _SYSTEM_Initialize
;!     _ADC_Enable
;!     _ADC_SetConfiguration
;!     _BUTTON_Enable
;!     _LED_Enable
;!   _USBDeviceAttach
;!   _USBDeviceDetach
;!   _USBDeviceInit
;!     _memset
;!
;! _SYS_InterruptHigh (ROOT)
;!   _USBDeviceTasks
;!     _USBCtrlEPAllowStatusStage
;!     _USBCtrlEPService
;!       _USBCtrlTrfInHandler
;!         _USBCtrlTrfTxService
;!       _USBCtrlTrfOutHandler
;!         _USBCtrlTrfRxService
;!           _USBCtrlEPAllowStatusStage
;!       _USBCtrlTrfSetupHandler
;!         _USBCheckStdRequest
;!           _USBStdFeatureReqHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _APP_DeviceCustomHIDInitialize
;!                 _USBEnableEndpoint
;!                   _USBConfigureEndpoint
;!                 i2_USBTransferOnePacket
;!               _APP_LEDUpdateUSBStatus
;!                 _LED_Off
;!                 _LED_On
;!               _USBCheckHIDRequest
;!               i2_SYSTEM_Initialize
;!                 i2_ADC_Enable
;!                 i2_ADC_SetConfiguration
;!                 i2_BUTTON_Enable
;!                 i2_LED_Enable
;!           _USBStdGetDscHandler
;!           _USBStdGetStatusHandler
;!           _USBStdSetCfgHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _APP_DeviceCustomHIDInitialize
;!                 _USBEnableEndpoint
;!                   _USBConfigureEndpoint
;!                 i2_USBTransferOnePacket
;!               _APP_LEDUpdateUSBStatus
;!                 _LED_Off
;!                 _LED_On
;!               _USBCheckHIDRequest
;!               i2_SYSTEM_Initialize
;!                 i2_ADC_Enable
;!                 i2_ADC_SetConfiguration
;!                 i2_BUTTON_Enable
;!                 i2_LED_Enable
;!             i2_memset
;!           _USER_USB_CALLBACK_EVENT_HANDLER
;!             _APP_DeviceCustomHIDInitialize
;!               _USBEnableEndpoint
;!                 _USBConfigureEndpoint
;!               i2_USBTransferOnePacket
;!             _APP_LEDUpdateUSBStatus
;!               _LED_Off
;!               _LED_On
;!             _USBCheckHIDRequest
;!             i2_SYSTEM_Initialize
;!               i2_ADC_Enable
;!               i2_ADC_SetConfiguration
;!               i2_BUTTON_Enable
;!               i2_LED_Enable
;!         _USBCtrlEPServiceComplete
;!           _USBCtrlEPAllowDataStage
;!             _USBCtrlTrfTxService
;!           _USBCtrlEPAllowStatusStage
;!         _USER_USB_CALLBACK_EVENT_HANDLER
;!           _APP_DeviceCustomHIDInitialize
;!             _USBEnableEndpoint
;!               _USBConfigureEndpoint
;!             i2_USBTransferOnePacket
;!           _APP_LEDUpdateUSBStatus
;!             _LED_Off
;!             _LED_On
;!           _USBCheckHIDRequest
;!           i2_SYSTEM_Initialize
;!             i2_ADC_Enable
;!             i2_ADC_SetConfiguration
;!             i2_BUTTON_Enable
;!             i2_LED_Enable
;!       _memcpy
;!     _USBIncrement1msInternalTimers
;!     _USBStallHandler
;!     _USBSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!         _APP_DeviceCustomHIDInitialize
;!           _USBEnableEndpoint
;!             _USBConfigureEndpoint
;!           i2_USBTransferOnePacket
;!         _APP_LEDUpdateUSBStatus
;!           _LED_Off
;!           _LED_On
;!         _USBCheckHIDRequest
;!         i2_SYSTEM_Initialize
;!           i2_ADC_Enable
;!           i2_ADC_SetConfiguration
;!           i2_BUTTON_Enable
;!           i2_LED_Enable
;!     _USBWakeFromSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!         _APP_DeviceCustomHIDInitialize
;!           _USBEnableEndpoint
;!             _USBConfigureEndpoint
;!           i2_USBTransferOnePacket
;!         _APP_LEDUpdateUSBStatus
;!           _LED_Off
;!           _LED_On
;!         _USBCheckHIDRequest
;!         i2_SYSTEM_Initialize
;!           i2_ADC_Enable
;!           i2_ADC_SetConfiguration
;!           i2_BUTTON_Enable
;!           i2_LED_Enable
;!     _USER_USB_CALLBACK_EVENT_HANDLER
;!       _APP_DeviceCustomHIDInitialize
;!         _USBEnableEndpoint
;!           _USBConfigureEndpoint
;!         i2_USBTransferOnePacket
;!       _APP_LEDUpdateUSBStatus
;!         _LED_Off
;!         _LED_On
;!       _USBCheckHIDRequest
;!       i2_SYSTEM_Initialize
;!         i2_ADC_Enable
;!         i2_ADC_SetConfiguration
;!         i2_BUTTON_Enable
;!         i2_LED_Enable
;!     i2_USBDeviceInit
;!       i2_memset
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMll           1FF      0       0      14        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK1           100      0       0       8        0.0%
;!BANK1              100      0       0       5        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0     13      33       4       31.9%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     30      4E       1       82.1%
;!BIGRAMlh            30      0       0      13        0.0%
;!BITBANK2l           30      0       0      10        0.0%
;!BANK2l              30      0       0      11        0.0%
;!BIGRAMh             20      0       0      12        0.0%
;!BITBANK2h           20      0       0       9        0.0%
;!BANK2h              20      0       0       6        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      81       7        0.0%
;!DATA                 0      0      81      15        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "HIDD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_APP_DeviceCustomHIDTasks
;;		_SYSTEM_Initialize
;;		_USBDeviceAttach
;;		_USBDeviceDetach
;;		_USBDeviceInit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"HIDD\main.c"
	line	17
global __ptext0
__ptext0:
psect	text0
	file	"HIDD\main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	19
	
l4053:
;main.c: 19: SYSTEM_Initialize(SYSTEM_STATE_USB_START);
	movlw	(0)&0ffh
	
	call	_SYSTEM_Initialize
	line	21
	
l4055:
;main.c: 21: USBDeviceInit();
	call	_USBDeviceInit	;wreg free
	line	22
	
l4057:
;main.c: 22: USBDeviceAttach();
	call	_USBDeviceAttach	;wreg free
	goto	l4059
	line	24
;main.c: 24: while(1)
	
l18:
	line	33
	
l4059:
;main.c: 25: {
;main.c: 26: ;
;main.c: 33: APP_DeviceCustomHIDTasks();
	call	_APP_DeviceCustomHIDTasks	;wreg free
	line	35
	
l4061:
;main.c: 35: if( ReturnToBL )
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_ReturnToBL))&0ffh,w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l4059
u3140:
	line	37
	
l4063:; BSR set to: 0

;main.c: 36: {
;main.c: 37: USBDeviceDetach();
	call	_USBDeviceDetach	;wreg free
	line	44
# 44 "HIDD\main.c"
reset ;# 
psect	text0
	goto	l4059
	line	45
	
l19:
	goto	l4059
	line	47
	
l20:
	line	24
	goto	l4059
	
l21:
	line	48
	
l22:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USBDeviceInit

;; *************** function _USBDeviceInit *****************
;; Defined at:
;;		line 282 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_memset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	282
global __ptext1
__ptext1:
psect	text1
	file	"HIDD\USB\usb_device.c"
	line	282
	global	__size_of_USBDeviceInit
	__size_of_USBDeviceInit	equ	__end_of_USBDeviceInit-_USBDeviceInit
	
_USBDeviceInit:
;incstack = 0
	opt	stack 19
	line	286
	
l3813:
;usb_device.c: 284: uint8_t i;
;usb_device.c: 286: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,2	;volatile
	line	293
	
l3815:
;usb_device.c: 290: ;
;usb_device.c: 293: {UEIR = 0;};
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3935))&0ffh	;volatile
	line	296
;usb_device.c: 296: {UIR = 0;};
	movlw	low(0)
	movwf	((c:3938)),c	;volatile
	line	299
;usb_device.c: 299: UEP0 = 0;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3923))&0ffh	;volatile
	line	301
	
l3817:; BSR set to: 15

;usb_device.c: 301: memset((void*)&UEP1,0x00,(1));;
	movlb	15	; () banked
		movlw	high(3924)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@p1+1))&0ffh
	movlb	15	; () banked
	movlw	low(3924)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@p1))&0ffh

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@c+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((memset@c))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((memset@n+1))&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((memset@n))&0ffh
	call	_memset	;wreg free
	line	303
	
l3819:
;usb_device.c: 303: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3937)),c	;volatile
	
l3821:
	movlw	low(09Fh)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3931))&0ffh	;volatile
	
l3823:; BSR set to: 15

	movlw	low(07Bh)
	movwf	((c:3936)),c	;volatile
	line	312
	
l3825:; BSR set to: 15

;usb_device.c: 306: ;
;usb_device.c: 309: ;
;usb_device.c: 312: for(i = 0; i < (sizeof(BDT)/sizeof(BDT_ENTRY)); i++)
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	
l3827:; BSR set to: 0

	movlw	(08h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2741
	goto	u2740
u2741:
	goto	l3831
u2740:
	goto	l317
	
l3829:; BSR set to: 0

	goto	l317
	line	313
	
l316:; BSR set to: 0

	line	314
	
l3831:; BSR set to: 0

;usb_device.c: 313: {
;usb_device.c: 314: BDT[i].Val = 0x00;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	04h
	movlb	2	; () banked
	movlw	low(512)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(512)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	312
	
l3833:; BSR set to: 2

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l3835:; BSR set to: 0

	movlw	(08h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2751
	goto	u2750
u2751:
	goto	l3831
u2750:
	
l317:; BSR set to: 0

	line	318
;usb_device.c: 315: }
;usb_device.c: 318: UCONbits.PPBRST = 1;
	bsf	((c:3940)),c,6	;volatile
	line	321
	
l3837:; BSR set to: 0

;usb_device.c: 321: UADDR = 0x00;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3932))&0ffh	;volatile
	line	324
	
l3839:; BSR set to: 15

;usb_device.c: 324: UCONbits.PKTDIS = 0;
	bcf	((c:3940)),c,4	;volatile
	line	327
	
l3841:; BSR set to: 15

;usb_device.c: 327: UCONbits.PPBRST = 0;
	bcf	((c:3940)),c,6	;volatile
	goto	l3843
	line	330
;usb_device.c: 330: do
	
l318:; BSR set to: 15

	line	332
	
l3843:
;usb_device.c: 331: {
;usb_device.c: 332: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3938)),c,(3)&7	;volatile
	line	334
	
l3845:
;usb_device.c: 334: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	335
	
l3847:; BSR set to: 0

;usb_device.c: 335: outPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	336
	
l3849:; BSR set to: 0

;usb_device.c: 336: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	line	337
	
l3851:; BSR set to: 0

;usb_device.c: 337: }while(UIRbits.TRNIF == 1);
	btfsc	((c:3938)),c,3	;volatile
	goto	u2761
	goto	u2760
u2761:
	goto	l3843
u2760:
	goto	l3853
	
l319:; BSR set to: 0

	line	341
	
l3853:; BSR set to: 0

;usb_device.c: 341: USBStatusStageEnabledFlag1 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	342
;usb_device.c: 342: USBStatusStageEnabledFlag2 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	344
;usb_device.c: 344: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	345
;usb_device.c: 345: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	346
;usb_device.c: 346: USBBusIsSuspended = 0;
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	350
;usb_device.c: 350: for(i = 0; i < (uint8_t)(1+1u); i++)
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	
l3855:; BSR set to: 0

	movlw	(02h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2771
	goto	u2770
u2771:
	goto	l3859
u2770:
	goto	l3865
	
l3857:; BSR set to: 0

	goto	l3865
	line	351
	
l320:; BSR set to: 0

	line	352
	
l3859:; BSR set to: 0

;usb_device.c: 351: {
;usb_device.c: 352: pBDTEntryIn[i] = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	353
;usb_device.c: 353: pBDTEntryOut[i] = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	354
;usb_device.c: 354: ep_data_in[i].Val = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	355
;usb_device.c: 355: ep_data_out[i].Val = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	350
	
l3861:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l3863:; BSR set to: 0

	movlw	(02h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u2781
	goto	u2780
u2781:
	goto	l3859
u2780:
	goto	l3865
	
l321:; BSR set to: 0

	line	359
	
l3865:; BSR set to: 0

;usb_device.c: 356: }
;usb_device.c: 359: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
	movlb	2	; () banked
		movlw	high(512+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	2	; () banked
	movlw	low(512+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh

	line	361
	
l3867:; BSR set to: 0

;usb_device.c: 361: UEP0 = 0x06|0x10;
	movlw	low(016h)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3923))&0ffh	;volatile
	line	363
	
l3869:; BSR set to: 15

;usb_device.c: 363: BDT[0].ADR = ((uint16_t)(&SetupPkt));
	movlw	high(0220h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(1+(512+02h))&0ffh	;volatile
	movlw	low(0220h)
	movlb	2	; () banked
	movwf	(0+(512+02h))&0ffh	;volatile
	line	364
	
l3871:; BSR set to: 2

;usb_device.c: 364: BDT[0].CNT = 8;
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+01h))&0ffh	;volatile
	line	365
	
l3873:; BSR set to: 2

;usb_device.c: 365: BDT[0].STAT.Val = 0x00|0x04;
	movlw	low(04h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((512))&0ffh	;volatile
	line	366
	
l3875:; BSR set to: 2

;usb_device.c: 366: BDT[0].STAT.Val |= 0x80;
	movlb	2	; () banked
	movlb	2	; () banked
	bsf	(0+(7/8)+(512))&0ffh,(7)&7	;volatile
	line	369
	
l3877:; BSR set to: 2

;usb_device.c: 369: USBActiveConfiguration = 0;
	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	371
	
l3879:; BSR set to: 2

;usb_device.c: 371: USB1msTickCount = 0;
	movlw	low(0)
	movwf	((c:_USB1msTickCount)),c	;volatile
	movlw	high(0)
	movwf	((c:_USB1msTickCount+1)),c	;volatile
	movlw	low highword(0)
	movwf	((c:_USB1msTickCount+2)),c	;volatile
	movlw	high highword(0)
	movwf	((c:_USB1msTickCount+3)),c	;volatile
	line	372
	
l3881:; BSR set to: 2

;usb_device.c: 372: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	line	375
	
l3883:; BSR set to: 2

;usb_device.c: 375: USBDeviceState = DETACHED_STATE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	376
	
l322:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceInit
	__end_of_USBDeviceInit:
	signat	_USBDeviceInit,88
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "D:\MCUDev13\PIC\xc8\v1.32\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[BANK0 ] PTR void 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), 
;;  c               2    2[BANK0 ] int 
;;  n               2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2    6[BANK0 ] PTR unsigned char 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       6       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"D:\MCUDev13\PIC\xc8\v1.32\sources\common\memset.c"
	line	8
global __ptext2
__ptext2:
psect	text2
	file	"D:\MCUDev13\PIC\xc8\v1.32\sources\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	18
	
l3645:
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(memset@p1+1),(memset@p+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(memset@p1),(memset@p)

	line	19
	goto	l3651
	
l1299:; BSR set to: 0

	line	20
	
l3647:; BSR set to: 0

	movff	(memset@p),fsr2l
	movff	(memset@p+1),fsr2h
	movlb	0	; () banked
	movff	(memset@c),indf2

	
l3649:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((memset@p))&0ffh
	incf	((memset@p+1))&0ffh
	goto	l3651
	
l1298:; BSR set to: 0

	line	19
	
l3651:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((memset@n))&0ffh
	btfss	status,0
	decf	((memset@n+1))&0ffh
	movlb	0	; () banked
	incf	((memset@n))&0ffh,w
	btfsc	status,2
	incf ((memset@n+1))&0ffh,w

	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3647
u2590:
	goto	l1301
	
l1300:; BSR set to: 0

	line	22
;	Return value of _memset is never used
	
l1301:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12410
	global	_USBDeviceDetach

;; *************** function _USBDeviceDetach *****************
;; Defined at:
;;		line 1252 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	1252
global __ptext3
__ptext3:
psect	text3
	file	"HIDD\USB\usb_device.c"
	line	1252
	global	__size_of_USBDeviceDetach
	__size_of_USBDeviceDetach	equ	__end_of_USBDeviceDetach-_USBDeviceDetach
	
_USBDeviceDetach:; BSR set to: 0

;incstack = 0
	opt	stack 20
	line	1262
	
l3947:
;usb_device.c: 1260: {
;usb_device.c: 1262: UCON = 0;
	movlw	low(0)
	movwf	((c:3940)),c	;volatile
	line	1265
;usb_device.c: 1265: UIE = 0;
	movlw	low(0)
	movwf	((c:3936)),c	;volatile
	line	1268
;usb_device.c: 1268: USBDeviceState = DETACHED_STATE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	l372
	line	1296
	
l3949:; BSR set to: 0

	line	1317
;usb_device.c: 1296: return;
	
l372:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceDetach
	__end_of_USBDeviceDetach:
	signat	_USBDeviceDetach,88
	global	_USBDeviceAttach

;; *************** function _USBDeviceAttach *****************
;; Defined at:
;;		line 1357 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	1357
global __ptext4
__ptext4:
psect	text4
	file	"HIDD\USB\usb_device.c"
	line	1357
	global	__size_of_USBDeviceAttach
	__size_of_USBDeviceAttach	equ	__end_of_USBDeviceAttach-_USBDeviceAttach
	
_USBDeviceAttach:; BSR set to: 0

;incstack = 0
	opt	stack 20
	line	1360
	
l3885:
;usb_device.c: 1361: {
;usb_device.c: 1362: if(1 == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeviceState))&0ffh	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l380
u2790:
	line	1365
	
l3887:; BSR set to: 0

;usb_device.c: 1363: {
;usb_device.c: 1365: UCON = 0;
	movlw	low(0)
	movwf	((c:3940)),c	;volatile
	line	1368
;usb_device.c: 1368: UIE = 0;
	movlw	low(0)
	movwf	((c:3936)),c	;volatile
	line	1372
;usb_device.c: 1372: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3937)),c	;volatile
	movlw	low(09Fh)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3931))&0ffh	;volatile
	movlw	low(07Bh)
	movwf	((c:3936)),c	;volatile
	line	1374
	
l3889:; BSR set to: 15

;usb_device.c: 1374: {RCONbits.IPEN = 1;IPR2bits.USBIP = 1;PIE2bits.USBIE = 1;INTCONbits.GIEH = 1;};
	bsf	((c:4048)),c,7	;volatile
	
l3891:; BSR set to: 15

	bsf	((c:4002)),c,2	;volatile
	
l3893:; BSR set to: 15

	bsf	((c:4000)),c,2	;volatile
	
l3895:; BSR set to: 15

	bsf	((c:4082)),c,7	;volatile
	line	1377
;usb_device.c: 1377: while(!UCONbits.USBEN){UCONbits.USBEN = 1;}
	goto	l377
	
l378:
	bsf	((c:3940)),c,3	;volatile
	
l377:
	btfss	((c:3940)),c,3	;volatile
	goto	u2801
	goto	u2800
u2801:
	goto	l378
u2800:
	goto	l3897
	
l379:
	line	1380
	
l3897:
;usb_device.c: 1380: USBDeviceState = ATTACHED_STATE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	l380
	line	1385
	
l376:; BSR set to: 0

	goto	l380
	line	1386
	
l375:; BSR set to: 0

	line	1387
	
l380:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceAttach
	__end_of_USBDeviceAttach:
	signat	_USBDeviceAttach,88
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 38 in file "HIDD\system.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     enum E4601
;; Auto vars:     Size  Location     Type
;;  state           1    1[BANK0 ] enum E4601
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_ADC_Enable
;;		_ADC_SetConfiguration
;;		_BUTTON_Enable
;;		_LED_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"HIDD\system.c"
	line	38
global __ptext5
__ptext5:
psect	text5
	file	"HIDD\system.c"
	line	38
	global	__size_of_SYSTEM_Initialize
	__size_of_SYSTEM_Initialize	equ	__end_of_SYSTEM_Initialize-_SYSTEM_Initialize
	
_SYSTEM_Initialize:; BSR set to: 0

;incstack = 0
	opt	stack 19
;SYSTEM_Initialize@state stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((SYSTEM_Initialize@state))&0ffh
	line	40
	
l3795:; BSR set to: 0

;system.c: 40: switch(state)
	goto	l3811
	line	42
;system.c: 41: {
;system.c: 42: case SYSTEM_STATE_USB_START:
	
l128:; BSR set to: 0

	line	44
	
l3797:; BSR set to: 0

;system.c: 44: TRISB &= 0x7F;
	bcf	(0+(7/8)+(c:3987)),c,(7)&7	;volatile
	line	45
;system.c: 45: LATB |= 0x80;
	bsf	(0+(7/8)+(c:3978)),c,(7)&7	;volatile
	line	47
	
l3799:; BSR set to: 0

;system.c: 47: LED_Enable(LED_D1);
	movlw	(01h)&0ffh
	
	call	_LED_Enable
	line	48
	
l3801:
;system.c: 48: LED_Enable(LED_D2);
	movlw	(02h)&0ffh
	
	call	_LED_Enable
	line	50
	
l3803:
;system.c: 50: BUTTON_Enable(BUTTON_S1);
	movlw	(01h)&0ffh
	
	call	_BUTTON_Enable
	line	52
	
l3805:
;system.c: 52: ADC_SetConfiguration(ADC_CONFIGURATION_DEFAULT);
	movlw	(0)&0ffh
	
	call	_ADC_SetConfiguration
	line	53
	
l3807:
;system.c: 53: ADC_Enable(ADC_CHANNEL_10);
	movlw	(0Ah)&0ffh
	
	call	_ADC_Enable
	line	54
;system.c: 54: break;
	goto	l132
	line	56
;system.c: 56: case SYSTEM_STATE_USB_SUSPEND:
	
l130:
	line	57
;system.c: 57: break;
	goto	l132
	line	59
;system.c: 59: case SYSTEM_STATE_USB_RESUME:
	
l131:
	line	60
;system.c: 60: break;
	goto	l132
	line	61
	
l3809:
;system.c: 61: }
	goto	l132
	line	40
	
l127:
	
l3811:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((SYSTEM_Initialize@state))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l3797
	xorlw	1^0	; case 1
	skipnz
	goto	l132
	xorlw	2^1	; case 2
	skipnz
	goto	l132
	goto	l132

	line	61
	
l129:; BSR set to: 0

	line	62
	
l132:
	return
	opt stack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,4216
	global	_LED_Enable

;; *************** function _LED_Enable *****************
;; Defined at:
;;		line 220 in file "BSP\leds.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     enum E2
;; Auto vars:     Size  Location     Type
;;  led             1    0[BANK0 ] enum E2
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"BSP\leds.c"
	line	220
global __ptext6
__ptext6:
psect	text6
	file	"BSP\leds.c"
	line	220
	global	__size_of_LED_Enable
	__size_of_LED_Enable	equ	__end_of_LED_Enable-_LED_Enable
	
_LED_Enable:
;incstack = 0
	opt	stack 19
;LED_Enable@led stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((LED_Enable@led))&0ffh
	line	222
	
l3619:; BSR set to: 0

;leds.c: 222: switch(led)
	goto	l3623
	line	224
;leds.c: 223: {
;leds.c: 224: case LED_D1:
	
l723:; BSR set to: 0

	line	225
;leds.c: 225: TRISCbits.TRISC0 = 0;
	bcf	((c:3988)),c,0	;volatile
	line	226
;leds.c: 226: break;
	goto	l729
	line	228
;leds.c: 228: case LED_D2:
	
l725:; BSR set to: 0

	line	229
;leds.c: 229: TRISCbits.TRISC1 = 0;
	bcf	((c:3988)),c,1	;volatile
	line	230
;leds.c: 230: break;
	goto	l729
	line	232
;leds.c: 232: case LED_D3:
	
l726:; BSR set to: 0

	line	233
;leds.c: 233: TRISCbits.TRISC2 = 0;
	bcf	((c:3988)),c,2	;volatile
	line	234
;leds.c: 234: break;
	goto	l729
	line	236
;leds.c: 236: case LED_D4:
	
l727:; BSR set to: 0

	line	237
;leds.c: 237: TRISCbits.TRISC3 = 0;
	bcf	((c:3988)),c,3	;volatile
	line	238
;leds.c: 238: break;
	goto	l729
	line	240
;leds.c: 240: case LED_NONE:
	
l728:; BSR set to: 0

	line	241
;leds.c: 241: break;
	goto	l729
	line	242
	
l3621:; BSR set to: 0

;leds.c: 242: }
	goto	l729
	line	222
	
l722:; BSR set to: 0

	
l3623:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((LED_Enable@led))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l729
	xorlw	1^0	; case 1
	skipnz
	goto	l723
	xorlw	2^1	; case 2
	skipnz
	goto	l725
	xorlw	3^2	; case 3
	skipnz
	goto	l726
	xorlw	4^3	; case 4
	skipnz
	goto	l727
	goto	l729

	line	242
	
l724:; BSR set to: 0

	line	243
	
l729:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_LED_Enable
	__end_of_LED_Enable:
	signat	_LED_Enable,4216
	global	_BUTTON_Enable

;; *************** function _BUTTON_Enable *****************
;; Defined at:
;;		line 85 in file "BSP\buttons.c"
;; Parameters:    Size  Location     Type
;;  button          1    wreg     enum E4576
;; Auto vars:     Size  Location     Type
;;  button          1    0[BANK0 ] enum E4576
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"BSP\buttons.c"
	line	85
global __ptext7
__ptext7:
psect	text7
	file	"BSP\buttons.c"
	line	85
	global	__size_of_BUTTON_Enable
	__size_of_BUTTON_Enable	equ	__end_of_BUTTON_Enable-_BUTTON_Enable
	
_BUTTON_Enable:; BSR set to: 0

;incstack = 0
	opt	stack 19
;BUTTON_Enable@button stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((BUTTON_Enable@button))&0ffh
	line	87
	
l3625:; BSR set to: 0

;buttons.c: 87: switch(button)
	goto	l3629
	line	89
;buttons.c: 88: {
;buttons.c: 89: case BUTTON_S1:
	
l672:; BSR set to: 0

	line	90
;buttons.c: 90: break;
	goto	l675
	line	92
;buttons.c: 92: case BUTTON_NONE:
	
l674:; BSR set to: 0

	line	93
;buttons.c: 93: break;
	goto	l675
	line	94
	
l3627:; BSR set to: 0

;buttons.c: 94: }
	goto	l675
	line	87
	
l671:; BSR set to: 0

	
l3629:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((BUTTON_Enable@button))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l675
	xorlw	1^0	; case 1
	skipnz
	goto	l675
	goto	l675

	line	94
	
l673:; BSR set to: 0

	line	95
	
l675:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_BUTTON_Enable
	__end_of_BUTTON_Enable:
	signat	_BUTTON_Enable,4216
	global	_ADC_SetConfiguration

;; *************** function _ADC_SetConfiguration *****************
;; Defined at:
;;		line 75 in file "BSP\adc.c"
;; Parameters:    Size  Location     Type
;;  configuratio    1    wreg     enum E33
;; Auto vars:     Size  Location     Type
;;  configuratio    1    0[BANK0 ] enum E33
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"BSP\adc.c"
	line	75
global __ptext8
__ptext8:
psect	text8
	file	"BSP\adc.c"
	line	75
	global	__size_of_ADC_SetConfiguration
	__size_of_ADC_SetConfiguration	equ	__end_of_ADC_SetConfiguration-_ADC_SetConfiguration
	
_ADC_SetConfiguration:; BSR set to: 0

;incstack = 0
	opt	stack 19
;ADC_SetConfiguration@configuration stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ADC_SetConfiguration@configuration))&0ffh
	line	77
	
l3631:; BSR set to: 0

;adc.c: 77: if(configuration == ADC_CONFIGURATION_DEFAULT)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((ADC_SetConfiguration@configuration))&0ffh
	goto	u2581
	goto	u2580
u2581:
	goto	l659
u2580:
	line	79
	
l3633:; BSR set to: 0

;adc.c: 78: {
;adc.c: 79: ADCON0=0x29;
	movlw	low(029h)
	movwf	((c:4034)),c	;volatile
	line	80
;adc.c: 80: ADCON1=0;
	movlw	low(0)
	movwf	((c:4033)),c	;volatile
	line	81
;adc.c: 81: ADCON2=0x3E;
	movlw	low(03Eh)
	movwf	((c:4032)),c	;volatile
	line	82
	
l3635:; BSR set to: 0

;adc.c: 82: ADCON2bits.ADFM = 1;
	bsf	((c:4032)),c,7	;volatile
	goto	l659
	line	84
	
l3637:; BSR set to: 0

;adc.c: 84: return 1;
;	Return value of _ADC_SetConfiguration is never used
	goto	l659
	line	85
	
l658:; BSR set to: 0

	line	88
;adc.c: 85: }
;adc.c: 87: return 0;
;	Return value of _ADC_SetConfiguration is never used
	
l659:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_ADC_SetConfiguration
	__end_of_ADC_SetConfiguration:
	signat	_ADC_SetConfiguration,4217
	global	_ADC_Enable

;; *************** function _ADC_Enable *****************
;; Defined at:
;;		line 61 in file "BSP\adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     enum E30
;; Auto vars:     Size  Location     Type
;;  channel         1    0[BANK0 ] enum E30
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	61
global __ptext9
__ptext9:
psect	text9
	file	"BSP\adc.c"
	line	61
	global	__size_of_ADC_Enable
	__size_of_ADC_Enable	equ	__end_of_ADC_Enable-_ADC_Enable
	
_ADC_Enable:; BSR set to: 0

;incstack = 0
	opt	stack 19
;ADC_Enable@channel stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ADC_Enable@channel))&0ffh
	line	63
	
l3639:; BSR set to: 0

;adc.c: 63: switch(channel)
	goto	l3643
	line	65
;adc.c: 64: {
;adc.c: 65: case ADC_CHANNEL_10:
	
l652:; BSR set to: 0

	line	66
;adc.c: 66: TRISBbits.TRISB4 = 1;
	bsf	((c:3987)),c,4	;volatile
	line	67
;adc.c: 67: ANSELHbits.ANS10 = 1;
	bsf	((c:3967)),c,2	;volatile
	line	68
;adc.c: 68: return 1;
;	Return value of _ADC_Enable is never used
	goto	l653
	line	70
;adc.c: 70: default:
	
l654:; BSR set to: 0

	line	71
;adc.c: 71: return 0;
;	Return value of _ADC_Enable is never used
	goto	l653
	line	72
	
l3641:; BSR set to: 0

;adc.c: 72: }
	goto	l653
	line	63
	
l651:; BSR set to: 0

	
l3643:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ADC_Enable@channel))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 10 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	10^0	; case 10
	skipnz
	goto	l652
	goto	l653

	line	72
	
l655:; BSR set to: 0

	line	73
	
l653:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_ADC_Enable
	__end_of_ADC_Enable:
	signat	_ADC_Enable,4217
	global	_APP_DeviceCustomHIDTasks

;; *************** function _APP_DeviceCustomHIDTasks *****************
;; Defined at:
;;		line 97 in file "HIDD\app_device_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pot             2   17[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_ADC_Read10bit
;;		_BUTTON_IsPressed
;;		_DoCommand
;;		_USBTransferOnePacket
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"HIDD\app_device_custom_hid.c"
	line	97
global __ptext10
__ptext10:
psect	text10
	file	"HIDD\app_device_custom_hid.c"
	line	97
	global	__size_of_APP_DeviceCustomHIDTasks
	__size_of_APP_DeviceCustomHIDTasks	equ	__end_of_APP_DeviceCustomHIDTasks-_APP_DeviceCustomHIDTasks
	
_APP_DeviceCustomHIDTasks:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	99
	
l3899:
;app_device_custom_hid.c: 99: if( USBDeviceState < CONFIGURED_STATE )
	movlw	(020h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_USBDeviceState))&0ffh,w	;volatile
	btfsc	status,0
	goto	u2811
	goto	u2810
u2811:
	goto	l62
u2810:
	goto	l63
	line	101
	
l3901:; BSR set to: 0

;app_device_custom_hid.c: 100: {
;app_device_custom_hid.c: 101: return;
	goto	l63
	line	102
	
l62:; BSR set to: 0

	line	104
;app_device_custom_hid.c: 102: }
;app_device_custom_hid.c: 104: if( UCONbits.SUSPND== 1 )
	btfss	((c:3940)),c,1	;volatile
	goto	u2821
	goto	u2820
u2821:
	goto	l3905
u2820:
	goto	l63
	line	106
	
l3903:; BSR set to: 0

;app_device_custom_hid.c: 105: {
;app_device_custom_hid.c: 106: return;
	goto	l63
	line	107
	
l64:; BSR set to: 0

	line	109
	
l3905:; BSR set to: 0

;app_device_custom_hid.c: 107: }
;app_device_custom_hid.c: 109: if(((USBOutHandle != 0x0000) && ((*(volatile uint8_t*)USBOutHandle & 0x80) != 0x00)) == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBOutHandle+1))&0ffh,w
	iorwf ((_USBOutHandle))&0ffh,w

	btfsc	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3943
u2830:
	
l3907:; BSR set to: 0

	movff	(_USBOutHandle),fsr2l
	movff	(_USBOutHandle+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_APP_DeviceCustomHIDTasks+0+0)&0ffh
	movlb	0	; () banked
	
	btfsc	((??_APP_DeviceCustomHIDTasks+0+0))&0ffh,(7)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l63
u2840:
	goto	l3943
	
l67:; BSR set to: 0

	line	112
;app_device_custom_hid.c: 110: {
;app_device_custom_hid.c: 112: switch(ReceivedDataBuffer[0])
	goto	l3943
	line	114
;app_device_custom_hid.c: 113: {
;app_device_custom_hid.c: 114: case COMMAND_Read:
	
l69:; BSR set to: 0

	line	117
	
l3909:
;app_device_custom_hid.c: 117: DoCommand();
	call	_DoCommand	;wreg free
	line	119
;app_device_custom_hid.c: 119: break;
	goto	l3945
	line	123
;app_device_custom_hid.c: 123: case COMMAND_RETURN:
	
l71:
	line	124
	
l3911:
;app_device_custom_hid.c: 124: ReturnToBL = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_ReturnToBL))&0ffh
	line	125
;app_device_custom_hid.c: 125: break;
	goto	l3945
	line	127
;app_device_custom_hid.c: 127: case COMMAND_TOGGLE_LED:
	
l72:; BSR set to: 0

	line	129
;app_device_custom_hid.c: 129: break;
	goto	l3945
	line	131
;app_device_custom_hid.c: 131: case COMMAND_GET_BUTTON_STATUS:
	
l73:; BSR set to: 0

	line	133
	
l3913:
;app_device_custom_hid.c: 133: if(!((USBInHandle != 0x0000) && ((*(volatile uint8_t*)USBInHandle & 0x80) != 0x00)))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBInHandle+1))&0ffh,w
	iorwf ((_USBInHandle))&0ffh,w

	btfsc	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l3917
u2850:
	
l3915:; BSR set to: 0

	movff	(_USBInHandle),fsr2l
	movff	(_USBInHandle+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_APP_DeviceCustomHIDTasks+0+0)&0ffh
	movlb	0	; () banked
	
	btfsc	((??_APP_DeviceCustomHIDTasks+0+0))&0ffh,(7)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l3945
u2860:
	goto	l3917
	
l76:; BSR set to: 0

	line	135
	
l3917:; BSR set to: 0

;app_device_custom_hid.c: 134: {
;app_device_custom_hid.c: 135: ToSendDataBuffer[0] = 0x81;
	movlw	low(081h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((672))&0ffh
	line	136
	
l3919:; BSR set to: 2

;app_device_custom_hid.c: 136: if(BUTTON_IsPressed(BUTTON_S1) == 0)
	movlw	(01h)&0ffh
	
	call	_BUTTON_IsPressed
	iorlw	0
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l3923
u2870:
	line	138
	
l3921:
;app_device_custom_hid.c: 137: {
;app_device_custom_hid.c: 138: ToSendDataBuffer[1] = 0x01;
	movlw	low(01h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(672+01h))&0ffh
	line	139
;app_device_custom_hid.c: 139: }
	goto	l3925
	line	140
	
l77:; BSR set to: 2

	line	142
	
l3923:
;app_device_custom_hid.c: 140: else
;app_device_custom_hid.c: 141: {
;app_device_custom_hid.c: 142: ToSendDataBuffer[1] = 0x00;
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(672+01h))&0ffh
	goto	l3925
	line	143
	
l78:; BSR set to: 2

	line	145
	
l3925:; BSR set to: 2

;app_device_custom_hid.c: 143: }
;app_device_custom_hid.c: 145: USBInHandle = USBTransferOnePacket(1,1,(uint8_t*)&ToSendDataBuffer[0],64);
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
	movlb	2	; () banked
		movlw	high(672)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh
	movlb	2	; () banked
	movlw	low(672)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_USBInHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_USBInHandle+1)
	goto	l3945
	line	146
	
l74:; BSR set to: 0

	line	147
;app_device_custom_hid.c: 146: }
;app_device_custom_hid.c: 147: break;
	goto	l3945
	line	149
;app_device_custom_hid.c: 149: case COMMAND_READ_POTENTIOMETER:
	
l79:; BSR set to: 0

	line	154
	
l3927:
;app_device_custom_hid.c: 150: {
;app_device_custom_hid.c: 151: uint16_t pot;
;app_device_custom_hid.c: 154: if(!((USBInHandle != 0x0000) && ((*(volatile uint8_t*)USBInHandle & 0x80) != 0x00)))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBInHandle+1))&0ffh,w
	iorwf ((_USBInHandle))&0ffh,w

	btfsc	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l3931
u2880:
	
l3929:; BSR set to: 0

	movff	(_USBInHandle),fsr2l
	movff	(_USBInHandle+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_APP_DeviceCustomHIDTasks+0+0)&0ffh
	movlb	0	; () banked
	
	btfsc	((??_APP_DeviceCustomHIDTasks+0+0))&0ffh,(7)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l3945
u2890:
	goto	l3931
	
l82:; BSR set to: 0

	line	161
	
l3931:; BSR set to: 0

;app_device_custom_hid.c: 155: {
;app_device_custom_hid.c: 161: pot = ADC_Read10bit(ADC_CHANNEL_10);
	movlw	(0Ah)&0ffh
	
	call	_ADC_Read10bit
	movlb	0	; () banked
	movff	0+?_ADC_Read10bit,(APP_DeviceCustomHIDTasks@pot)
	movlb	0	; () banked
	movff	1+?_ADC_Read10bit,(APP_DeviceCustomHIDTasks@pot+1)
	line	163
	
l3933:; BSR set to: 0

;app_device_custom_hid.c: 163: ToSendDataBuffer[0] = 0x37;
	movlw	low(037h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((672))&0ffh
	line	164
	
l3935:; BSR set to: 2

;app_device_custom_hid.c: 164: ToSendDataBuffer[1] = (uint8_t)pot;
	movff	(APP_DeviceCustomHIDTasks@pot),0+(672+01h)
	line	165
	
l3937:; BSR set to: 2

;app_device_custom_hid.c: 165: ToSendDataBuffer[2] = pot >> 8;
	movlb	0	; () banked
	movff	(APP_DeviceCustomHIDTasks@pot+1),??_APP_DeviceCustomHIDTasks+0+0
	movff	??_APP_DeviceCustomHIDTasks+0+0,??_APP_DeviceCustomHIDTasks+1+0
	movlb	0	; () banked
	clrf	(??_APP_DeviceCustomHIDTasks+1+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_APP_DeviceCustomHIDTasks+1+0)&0ffh,w
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(672+02h))&0ffh
	line	169
	
l3939:; BSR set to: 2

;app_device_custom_hid.c: 169: USBInHandle = USBTransferOnePacket(1,1,(uint8_t*)&ToSendDataBuffer[0],64);
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
	movlb	2	; () banked
		movlw	high(672)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh
	movlb	2	; () banked
	movlw	low(672)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_USBInHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_USBInHandle+1)
	goto	l3945
	line	170
	
l80:; BSR set to: 0

	line	172
;app_device_custom_hid.c: 170: }
;app_device_custom_hid.c: 171: }
;app_device_custom_hid.c: 172: break;
	goto	l3945
	line	173
	
l3941:; BSR set to: 0

;app_device_custom_hid.c: 173: }
	goto	l3945
	line	112
	
l68:; BSR set to: 0

	
l3943:; BSR set to: 0

	movlb	2	; () banked
	movlb	2	; () banked
	movf	((608))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 55 to 144
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	55^0	; case 55
	skipnz
	goto	l3927
	xorlw	128^55	; case 128
	skipnz
	goto	l3945
	xorlw	129^128	; case 129
	skipnz
	goto	l3913
	xorlw	130^129	; case 130
	skipnz
	goto	l3911
	xorlw	144^130	; case 144
	skipnz
	goto	l3909
	goto	l3945

	line	173
	
l70:; BSR set to: 2

	line	176
	
l3945:
;app_device_custom_hid.c: 176: USBOutHandle = USBTransferOnePacket(1,0,(uint8_t*)&ReceivedDataBuffer,64);
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
	movlb	2	; () banked
		movlw	high(608)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh
	movlb	2	; () banked
	movlw	low(608)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_USBOutHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_USBOutHandle+1)
	goto	l63
	line	177
	
l65:; BSR set to: 0

	line	178
	
l63:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_APP_DeviceCustomHIDTasks
	__end_of_APP_DeviceCustomHIDTasks:
	signat	_APP_DeviceCustomHIDTasks,88
	global	_DoCommand

;; *************** function _DoCommand *****************
;; Defined at:
;;		line 57 in file "HIDD\app_device_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pot             2   12[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_ADC_Read10bit
;;		_BUTTON_IsPressed
;;		_LED_Toggle
;;		_USBTransferOnePacket
;; This function is called by:
;;		_APP_DeviceCustomHIDTasks
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	57
global __ptext11
__ptext11:
psect	text11
	file	"HIDD\app_device_custom_hid.c"
	line	57
	global	__size_of_DoCommand
	__size_of_DoCommand	equ	__end_of_DoCommand-_DoCommand
	
_DoCommand:; BSR set to: 0

;incstack = 0
	opt	stack 18
	line	59
	
l3591:
;app_device_custom_hid.c: 59: ToSendDataBuffer[0] = COMMAND_Read;
	movlw	low(090h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((672))&0ffh
	line	61
	
l3593:; BSR set to: 2

;app_device_custom_hid.c: 61: if( ReceivedDataBuffer[ 1 ] & 0x01 )
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(608+01h))&0ffh,(0)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l3597
u2530:
	line	63
	
l3595:; BSR set to: 2

;app_device_custom_hid.c: 62: {
;app_device_custom_hid.c: 63: LED_Toggle(LED_D2);
	movlw	(02h)&0ffh
	
	call	_LED_Toggle
	goto	l3597
	line	65
	
l52:
	line	67
	
l3597:
;app_device_custom_hid.c: 65: }
;app_device_custom_hid.c: 67: if( ReceivedDataBuffer[ 1 ] & 0x02 )
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(608+01h))&0ffh,(1)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l3601
u2540:
	line	69
	
l3599:; BSR set to: 2

;app_device_custom_hid.c: 68: {
;app_device_custom_hid.c: 69: ReturnToBL = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_ReturnToBL))&0ffh
	goto	l3601
	line	71
	
l53:; BSR set to: 0

	line	74
	
l3601:
;app_device_custom_hid.c: 71: }
;app_device_custom_hid.c: 74: if(!((USBInHandle != 0x0000) && ((*(volatile uint8_t*)USBInHandle & 0x80) != 0x00)))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBInHandle+1))&0ffh,w
	iorwf ((_USBInHandle))&0ffh,w

	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3605
u2550:
	
l3603:; BSR set to: 0

	movff	(_USBInHandle),fsr2l
	movff	(_USBInHandle+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_DoCommand+0+0)&0ffh
	movlb	0	; () banked
	
	btfsc	((??_DoCommand+0+0))&0ffh,(7)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3617
u2560:
	goto	l3605
	
l56:; BSR set to: 0

	line	76
	
l3605:; BSR set to: 0

;app_device_custom_hid.c: 75: {
;app_device_custom_hid.c: 76: if(BUTTON_IsPressed(BUTTON_S1) == 0)
	movlw	(01h)&0ffh
	
	call	_BUTTON_IsPressed
	iorlw	0
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3609
u2570:
	line	78
	
l3607:
;app_device_custom_hid.c: 77: {
;app_device_custom_hid.c: 78: ToSendDataBuffer[1] = 0x01;
	movlw	low(01h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(672+01h))&0ffh
	line	79
;app_device_custom_hid.c: 79: }
	goto	l3611
	line	80
	
l57:; BSR set to: 2

	line	82
	
l3609:
;app_device_custom_hid.c: 80: else
;app_device_custom_hid.c: 81: {
;app_device_custom_hid.c: 82: ToSendDataBuffer[1] = 0x00;
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(672+01h))&0ffh
	goto	l3611
	line	83
	
l58:; BSR set to: 2

	line	88
	
l3611:; BSR set to: 2

;app_device_custom_hid.c: 83: }
;app_device_custom_hid.c: 86: uint16_t pot;
;app_device_custom_hid.c: 88: pot = ADC_Read10bit(ADC_CHANNEL_10);
	movlw	(0Ah)&0ffh
	
	call	_ADC_Read10bit
	movlb	0	; () banked
	movff	0+?_ADC_Read10bit,(DoCommand@pot)
	movlb	0	; () banked
	movff	1+?_ADC_Read10bit,(DoCommand@pot+1)
	line	90
	
l3613:; BSR set to: 0

;app_device_custom_hid.c: 90: ToSendDataBuffer[2] = (uint8_t)pot;
	movff	(DoCommand@pot),0+(672+02h)
	line	91
	
l3615:; BSR set to: 0

;app_device_custom_hid.c: 91: ToSendDataBuffer[3] = pot >> 8;
	movlb	0	; () banked
	movff	(DoCommand@pot+1),??_DoCommand+0+0
	movff	??_DoCommand+0+0,??_DoCommand+1+0
	movlb	0	; () banked
	clrf	(??_DoCommand+1+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_DoCommand+1+0)&0ffh,w
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(672+03h))&0ffh
	goto	l3617
	line	92
	
l54:; BSR set to: 2

	line	94
	
l3617:
;app_device_custom_hid.c: 92: }
;app_device_custom_hid.c: 94: USBInHandle = USBTransferOnePacket(1,1,(uint8_t*)&ToSendDataBuffer[0],64);
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@dir))&0ffh
	movlb	2	; () banked
		movlw	high(672)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data+1))&0ffh
	movlb	2	; () banked
	movlw	low(672)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@data))&0ffh

	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@len))&0ffh
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_USBInHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_USBInHandle+1)
	line	95
	
l59:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_DoCommand
	__end_of_DoCommand:
	signat	_DoCommand,88
	global	_USBTransferOnePacket

;; *************** function _USBTransferOnePacket *****************
;; Defined at:
;;		line 1000 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1    0[BANK0 ] unsigned char 
;;  data            2    1[BANK0 ] PTR unsigned char 
;;		 -> ToSendDataBuffer(64), ReceivedDataBuffer(64), 
;;  len             1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1    6[BANK0 ] unsigned char 
;;  handle          2    7[BANK0 ] PTR volatile struct __BD
;;		 -> RAM(767), BDT(32), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DoCommand
;;		_APP_DeviceCustomHIDTasks
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	1000
global __ptext12
__ptext12:
psect	text12
	file	"HIDD\USB\usb_device.c"
	line	1000
	global	__size_of_USBTransferOnePacket
	__size_of_USBTransferOnePacket	equ	__end_of_USBTransferOnePacket-_USBTransferOnePacket
	
_USBTransferOnePacket:; BSR set to: 0

;incstack = 0
	opt	stack 19
;USBTransferOnePacket@ep stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBTransferOnePacket@ep))&0ffh
	line	1005
	
l3429:; BSR set to: 0

;usb_device.c: 1002: volatile BDT_ENTRY* handle;
;usb_device.c: 1005: if(dir != 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	btfsc	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l3433
u2390:
	line	1008
	
l3431:; BSR set to: 0

;usb_device.c: 1006: {
;usb_device.c: 1008: handle = pBDTEntryIn[ep];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movff	postinc2,(USBTransferOnePacket@handle)
	movlb	0	; () banked
	movff	postdec2,(USBTransferOnePacket@handle+1)
	line	1009
;usb_device.c: 1009: }
	goto	l3435
	line	1010
	
l355:; BSR set to: 0

	line	1013
	
l3433:; BSR set to: 0

;usb_device.c: 1010: else
;usb_device.c: 1011: {
;usb_device.c: 1013: handle = pBDTEntryOut[ep];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movff	postinc2,(USBTransferOnePacket@handle)
	movlb	0	; () banked
	movff	postdec2,(USBTransferOnePacket@handle+1)
	goto	l3435
	line	1014
	
l356:; BSR set to: 0

	line	1018
	
l3435:; BSR set to: 0

;usb_device.c: 1014: }
;usb_device.c: 1018: if(handle == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	iorwf ((USBTransferOnePacket@handle))&0ffh,w

	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l3441
u2400:
	line	1020
	
l3437:; BSR set to: 0

;usb_device.c: 1019: {
;usb_device.c: 1020: return 0;
		movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh

	goto	l358
	
l3439:; BSR set to: 0

	goto	l358
	line	1021
	
l357:; BSR set to: 0

	line	1034
	
l3441:; BSR set to: 0

;usb_device.c: 1021: }
;usb_device.c: 1034: handle->ADR = ((uint16_t)(data));
	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movlb	0	; () banked
	movff	(USBTransferOnePacket@data),postinc2
	movlb	0	; () banked
	movff	(USBTransferOnePacket@data+1),postdec2
	line	1035
;usb_device.c: 1035: handle->CNT = len;
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movlb	0	; () banked
	movff	(USBTransferOnePacket@len),indf2

	line	1036
	
l3443:; BSR set to: 0

;usb_device.c: 1036: handle->STAT.Val &= 0x40;
	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1037
	
l3445:; BSR set to: 0

;usb_device.c: 1037: handle->STAT.Val |= (0x08 & 0x08);
	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1038
	
l3447:; BSR set to: 0

;usb_device.c: 1038: handle->STAT.Val |= 0x80;
	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1041
	
l3449:; BSR set to: 0

;usb_device.c: 1041: if(dir != 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	btfsc	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l3453
u2410:
	line	1044
	
l3451:; BSR set to: 0

;usb_device.c: 1042: {
;usb_device.c: 1044: pBDTEntryIn[ep] = (BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[ep]) ^ 0x0004);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_USBTransferOnePacket+0+0
	movff	postdec2,??_USBTransferOnePacket+0+0+1
	movlw	04h
	movlb	0	; () banked
	xorwf	(??_USBTransferOnePacket+0+0)&0ffh
	movlw	0
	xorwf	(??_USBTransferOnePacket+0+1)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	??_USBTransferOnePacket+0+0,postinc2
	movff	??_USBTransferOnePacket+0+1,postdec2

	line	1045
;usb_device.c: 1045: }
	goto	l3455
	line	1046
	
l359:; BSR set to: 0

	line	1049
	
l3453:; BSR set to: 0

;usb_device.c: 1046: else
;usb_device.c: 1047: {
;usb_device.c: 1049: pBDTEntryOut[ep] = (BDT_ENTRY*)(((uintptr_t)pBDTEntryOut[ep]) ^ 0x0004);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_USBTransferOnePacket+0+0
	movff	postdec2,??_USBTransferOnePacket+0+0+1
	movlw	04h
	movlb	0	; () banked
	xorwf	(??_USBTransferOnePacket+0+0)&0ffh
	movlw	0
	xorwf	(??_USBTransferOnePacket+0+1)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	??_USBTransferOnePacket+0+0,postinc2
	movff	??_USBTransferOnePacket+0+1,postdec2

	goto	l3455
	line	1050
	
l360:; BSR set to: 0

	line	1051
	
l3455:; BSR set to: 0

;usb_device.c: 1050: }
;usb_device.c: 1051: return (void*)handle;
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(USBTransferOnePacket@handle+1),(?_USBTransferOnePacket+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(USBTransferOnePacket@handle),(?_USBTransferOnePacket)

	goto	l358
	
l3457:; BSR set to: 0

	line	1052
	
l358:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBTransferOnePacket
	__end_of_USBTransferOnePacket:
	signat	_USBTransferOnePacket,16506
	global	_LED_Toggle

;; *************** function _LED_Toggle *****************
;; Defined at:
;;		line 141 in file "BSP\leds.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     enum E2
;; Auto vars:     Size  Location     Type
;;  led             1    0[BANK0 ] enum E2
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DoCommand
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"BSP\leds.c"
	line	141
global __ptext13
__ptext13:
psect	text13
	file	"BSP\leds.c"
	line	141
	global	__size_of_LED_Toggle
	__size_of_LED_Toggle	equ	__end_of_LED_Toggle-_LED_Toggle
	
_LED_Toggle:; BSR set to: 0

;incstack = 0
	opt	stack 18
;LED_Toggle@led stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((LED_Toggle@led))&0ffh
	line	143
	
l3459:; BSR set to: 0

;leds.c: 143: switch(led)
	goto	l3463
	line	145
;leds.c: 144: {
;leds.c: 145: case LED_D1:
	
l703:; BSR set to: 0

	line	146
;leds.c: 146: LATCbits.LATC0 ^= 1;
	btg	((c:3979)),c,0	;volatile
	line	147
;leds.c: 147: break;
	goto	l709
	line	149
;leds.c: 149: case LED_D2:
	
l705:; BSR set to: 0

	line	150
;leds.c: 150: LATCbits.LATC1 ^= 1;
	btg	((c:3979)),c,1	;volatile
	line	151
;leds.c: 151: break;
	goto	l709
	line	153
;leds.c: 153: case LED_D3:
	
l706:; BSR set to: 0

	line	154
;leds.c: 154: LATCbits.LATC2 ^= 1;
	btg	((c:3979)),c,2	;volatile
	line	155
;leds.c: 155: break;
	goto	l709
	line	157
;leds.c: 157: case LED_D4:
	
l707:; BSR set to: 0

	line	158
;leds.c: 158: LATCbits.LATC3 ^= 1;
	btg	((c:3979)),c,3	;volatile
	line	159
;leds.c: 159: break;
	goto	l709
	line	161
;leds.c: 161: case LED_NONE:
	
l708:; BSR set to: 0

	line	162
;leds.c: 162: break;
	goto	l709
	line	163
	
l3461:; BSR set to: 0

;leds.c: 163: }
	goto	l709
	line	143
	
l702:; BSR set to: 0

	
l3463:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((LED_Toggle@led))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l709
	xorlw	1^0	; case 1
	skipnz
	goto	l703
	xorlw	2^1	; case 2
	skipnz
	goto	l705
	xorlw	3^2	; case 3
	skipnz
	goto	l706
	xorlw	4^3	; case 4
	skipnz
	goto	l707
	goto	l709

	line	163
	
l704:; BSR set to: 0

	line	164
	
l709:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_LED_Toggle
	__end_of_LED_Toggle:
	signat	_LED_Toggle,4216
	global	_BUTTON_IsPressed

;; *************** function _BUTTON_IsPressed *****************
;; Defined at:
;;		line 55 in file "BSP\buttons.c"
;; Parameters:    Size  Location     Type
;;  button          1    wreg     enum E4576
;; Auto vars:     Size  Location     Type
;;  button          1    0[BANK0 ] enum E4576
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DoCommand
;;		_APP_DeviceCustomHIDTasks
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"BSP\buttons.c"
	line	55
global __ptext14
__ptext14:
psect	text14
	file	"BSP\buttons.c"
	line	55
	global	__size_of_BUTTON_IsPressed
	__size_of_BUTTON_IsPressed	equ	__end_of_BUTTON_IsPressed-_BUTTON_IsPressed
	
_BUTTON_IsPressed:; BSR set to: 0

;incstack = 0
	opt	stack 18
;BUTTON_IsPressed@button stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((BUTTON_IsPressed@button))&0ffh
	line	57
	
l3465:; BSR set to: 0

;buttons.c: 57: switch(button)
	goto	l3477
	line	59
;buttons.c: 58: {
;buttons.c: 59: case BUTTON_S1:
	
l665:; BSR set to: 0

	line	60
	
l3467:; BSR set to: 0

;buttons.c: 60: return ( (PORTAbits.RA3 == 0) ? 1 : 0);
	btfss	((c:3968)),c,3	;volatile
	goto	u2421
	goto	u2420
u2421:
	movlw	1
	goto	u2426
u2420:
	movlw	0
u2426:
	goto	l666
	
l3469:; BSR set to: 0

	goto	l666
	line	62
;buttons.c: 62: case BUTTON_NONE:
	
l667:; BSR set to: 0

	line	63
	
l3471:; BSR set to: 0

;buttons.c: 63: return 0;
	movlw	(0)&0ffh
	goto	l666
	
l3473:; BSR set to: 0

	goto	l666
	line	64
	
l3475:; BSR set to: 0

;buttons.c: 64: }
	goto	l3479
	line	57
	
l664:; BSR set to: 0

	
l3477:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((BUTTON_IsPressed@button))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l3471
	xorlw	1^0	; case 1
	skipnz
	goto	l3467
	goto	l3479

	line	64
	
l668:; BSR set to: 0

	line	66
	
l3479:; BSR set to: 0

;buttons.c: 66: return 0;
	movlw	(0)&0ffh
	goto	l666
	
l3481:; BSR set to: 0

	line	67
	
l666:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_BUTTON_IsPressed
	__end_of_BUTTON_IsPressed:
	signat	_BUTTON_IsPressed,4217
	global	_ADC_Read10bit

;; *************** function _ADC_Read10bit *****************
;; Defined at:
;;		line 37 in file "BSP\adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     enum E30
;; Auto vars:     Size  Location     Type
;;  channel         1    5[BANK0 ] enum E30
;;  result          2    3[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DoCommand
;;		_APP_DeviceCustomHIDTasks
;;		_ADC_ReadPercentage
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"BSP\adc.c"
	line	37
global __ptext15
__ptext15:
psect	text15
	file	"BSP\adc.c"
	line	37
	global	__size_of_ADC_Read10bit
	__size_of_ADC_Read10bit	equ	__end_of_ADC_Read10bit-_ADC_Read10bit
	
_ADC_Read10bit:; BSR set to: 0

;incstack = 0
	opt	stack 18
;ADC_Read10bit@channel stored from wreg
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ADC_Read10bit@channel))&0ffh
	line	41
	
l3483:; BSR set to: 0

;adc.c: 39: uint16_t result;
;adc.c: 41: switch(channel)
	goto	l3487
	line	43
;adc.c: 42: {
;adc.c: 43: case ADC_CHANNEL_10:
	
l642:; BSR set to: 0

	line	44
;adc.c: 44: break;
	goto	l3489
	line	45
;adc.c: 45: default:
	
l644:; BSR set to: 0

	line	46
;adc.c: 46: return 0xFFFF;
	movlb	0	; () banked
	movlb	0	; () banked
	setf	((?_ADC_Read10bit))&0ffh
	movlb	0	; () banked
	setf	((?_ADC_Read10bit+1))&0ffh
	goto	l645
	line	47
	
l3485:; BSR set to: 0

;adc.c: 47: }
	goto	l3489
	line	41
	
l641:; BSR set to: 0

	
l3487:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ADC_Read10bit@channel))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 10 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	10^0	; case 10
	skipnz
	goto	l3489
	goto	l644

	line	47
	
l643:; BSR set to: 0

	line	49
	
l3489:; BSR set to: 0

;adc.c: 49: ADCON0bits.CHS = channel;
	movff	(ADC_Read10bit@channel),??_ADC_Read10bit+0+0
	movlb	0	; () banked
	rlncf	(??_ADC_Read10bit+0+0)&0ffh
	rlncf	(??_ADC_Read10bit+0+0)&0ffh
	movf	((c:4034)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_ADC_Read10bit+0+0)&0ffh,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_ADC_Read10bit+0+0)&0ffh,w
	movwf	((c:4034)),c	;volatile
	line	51
	
l3491:; BSR set to: 0

;adc.c: 51: ADCON0bits.GO = 1;
	bsf	((c:4034)),c,1	;volatile
	line	52
;adc.c: 52: while(ADCON0bits.NOT_DONE);
	goto	l646
	
l647:; BSR set to: 0

	
l646:; BSR set to: 0

	btfsc	((c:4034)),c,1	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l646
u2430:
	
l648:; BSR set to: 0

	line	54
;adc.c: 54: result = ADRESH;
	movlb	0	; () banked
	movff	(c:4036),(ADC_Read10bit@result)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	((ADC_Read10bit@result+1))&0ffh
	line	55
	
l3493:; BSR set to: 0

;adc.c: 55: result <<=8;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ADC_Read10bit@result))&0ffh,w
	movlb	0	; () banked
	movwf	((ADC_Read10bit@result+1))&0ffh
	movlb	0	; () banked
	clrf	((ADC_Read10bit@result))&0ffh
	line	56
	
l3495:; BSR set to: 0

;adc.c: 56: result |= ADRESL;
	movf	((c:4035)),c,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	((ADC_Read10bit@result))&0ffh
	line	58
	
l3497:; BSR set to: 0

;adc.c: 58: return result;
	movff	(ADC_Read10bit@result),(?_ADC_Read10bit)
	movff	(ADC_Read10bit@result+1),(?_ADC_Read10bit+1)
	goto	l645
	
l3499:; BSR set to: 0

	line	59
	
l645:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_ADC_Read10bit
	__end_of_ADC_Read10bit:
	signat	_ADC_Read10bit,4218
	global	_SYS_InterruptHigh

;; *************** function _SYS_InterruptHigh *****************
;; Defined at:
;;		line 67 in file "HIDD\system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_USBDeviceTasks
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"HIDD\system.c"
	line	67
	global	__size_of_SYS_InterruptHigh
	__size_of_SYS_InterruptHigh	equ	__end_of_SYS_InterruptHigh-_SYS_InterruptHigh
	
_SYS_InterruptHigh:; BSR set to: 0

;incstack = 0
	opt	stack 18
	movff	pclat+0,??_SYS_InterruptHigh+0
	movff	pclat+1,??_SYS_InterruptHigh+1
	movff	fsr0l+0,??_SYS_InterruptHigh+2
	movff	fsr0h+0,??_SYS_InterruptHigh+3
	movff	fsr1l+0,??_SYS_InterruptHigh+4
	movff	fsr1h+0,??_SYS_InterruptHigh+5
	movff	fsr2l+0,??_SYS_InterruptHigh+6
	movff	fsr2h+0,??_SYS_InterruptHigh+7
	movff	prodl+0,??_SYS_InterruptHigh+8
	movff	prodh+0,??_SYS_InterruptHigh+9
	movff	tblptrl+0,??_SYS_InterruptHigh+10
	movff	tblptrh+0,??_SYS_InterruptHigh+11
	movff	tblptru+0,??_SYS_InterruptHigh+12
	movff	tablat+0,??_SYS_InterruptHigh+13
	line	70
	
i2l4065:
;system.c: 70: USBDeviceTasks();
	call	_USBDeviceTasks	;wreg free
	line	72
	
i2l135:
	movff	??_SYS_InterruptHigh+13,tablat+0
	movff	??_SYS_InterruptHigh+12,tblptru+0
	movff	??_SYS_InterruptHigh+11,tblptrh+0
	movff	??_SYS_InterruptHigh+10,tblptrl+0
	movff	??_SYS_InterruptHigh+9,prodh+0
	movff	??_SYS_InterruptHigh+8,prodl+0
	movff	??_SYS_InterruptHigh+7,fsr2h+0
	movff	??_SYS_InterruptHigh+6,fsr2l+0
	movff	??_SYS_InterruptHigh+5,fsr1h+0
	movff	??_SYS_InterruptHigh+4,fsr1l+0
	movff	??_SYS_InterruptHigh+3,fsr0h+0
	movff	??_SYS_InterruptHigh+2,fsr0l+0
	movff	??_SYS_InterruptHigh+1,pclat+1
	movff	??_SYS_InterruptHigh+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_SYS_InterruptHigh
	__end_of_SYS_InterruptHigh:
	signat	_SYS_InterruptHigh,88
	global	_USBDeviceTasks

;; *************** function _USBDeviceTasks *****************
;; Defined at:
;;		line 482 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   33[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;;		_USBCtrlEPService
;;		_USBIncrement1msInternalTimers
;;		_USBStallHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_USBDeviceInit
;; This function is called by:
;;		_SYS_InterruptHigh
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	482
global __ptext17
__ptext17:
psect	text17
	file	"HIDD\USB\usb_device.c"
	line	482
	global	__size_of_USBDeviceTasks
	__size_of_USBDeviceTasks	equ	__end_of_USBDeviceTasks-_USBDeviceTasks
	
_USBDeviceTasks:
;incstack = 0
	opt	stack 18
	line	595
	
i2l3951:
;usb_device.c: 484: uint8_t i;
;usb_device.c: 595: if(USBDeviceState == ATTACHED_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_USBDeviceState))&0ffh,w	;volatile

	btfss	status,2
	goto	i2u290_41
	goto	i2u290_40
i2u290_41:
	goto	i2l3961
i2u290_40:
	line	606
	
i2l3953:; BSR set to: 0

;usb_device.c: 596: {
;usb_device.c: 606: if(!UCONbits.SE0)
	btfsc	((c:3940)),c,5	;volatile
	goto	i2u291_41
	goto	i2u291_40
i2u291_41:
	goto	i2l3961
i2u291_40:
	line	613
	
i2l3955:; BSR set to: 0

;usb_device.c: 607: {
;usb_device.c: 613: {UIR = 0;};
	movlw	low(0)
	movwf	((c:3938)),c	;volatile
	line	619
	
i2l3957:; BSR set to: 0

;usb_device.c: 619: UIEbits.URSTIE = 1;
	bsf	((c:3936)),c,0	;volatile
	line	620
	
i2l3959:; BSR set to: 0

;usb_device.c: 620: UIEbits.IDLEIE = 1;
	bsf	((c:3936)),c,4	;volatile
	line	621
;usb_device.c: 621: USBDeviceState = POWERED_STATE;
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l3961
	line	622
	
i2l326:; BSR set to: 0

	goto	i2l3961
	line	623
	
i2l325:; BSR set to: 0

	line	639
	
i2l3961:; BSR set to: 0

;usb_device.c: 622: }
;usb_device.c: 623: }
;usb_device.c: 639: if(UIRbits.ACTVIF && UIEbits.ACTVIE)
	btfss	((c:3938)),c,2	;volatile
	goto	i2u292_41
	goto	i2u292_40
i2u292_41:
	goto	i2l3969
i2u292_40:
	
i2l3963:; BSR set to: 0

	btfss	((c:3936)),c,2	;volatile
	goto	i2u293_41
	goto	i2u293_40
i2u293_41:
	goto	i2l3969
i2u293_40:
	line	641
	
i2l3965:; BSR set to: 0

;usb_device.c: 640: {
;usb_device.c: 641: (UIR &= 0xFB);
	bcf	(0+(2/8)+(c:3938)),c,(2)&7	;volatile
	line	645
	
i2l3967:; BSR set to: 0

;usb_device.c: 645: USBWakeFromSuspend();
	call	_USBWakeFromSuspend	;wreg free
	goto	i2l3969
	line	647
	
i2l327:
	line	652
	
i2l3969:
;usb_device.c: 647: }
;usb_device.c: 652: if(UCONbits.SUSPND==1)
	btfss	((c:3940)),c,1	;volatile
	goto	i2u294_41
	goto	i2u294_40
i2u294_41:
	goto	i2l328
i2u294_40:
	line	654
	
i2l3971:
;usb_device.c: 653: {
;usb_device.c: 654: {PIR2bits.USBIF = 0;};
	bcf	((c:4001)),c,2	;volatile
	line	655
;usb_device.c: 655: return;
	goto	i2l329
	line	656
	
i2l328:
	line	668
;usb_device.c: 656: }
;usb_device.c: 668: if(UIRbits.URSTIF && UIEbits.URSTIE)
	btfss	((c:3938)),c,0	;volatile
	goto	i2u295_41
	goto	i2u295_40
i2u295_41:
	goto	i2l3983
i2u295_40:
	
i2l3973:
	btfss	((c:3936)),c,0	;volatile
	goto	i2u296_41
	goto	i2u296_40
i2u296_41:
	goto	i2l3983
i2u296_40:
	line	670
	
i2l3975:
;usb_device.c: 669: {
;usb_device.c: 670: USBDeviceInit();
	call	i2_USBDeviceInit	;wreg free
	line	674
	
i2l3977:
;usb_device.c: 674: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,2	;volatile
	line	676
	
i2l3979:
;usb_device.c: 676: USBDeviceState = DEFAULT_STATE;
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	686
	
i2l3981:; BSR set to: 0

;usb_device.c: 686: (UIR &= 0xFE);
	bcf	(0+(0/8)+(c:3938)),c,(0)&7	;volatile
	goto	i2l3983
	line	687
	
i2l330:; BSR set to: 0

	line	692
	
i2l3983:
;usb_device.c: 687: }
;usb_device.c: 692: if(UIRbits.IDLEIF && UIEbits.IDLEIE)
	btfss	((c:3938)),c,4	;volatile
	goto	i2u297_41
	goto	i2u297_40
i2u297_41:
	goto	i2l3989
i2u297_40:
	
i2l3985:
	btfss	((c:3936)),c,4	;volatile
	goto	i2u298_41
	goto	i2u298_40
i2u298_41:
	goto	i2l3989
i2u298_40:
	line	699
	
i2l3987:
;usb_device.c: 693: {
;usb_device.c: 699: USBSuspend();
	call	_USBSuspend	;wreg free
	goto	i2l3989
	line	701
	
i2l331:
	line	713
	
i2l3989:
;usb_device.c: 701: }
;usb_device.c: 713: if(UIRbits.SOFIF)
	btfss	((c:3938)),c,6	;volatile
	goto	i2u299_41
	goto	i2u299_40
i2u299_41:
	goto	i2l4007
i2u299_40:
	line	716
	
i2l3991:
;usb_device.c: 714: {
;usb_device.c: 716: if(UIEbits.SOFIE)
	btfss	((c:3936)),c,6	;volatile
	goto	i2u300_41
	goto	i2u300_40
i2u300_41:
	goto	i2l3995
i2u300_40:
	line	718
	
i2l3993:
;usb_device.c: 717: {
;usb_device.c: 718: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SOF,0,1);
	movlw	high(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l3995
	line	719
	
i2l333:
	line	720
	
i2l3995:
;usb_device.c: 719: }
;usb_device.c: 720: (UIR &= 0xBF);
	bcf	(0+(6/8)+(c:3938)),c,(6)&7	;volatile
	line	723
	
i2l3997:
;usb_device.c: 723: USBIncrement1msInternalTimers();
	call	_USBIncrement1msInternalTimers	;wreg free
	line	740
	
i2l3999:
;usb_device.c: 740: if(USBStatusStageTimeoutCounter != 0u)
	movf	((c:_USBStatusStageTimeoutCounter)),c,w	;volatile
	btfsc	status,2
	goto	i2u301_41
	goto	i2u301_40
i2u301_41:
	goto	i2l4003
i2u301_40:
	line	742
	
i2l4001:
;usb_device.c: 741: {
;usb_device.c: 742: USBStatusStageTimeoutCounter--;
	decf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2l4003
	line	743
	
i2l334:
	line	749
	
i2l4003:
;usb_device.c: 743: }
;usb_device.c: 749: if(USBStatusStageTimeoutCounter == 0)
	tstfsz	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2u302_41
	goto	i2u302_40
i2u302_41:
	goto	i2l4007
i2u302_40:
	line	751
	
i2l4005:
;usb_device.c: 750: {
;usb_device.c: 751: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l4007
	line	752
	
i2l335:
	goto	i2l4007
	line	754
	
i2l332:
	line	756
	
i2l4007:
;usb_device.c: 752: }
;usb_device.c: 754: }
;usb_device.c: 756: if(UIRbits.STALLIF && UIEbits.STALLIE)
	btfss	((c:3938)),c,5	;volatile
	goto	i2u303_41
	goto	i2u303_40
i2u303_41:
	goto	i2l4013
i2u303_40:
	
i2l4009:
	btfss	((c:3936)),c,5	;volatile
	goto	i2u304_41
	goto	i2u304_40
i2u304_41:
	goto	i2l4013
i2u304_40:
	line	758
	
i2l4011:
;usb_device.c: 757: {
;usb_device.c: 758: USBStallHandler();
	call	_USBStallHandler	;wreg free
	goto	i2l4013
	line	759
	
i2l336:
	line	761
	
i2l4013:
;usb_device.c: 759: }
;usb_device.c: 761: if(UIRbits.UERRIF && UIEbits.UERRIE)
	btfss	((c:3938)),c,1	;volatile
	goto	i2u305_41
	goto	i2u305_40
i2u305_41:
	goto	i2l4021
i2u305_40:
	
i2l4015:
	btfss	((c:3936)),c,1	;volatile
	goto	i2u306_41
	goto	i2u306_40
i2u306_41:
	goto	i2l4021
i2u306_40:
	line	763
	
i2l4017:
;usb_device.c: 762: {
;usb_device.c: 763: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_BUS_ERROR,0,1);
	movlw	high(07FFFh)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	setf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	764
	
i2l4019:
;usb_device.c: 764: {UEIR = 0;};
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3935))&0ffh	;volatile
	goto	i2l4021
	line	772
	
i2l337:; BSR set to: 15

	line	779
	
i2l4021:
;usb_device.c: 772: }
;usb_device.c: 779: if(USBDeviceState < DEFAULT_STATE)
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_USBDeviceState))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u307_41
	goto	i2u307_40
i2u307_41:
	goto	i2l338
i2u307_40:
	line	781
	
i2l4023:; BSR set to: 0

;usb_device.c: 780: {
;usb_device.c: 781: {PIR2bits.USBIF = 0;};
	bcf	((c:4001)),c,2	;volatile
	line	782
;usb_device.c: 782: return;
	goto	i2l329
	line	783
	
i2l338:; BSR set to: 0

	line	788
;usb_device.c: 783: }
;usb_device.c: 788: if(UIEbits.TRNIE)
	btfss	((c:3936)),c,3	;volatile
	goto	i2u308_41
	goto	i2u308_40
i2u308_41:
	goto	i2l339
i2u308_40:
	line	790
	
i2l4025:; BSR set to: 0

;usb_device.c: 789: {
;usb_device.c: 790: for(i = 0; i < 4u; i++)
	movlw	low(0)
	movwf	((c:USBDeviceTasks@i)),c
	
i2l4027:; BSR set to: 0

	movlw	(04h-1)
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	i2u309_41
	goto	i2u309_40
i2u309_41:
	goto	i2l340
i2u309_40:
	goto	i2l339
	
i2l4029:; BSR set to: 0

	goto	i2l339
	line	791
	
i2l340:
	line	792
;usb_device.c: 791: {
;usb_device.c: 792: if(UIRbits.TRNIF)
	btfss	((c:3938)),c,3	;volatile
	goto	i2u310_41
	goto	i2u310_40
i2u310_41:
	goto	i2l339
i2u310_40:
	line	795
	
i2l4031:
;usb_device.c: 793: {
;usb_device.c: 795: USTATcopy.Val = USTAT;
	movff	(c:3939),(c:_USTATcopy)	;volatile
	line	796
	
i2l4033:
;usb_device.c: 796: endpoint_number = USTATcopy.endpoint_number;
	rrcf	((c:_USTATcopy)),c,w	;volatile
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<4)-1
	movwf	((c:_endpoint_number)),c	;volatile
	line	798
	
i2l4035:
;usb_device.c: 798: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3938)),c,(3)&7	;volatile
	line	803
	
i2l4037:
;usb_device.c: 803: if(USTATcopy.direction == 0)
	btfsc	((c:_USTATcopy)),c,2	;volatile
	goto	i2u311_41
	goto	i2u311_40
i2u311_41:
	goto	i2l4041
i2u311_40:
	line	805
	
i2l4039:
;usb_device.c: 804: {
;usb_device.c: 805: ep_data_out[endpoint_number].bits.ping_pong_state ^= 1;
	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	btg	indf2,0
	line	806
;usb_device.c: 806: }
	goto	i2l4043
	line	807
	
i2l343:; BSR set to: 0

	line	809
	
i2l4041:
;usb_device.c: 807: else
;usb_device.c: 808: {
;usb_device.c: 809: ep_data_in[endpoint_number].bits.ping_pong_state ^= 1;
	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	btg	indf2,0
	goto	i2l4043
	line	810
	
i2l344:; BSR set to: 0

	line	815
	
i2l4043:; BSR set to: 0

;usb_device.c: 810: }
;usb_device.c: 815: if(endpoint_number == 0)
	tstfsz	((c:_endpoint_number)),c	;volatile
	goto	i2u312_41
	goto	i2u312_40
i2u312_41:
	goto	i2l4047
i2u312_40:
	line	817
	
i2l4045:; BSR set to: 0

;usb_device.c: 816: {
;usb_device.c: 817: USBCtrlEPService();
	call	_USBCtrlEPService	;wreg free
	line	818
;usb_device.c: 818: }
	goto	i2l4049
	line	819
	
i2l345:
	line	821
	
i2l4047:
;usb_device.c: 819: else
;usb_device.c: 820: {
;usb_device.c: 821: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER,(uint8_t*)&USTATcopy.Val,0);
	movlw	high(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high((c:_USTATcopy))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low((c:_USTATcopy))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l4049
	line	822
	
i2l346:
	line	823
;usb_device.c: 822: }
;usb_device.c: 823: }
	goto	i2l4049
	line	824
	
i2l342:
	line	826
;usb_device.c: 824: else
;usb_device.c: 825: {
;usb_device.c: 826: break;
	goto	i2l339
	line	827
	
i2l347:
	line	790
	
i2l4049:
	incf	((c:USBDeviceTasks@i)),c
	
i2l4051:
	movlw	(04h-1)
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	i2u313_41
	goto	i2u313_40
i2u313_41:
	goto	i2l340
i2u313_40:
	goto	i2l339
	
i2l341:
	line	829
	
i2l339:
	line	831
;usb_device.c: 827: }
;usb_device.c: 828: }
;usb_device.c: 829: }
;usb_device.c: 831: {PIR2bits.USBIF = 0;};
	bcf	((c:4001)),c,2	;volatile
	line	832
	
i2l329:
	return
	opt stack 0
GLOBAL	__end_of_USBDeviceTasks
	__end_of_USBDeviceTasks:
	signat	_USBDeviceTasks,88
	global	i2_USBDeviceInit

;; *************** function i2_USBDeviceInit *****************
;; Defined at:
;;		line 282 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  USBDeviceIni    1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2_memset
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	282
global __ptext18
__ptext18:
psect	text18
	file	"HIDD\USB\usb_device.c"
	line	282
	global	__size_ofi2_USBDeviceInit
	__size_ofi2_USBDeviceInit	equ	__end_ofi2_USBDeviceInit-i2_USBDeviceInit
	
i2_USBDeviceInit:
;incstack = 0
	opt	stack 24
	line	286
	
i2l3723:
;usb_device.c: 284: uint8_t i;
;usb_device.c: 286: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,2	;volatile
	line	293
	
i2l3725:
;usb_device.c: 290: ;
;usb_device.c: 293: {UEIR = 0;};
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3935))&0ffh	;volatile
	line	296
;usb_device.c: 296: {UIR = 0;};
	movlw	low(0)
	movwf	((c:3938)),c	;volatile
	line	299
;usb_device.c: 299: UEP0 = 0;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3923))&0ffh	;volatile
	line	301
	
i2l3727:; BSR set to: 15

;usb_device.c: 301: memset((void*)&UEP1,0x00,(1));;
	movlb	15	; () banked
		movlw	high(3924)	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlb	15	; () banked
	movlw	low(3924)	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(01h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(01h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	303
	
i2l3729:
;usb_device.c: 303: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3937)),c	;volatile
	
i2l3731:
	movlw	low(09Fh)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3931))&0ffh	;volatile
	
i2l3733:; BSR set to: 15

	movlw	low(07Bh)
	movwf	((c:3936)),c	;volatile
	line	312
	
i2l3735:; BSR set to: 15

;usb_device.c: 306: ;
;usb_device.c: 309: ;
;usb_device.c: 312: for(i = 0; i < (sizeof(BDT)/sizeof(BDT_ENTRY)); i++)
	movlw	low(0)
	movwf	((c:i2USBDeviceInit@i)),c
	
i2l3737:; BSR set to: 15

	movlw	(08h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u269_41
	goto	i2u269_40
i2u269_41:
	goto	i2l3741
i2u269_40:
	goto	i2l317
	
i2l3739:; BSR set to: 15

	goto	i2l317
	line	313
	
i2l316:; BSR set to: 15

	line	314
	
i2l3741:
;usb_device.c: 313: {
;usb_device.c: 314: BDT[i].Val = 0x00;
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	04h
	movlb	2	; () banked
	movlw	low(512)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(512)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	312
	
i2l3743:; BSR set to: 2

	incf	((c:i2USBDeviceInit@i)),c
	
i2l3745:; BSR set to: 2

	movlw	(08h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u270_41
	goto	i2u270_40
i2u270_41:
	goto	i2l3741
i2u270_40:
	
i2l317:
	line	318
;usb_device.c: 315: }
;usb_device.c: 318: UCONbits.PPBRST = 1;
	bsf	((c:3940)),c,6	;volatile
	line	321
	
i2l3747:
;usb_device.c: 321: UADDR = 0x00;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3932))&0ffh	;volatile
	line	324
	
i2l3749:; BSR set to: 15

;usb_device.c: 324: UCONbits.PKTDIS = 0;
	bcf	((c:3940)),c,4	;volatile
	line	327
	
i2l3751:; BSR set to: 15

;usb_device.c: 327: UCONbits.PPBRST = 0;
	bcf	((c:3940)),c,6	;volatile
	goto	i2l3753
	line	330
;usb_device.c: 330: do
	
i2l318:; BSR set to: 15

	line	332
	
i2l3753:
;usb_device.c: 331: {
;usb_device.c: 332: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3938)),c,(3)&7	;volatile
	line	334
	
i2l3755:
;usb_device.c: 334: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	335
	
i2l3757:; BSR set to: 0

;usb_device.c: 335: outPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	336
	
i2l3759:; BSR set to: 0

;usb_device.c: 336: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	line	337
	
i2l3761:; BSR set to: 0

;usb_device.c: 337: }while(UIRbits.TRNIF == 1);
	btfsc	((c:3938)),c,3	;volatile
	goto	i2u271_41
	goto	i2u271_40
i2u271_41:
	goto	i2l3753
i2u271_40:
	goto	i2l3763
	
i2l319:; BSR set to: 0

	line	341
	
i2l3763:; BSR set to: 0

;usb_device.c: 341: USBStatusStageEnabledFlag1 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	342
;usb_device.c: 342: USBStatusStageEnabledFlag2 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	344
;usb_device.c: 344: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	345
;usb_device.c: 345: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	346
;usb_device.c: 346: USBBusIsSuspended = 0;
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	350
;usb_device.c: 350: for(i = 0; i < (uint8_t)(1+1u); i++)
	movlw	low(0)
	movwf	((c:i2USBDeviceInit@i)),c
	
i2l3765:; BSR set to: 0

	movlw	(02h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u272_41
	goto	i2u272_40
i2u272_41:
	goto	i2l3769
i2u272_40:
	goto	i2l3775
	
i2l3767:; BSR set to: 0

	goto	i2l3775
	line	351
	
i2l320:; BSR set to: 0

	line	352
	
i2l3769:; BSR set to: 0

;usb_device.c: 351: {
;usb_device.c: 352: pBDTEntryIn[i] = 0u;
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	353
;usb_device.c: 353: pBDTEntryOut[i] = 0u;
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	354
;usb_device.c: 354: ep_data_in[i].Val = 0u;
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	355
;usb_device.c: 355: ep_data_out[i].Val = 0u;
	movf	((c:i2USBDeviceInit@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	350
	
i2l3771:; BSR set to: 0

	incf	((c:i2USBDeviceInit@i)),c
	
i2l3773:; BSR set to: 0

	movlw	(02h-1)
	cpfsgt	((c:i2USBDeviceInit@i)),c
	goto	i2u273_41
	goto	i2u273_40
i2u273_41:
	goto	i2l3769
i2u273_40:
	goto	i2l3775
	
i2l321:; BSR set to: 0

	line	359
	
i2l3775:; BSR set to: 0

;usb_device.c: 356: }
;usb_device.c: 359: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
	movlb	2	; () banked
		movlw	high(512+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	2	; () banked
	movlw	low(512+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh

	line	361
	
i2l3777:; BSR set to: 0

;usb_device.c: 361: UEP0 = 0x06|0x10;
	movlw	low(016h)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3923))&0ffh	;volatile
	line	363
	
i2l3779:; BSR set to: 15

;usb_device.c: 363: BDT[0].ADR = ((uint16_t)(&SetupPkt));
	movlw	high(0220h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(1+(512+02h))&0ffh	;volatile
	movlw	low(0220h)
	movlb	2	; () banked
	movwf	(0+(512+02h))&0ffh	;volatile
	line	364
	
i2l3781:; BSR set to: 2

;usb_device.c: 364: BDT[0].CNT = 8;
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+01h))&0ffh	;volatile
	line	365
	
i2l3783:; BSR set to: 2

;usb_device.c: 365: BDT[0].STAT.Val = 0x00|0x04;
	movlw	low(04h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((512))&0ffh	;volatile
	line	366
	
i2l3785:; BSR set to: 2

;usb_device.c: 366: BDT[0].STAT.Val |= 0x80;
	movlb	2	; () banked
	movlb	2	; () banked
	bsf	(0+(7/8)+(512))&0ffh,(7)&7	;volatile
	line	369
	
i2l3787:; BSR set to: 2

;usb_device.c: 369: USBActiveConfiguration = 0;
	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	371
	
i2l3789:; BSR set to: 2

;usb_device.c: 371: USB1msTickCount = 0;
	movlw	low(0)
	movwf	((c:_USB1msTickCount)),c	;volatile
	movlw	high(0)
	movwf	((c:_USB1msTickCount+1)),c	;volatile
	movlw	low highword(0)
	movwf	((c:_USB1msTickCount+2)),c	;volatile
	movlw	high highword(0)
	movwf	((c:_USB1msTickCount+3)),c	;volatile
	line	372
	
i2l3791:; BSR set to: 2

;usb_device.c: 372: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	line	375
	
i2l3793:; BSR set to: 2

;usb_device.c: 375: USBDeviceState = DETACHED_STATE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	376
	
i2l322:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_ofi2_USBDeviceInit
	__end_ofi2_USBDeviceInit:
	signat	i2_USBDeviceInit,88
	global	_USBWakeFromSuspend

;; *************** function _USBWakeFromSuspend *****************
;; Defined at:
;;		line 2308 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	2308
global __ptext19
__ptext19:
psect	text19
	file	"HIDD\USB\usb_device.c"
	line	2308
	global	__size_of_USBWakeFromSuspend
	__size_of_USBWakeFromSuspend	equ	__end_of_USBWakeFromSuspend-_USBWakeFromSuspend
	
_USBWakeFromSuspend:; BSR set to: 0

;incstack = 0
	opt	stack 21
	line	2310
	
i2l3653:
;usb_device.c: 2310: USBBusIsSuspended = 0;
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	2316
	
i2l3655:
;usb_device.c: 2316: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_RESUME,0,0);
	movlw	high(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2323
	
i2l3657:
;usb_device.c: 2323: UCONbits.SUSPND = 0;
	bcf	((c:3940)),c,1	;volatile
	line	2328
	
i2l3659:
;usb_device.c: 2328: UIEbits.ACTVIE = 0;
	bcf	((c:3936)),c,2	;volatile
	line	2346
;usb_device.c: 2346: while(UIRbits.ACTVIF)
	goto	i2l3663
	
i2l487:
	line	2349
	
i2l3661:
;usb_device.c: 2348: {
;usb_device.c: 2349: (UIR &= 0xFB);
	bcf	(0+(2/8)+(c:3938)),c,(2)&7	;volatile
	goto	i2l3663
	line	2350
	
i2l486:
	line	2346
	
i2l3663:
	btfsc	((c:3938)),c,2	;volatile
	goto	i2u260_41
	goto	i2u260_40
i2u260_41:
	goto	i2l3661
i2u260_40:
	goto	i2l3665
	
i2l488:
	line	2352
	
i2l3665:
;usb_device.c: 2350: }
;usb_device.c: 2352: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	line	2354
	
i2l489:
	return
	opt stack 0
GLOBAL	__end_of_USBWakeFromSuspend
	__end_of_USBWakeFromSuspend:
	signat	_USBWakeFromSuspend,88
	global	_USBSuspend

;; *************** function _USBSuspend *****************
;; Defined at:
;;		line 2250 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	2250
global __ptext20
__ptext20:
psect	text20
	file	"HIDD\USB\usb_device.c"
	line	2250
	global	__size_of_USBSuspend
	__size_of_USBSuspend	equ	__end_of_USBSuspend-_USBSuspend
	
_USBSuspend:
;incstack = 0
	opt	stack 21
	line	2275
	
i2l3667:
;usb_device.c: 2275: UIEbits.ACTVIE = 1;
	bsf	((c:3936)),c,2	;volatile
	line	2276
	
i2l3669:
;usb_device.c: 2276: (UIR &= 0xEF);
	bcf	(0+(4/8)+(c:3938)),c,(4)&7	;volatile
	line	2279
	
i2l3671:
;usb_device.c: 2279: UCONbits.SUSPND = 1;
	bsf	((c:3940)),c,1	;volatile
	line	2282
	
i2l3673:
;usb_device.c: 2282: USBBusIsSuspended = 1;
	movlw	low(01h)
	movwf	((c:_USBBusIsSuspended)),c	;volatile
	line	2283
	
i2l3675:
;usb_device.c: 2283: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	line	2290
	
i2l3677:
;usb_device.c: 2290: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SUSPEND,0,0);
	movlw	high(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2291
	
i2l483:
	return
	opt stack 0
GLOBAL	__end_of_USBSuspend
	__end_of_USBSuspend:
	signat	_USBSuspend,88
	global	_USBStallHandler

;; *************** function _USBStallHandler *****************
;; Defined at:
;;		line 2207 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	2207
global __ptext21
__ptext21:
psect	text21
	file	"HIDD\USB\usb_device.c"
	line	2207
	global	__size_of_USBStallHandler
	__size_of_USBStallHandler	equ	__end_of_USBStallHandler-_USBStallHandler
	
_USBStallHandler:
;incstack = 0
	opt	stack 25
	line	2219
	
i2l3689:
;usb_device.c: 2219: if(UEP0bits.EPSTALL == 1)
	movlb	15	; () banked
	btfss	((3923))&0ffh,0	;volatile
	goto	i2u263_41
	goto	i2u263_40
i2u263_41:
	goto	i2l478
i2u263_40:
	line	2222
	
i2l3691:; BSR set to: 15

;usb_device.c: 2220: {
;usb_device.c: 2222: if((pBDTEntryEP0OutCurrent->STAT.Val == 0x80) && (pBDTEntryIn[0]->STAT.Val == (0x80|0x04)))
	movlw	(080h)&0ffh
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	cpfseq	indf2
	goto	i2u264_41
	goto	i2u264_40
i2u264_41:
	goto	i2l3699
i2u264_40:
	
i2l3693:; BSR set to: 15

	movlw	(084h)&0ffh
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	cpfseq	indf2
	goto	i2u265_41
	goto	i2u265_40
i2u265_41:
	goto	i2l3699
i2u265_40:
	line	2225
	
i2l3695:; BSR set to: 15

;usb_device.c: 2223: {
;usb_device.c: 2225: pBDTEntryEP0OutCurrent->STAT.Val = 0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2226
	
i2l3697:; BSR set to: 15

;usb_device.c: 2226: pBDTEntryEP0OutCurrent->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l3699
	line	2227
	
i2l479:; BSR set to: 15

	line	2228
	
i2l3699:; BSR set to: 15

;usb_device.c: 2227: }
;usb_device.c: 2228: UEP0bits.EPSTALL = 0;
	movlb	15	; () banked
	movlb	15	; () banked
	bcf	((3923))&0ffh,0	;volatile
	line	2229
	
i2l478:; BSR set to: 15

	line	2231
;usb_device.c: 2229: }
;usb_device.c: 2231: (UIR &= 0xDF);
	bcf	(0+(5/8)+(c:3938)),c,(5)&7	;volatile
	line	2232
	
i2l480:; BSR set to: 15

	return
	opt stack 0
GLOBAL	__end_of_USBStallHandler
	__end_of_USBStallHandler:
	signat	_USBStallHandler,88
	global	_USBIncrement1msInternalTimers

;; *************** function _USBIncrement1msInternalTimers *****************
;; Defined at:
;;		line 3030 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	3030
global __ptext22
__ptext22:
psect	text22
	file	"HIDD\USB\usb_device.c"
	line	3030
	global	__size_of_USBIncrement1msInternalTimers
	__size_of_USBIncrement1msInternalTimers	equ	__end_of_USBIncrement1msInternalTimers-_USBIncrement1msInternalTimers
	
_USBIncrement1msInternalTimers:; BSR set to: 15

;incstack = 0
	opt	stack 25
	line	3038
	
i2l3679:
;usb_device.c: 3038: USB1msTickCount++;
	movlw	low(01h)
	addwf	((c:_USB1msTickCount)),c	;volatile
	movlw	0
	addwfc	((c:_USB1msTickCount+1)),c	;volatile
	addwfc	((c:_USB1msTickCount+2)),c	;volatile
	addwfc	((c:_USB1msTickCount+3)),c	;volatile
	line	3039
	
i2l3681:
;usb_device.c: 3039: if(USBBusIsSuspended == 0)
	tstfsz	((c:_USBBusIsSuspended)),c	;volatile
	goto	i2u261_41
	goto	i2u261_40
i2u261_41:
	goto	i2l570
i2u261_40:
	line	3041
	
i2l3683:
;usb_device.c: 3040: {
;usb_device.c: 3041: USBTicksSinceSuspendEnd++;
	incf	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	line	3043
	
i2l3685:
;usb_device.c: 3043: if(USBTicksSinceSuspendEnd == 0)
	tstfsz	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	goto	i2u262_41
	goto	i2u262_40
i2u262_41:
	goto	i2l570
i2u262_40:
	line	3045
	
i2l3687:
;usb_device.c: 3044: {
;usb_device.c: 3045: USBTicksSinceSuspendEnd = 255;
	setf	((c:_USBTicksSinceSuspendEnd)),c	;volatile
	goto	i2l570
	line	3046
	
i2l569:
	goto	i2l570
	line	3047
	
i2l568:
	line	3048
	
i2l570:
	return
	opt stack 0
GLOBAL	__end_of_USBIncrement1msInternalTimers
	__end_of_USBIncrement1msInternalTimers:
	signat	_USBIncrement1msInternalTimers,88
	global	_USBCtrlEPService

;; *************** function _USBCtrlEPService *****************
;; Defined at:
;;		line 2377 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_USBCtrlTrfInHandler
;;		_USBCtrlTrfOutHandler
;;		_USBCtrlTrfSetupHandler
;;		_memcpy
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	2377
global __ptext23
__ptext23:
psect	text23
	file	"HIDD\USB\usb_device.c"
	line	2377
	global	__size_of_USBCtrlEPService
	__size_of_USBCtrlEPService	equ	__end_of_USBCtrlEPService-_USBCtrlEPService
	
_USBCtrlEPService:
;incstack = 0
	opt	stack 18
	line	2383
	
i2l3701:
;usb_device.c: 2383: USBStatusStageTimeoutCounter = (uint8_t)45;
	movlw	low(02Dh)
	movwf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	line	2387
	
i2l3703:
;usb_device.c: 2387: if((USTATcopy.Val & ~0x02) == 0x00)
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	movlw	0FDh
	andwf	(??_USBCtrlEPService+0+0),c
	btfss	status,2
	goto	i2u266_41
	goto	i2u266_40
i2u266_41:
	goto	i2l3719
i2u266_40:
	line	2391
	
i2l3705:
;usb_device.c: 2388: {
;usb_device.c: 2391: pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[(USTATcopy.Val & 0x7E)>>1];
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	bcf	status,0
	rrcf	(??_USBCtrlEPService+0+0),c

	movlw	03Fh
	andwf	(??_USBCtrlEPService+0+0),c
	movf	(??_USBCtrlEPService+0+0),c,w
	mullw	04h
	movlb	2	; () banked
	movlw	low(512)	;volatile
	addwf	(prodl),c,w
	
	movwf	((c:_pBDTEntryEP0OutCurrent)),c
	movlb	2	; () banked
	movlw	high(512)	;volatile
	addwfc	prod+1,w
	movwf	1+((c:_pBDTEntryEP0OutCurrent)),c
	line	2399
	
i2l3707:; BSR set to: 2

;usb_device.c: 2399: pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
		movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)
	movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)

	line	2401
	
i2l3709:; BSR set to: 2

;usb_device.c: 2401: pBDTEntryEP0OutNext = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryEP0OutNext) ^ 0x0004);
	movlw	04h
	xorwf	((c:_pBDTEntryEP0OutNext)),c,w
	
	movwf	((c:_pBDTEntryEP0OutNext)),c
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	movwf	1+((c:_pBDTEntryEP0OutNext)),c
	line	2404
	
i2l3711:; BSR set to: 2

;usb_device.c: 2404: if(pBDTEntryEP0OutCurrent->STAT.PID == 0xD)
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	rrcf	(indf2),c,w
	rrcf	wreg,f
	andlw	(1<<4)-1
	xorlw	0Dh
	btfss	status,2
	goto	i2u267_41
	goto	i2u267_40
i2u267_41:
	goto	i2l3717
i2u267_40:
	line	2410
	
i2l3713:; BSR set to: 2

;usb_device.c: 2405: {
;usb_device.c: 2410: memcpy((uint8_t*)&SetupPkt, (uint8_t*)((void *)(pBDTEntryEP0OutCurrent->ADR)), 8);
	movlb	2	; () banked
		movlw	high(544)	;volatile
	movwf	((c:memcpy@d1+1)),c
	movlb	2	; () banked
	movlw	low(544)	;volatile
	movwf	((c:memcpy@d1)),c

	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movff	postinc2,(c:memcpy@s1)
	movff	postdec2,(c:memcpy@s1+1)
	movlw	high(08h)
	movwf	((c:memcpy@n+1)),c
	movlw	low(08h)
	movwf	((c:memcpy@n)),c
	call	_memcpy	;wreg free
	line	2413
	
i2l3715:
;usb_device.c: 2413: USBCtrlTrfSetupHandler();
	call	_USBCtrlTrfSetupHandler	;wreg free
	line	2414
;usb_device.c: 2414: }
	goto	i2l497
	line	2415
	
i2l493:
	line	2418
	
i2l3717:
;usb_device.c: 2415: else
;usb_device.c: 2416: {
;usb_device.c: 2418: USBCtrlTrfOutHandler();
	call	_USBCtrlTrfOutHandler	;wreg free
	goto	i2l497
	line	2419
	
i2l494:
	line	2420
;usb_device.c: 2419: }
;usb_device.c: 2420: }
	goto	i2l497
	line	2421
	
i2l492:
	
i2l3719:
;usb_device.c: 2421: else if((USTATcopy.Val & ~0x02) == 0x04)
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	movlw	0FDh
	andwf	(??_USBCtrlEPService+0+0),c
	movf	(??_USBCtrlEPService+0+0),c,w
	xorlw	04h

	btfss	status,2
	goto	i2u268_41
	goto	i2u268_40
i2u268_41:
	goto	i2l497
i2u268_40:
	line	2425
	
i2l3721:
;usb_device.c: 2422: {
;usb_device.c: 2425: USBCtrlTrfInHandler();
	call	_USBCtrlTrfInHandler	;wreg free
	goto	i2l497
	line	2426
	
i2l496:
	goto	i2l497
	line	2428
	
i2l495:
	
i2l497:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPService
	__end_of_USBCtrlEPService:
	signat	_USBCtrlEPService,88
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 11 in file "D:\MCUDev13\PIC\xc8\v1.32\sources\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              2    0[COMRAM] PTR void 
;;		 -> SetupPkt(8), 
;;  s1              2    2[COMRAM] PTR const void 
;;		 -> CtrlTrfData(8), RAM(767), SetupPkt(8), ToSendDataBuffer(64), 
;;		 -> ReceivedDataBuffer(64), 
;;  n               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2    8[COMRAM] PTR const unsigned char 
;;		 -> CtrlTrfData(8), RAM(767), SetupPkt(8), ToSendDataBuffer(64), 
;;		 -> ReceivedDataBuffer(64), 
;;  d               2    6[COMRAM] PTR unsigned char 
;;		 -> SetupPkt(8), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         6       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"D:\MCUDev13\PIC\xc8\v1.32\sources\common\memcpy.c"
	line	11
global __ptext24
__ptext24:
psect	text24
	file	"D:\MCUDev13\PIC\xc8\v1.32\sources\common\memcpy.c"
	line	11
	global	__size_of_memcpy
	__size_of_memcpy	equ	__end_of_memcpy-_memcpy
	
_memcpy:
;incstack = 0
	opt	stack 24
	line	24
	
i2l3501:
		movff	(c:memcpy@s1+1),(c:memcpy@s+1)
	movff	(c:memcpy@s1),(c:memcpy@s)

	line	25
		movff	(c:memcpy@d1+1),(c:memcpy@d+1)
	movff	(c:memcpy@d1),(c:memcpy@d)

	line	26
	goto	i2l3509
	
i2l1293:
	line	27
	
i2l3503:
	movff	(c:memcpy@s),fsr2l
	movff	(c:memcpy@s+1),fsr2h
	movff	(c:memcpy@d),fsr1l
	movff	(c:memcpy@d+1),fsr1h
	movff	indf2,indf1
	
i2l3505:
	infsnz	((c:memcpy@s)),c
	incf	((c:memcpy@s+1)),c
	
i2l3507:
	infsnz	((c:memcpy@d)),c
	incf	((c:memcpy@d+1)),c
	goto	i2l3509
	
i2l1292:
	line	26
	
i2l3509:
	decf	((c:memcpy@n)),c
	btfss	status,0
	decf	((c:memcpy@n+1)),c
	incf	((c:memcpy@n))&0ffh,w
	btfsc	status,2
	incf ((c:memcpy@n+1))&0ffh,w

	btfss	status,2
	goto	i2u244_41
	goto	i2u244_40
i2u244_41:
	goto	i2l3503
i2u244_40:
	goto	i2l1295
	
i2l1294:
	line	32
;	Return value of _memcpy is never used
	
i2l1295:
	return
	opt stack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12410
	global	_USBCtrlTrfSetupHandler

;; *************** function _USBCtrlTrfSetupHandler *****************
;; Defined at:
;;		line 2470 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_USBCheckStdRequest
;;		_USBCtrlEPServiceComplete
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	2470
global __ptext25
__ptext25:
psect	text25
	file	"HIDD\USB\usb_device.c"
	line	2470
	global	__size_of_USBCtrlTrfSetupHandler
	__size_of_USBCtrlTrfSetupHandler	equ	__end_of_USBCtrlTrfSetupHandler-_USBCtrlTrfSetupHandler
	
_USBCtrlTrfSetupHandler:
;incstack = 0
	opt	stack 18
	line	2475
	
i2l3511:
;usb_device.c: 2475: shortPacketStatus = 0;
	movlw	low(0)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	2476
;usb_device.c: 2476: USBDeferStatusStagePacket = 0;
	movlw	low(0)
	movwf	((c:_USBDeferStatusStagePacket)),c	;volatile
	line	2477
;usb_device.c: 2477: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	2478
;usb_device.c: 2478: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	2479
;usb_device.c: 2479: BothEP0OutUOWNsSet = 0;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	2480
;usb_device.c: 2480: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2489
	
i2l3513:
;usb_device.c: 2489: pBDTEntryIn[0]->STAT.Val &= ~(0x80);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2491
	
i2l3515:
;usb_device.c: 2491: pBDTEntryIn[0] = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[0]) ^ 0x0004);
	movlw	04h
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_pBDTEntryIn))&0ffh
	line	2492
	
i2l3517:; BSR set to: 0

;usb_device.c: 2492: pBDTEntryIn[0]->STAT.Val &= ~(0x80);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2493
	
i2l3519:; BSR set to: 0

;usb_device.c: 2493: pBDTEntryIn[0] = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[0]) ^ 0x0004);
	movlw	04h
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_pBDTEntryIn))&0ffh
	line	2494
	
i2l3521:; BSR set to: 0

;usb_device.c: 2494: pBDTEntryEP0OutNext->STAT.Val &= ~(0x80);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2496
	
i2l3523:; BSR set to: 0

;usb_device.c: 2496: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2497
	
i2l3525:; BSR set to: 0

;usb_device.c: 2497: inPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2498
	
i2l3527:; BSR set to: 0

;usb_device.c: 2498: outPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	2499
	
i2l3529:; BSR set to: 0

;usb_device.c: 2499: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	line	2505
	
i2l3531:; BSR set to: 0

;usb_device.c: 2505: USBCheckStdRequest();
	call	_USBCheckStdRequest	;wreg free
	line	2506
	
i2l3533:
;usb_device.c: 2506: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_EP0_REQUEST,0,0);
	movlw	high(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2519
	
i2l3535:
;usb_device.c: 2519: USBCtrlEPServiceComplete();
	call	_USBCtrlEPServiceComplete	;wreg free
	line	2520
	
i2l500:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfSetupHandler
	__end_of_USBCtrlTrfSetupHandler:
	signat	_USBCtrlTrfSetupHandler,88
	global	_USBCtrlEPServiceComplete

;; *************** function _USBCtrlEPServiceComplete *****************
;; Defined at:
;;		line 1621 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	1621
global __ptext26
__ptext26:
psect	text26
	file	"HIDD\USB\usb_device.c"
	line	1621
	global	__size_of_USBCtrlEPServiceComplete
	__size_of_USBCtrlEPServiceComplete	equ	__end_of_USBCtrlEPServiceComplete-_USBCtrlEPServiceComplete
	
_USBCtrlEPServiceComplete:
;incstack = 0
	opt	stack 21
	line	1627
	
i2l3295:
;usb_device.c: 1627: UCONbits.PKTDIS = 0;
	bcf	((c:3940)),c,4	;volatile
	line	1633
;usb_device.c: 1633: if(inPipes[0].info.bits.busy == 0)
	movlb	0	; () banked
	btfsc	(0+(_inPipes+03h))&0ffh,7	;volatile
	goto	i2u226_41
	goto	i2u226_40
i2u226_41:
	goto	i2l402
i2u226_40:
	line	1635
	
i2l3297:; BSR set to: 0

;usb_device.c: 1634: {
;usb_device.c: 1635: if(outPipes[0].info.bits.busy == 1)
	movlb	0	; () banked
	btfss	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2u227_41
	goto	i2u227_40
i2u227_41:
	goto	i2l3309
i2u227_40:
	line	1637
	
i2l3299:; BSR set to: 0

;usb_device.c: 1636: {
;usb_device.c: 1637: controlTransferState = 2;
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1648
	
i2l3301:; BSR set to: 0

;usb_device.c: 1648: if(USBDeferOUTDataStagePackets == 0)
	tstfsz	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	goto	i2u228_41
	goto	i2u228_40
i2u228_41:
	goto	i2l3305
i2u228_40:
	line	1650
	
i2l3303:; BSR set to: 0

;usb_device.c: 1649: {
;usb_device.c: 1650: USBCtrlEPAllowDataStage();
	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l3305
	line	1651
	
i2l404:
	line	1655
	
i2l3305:
;usb_device.c: 1651: }
;usb_device.c: 1655: USBStatusStageEnabledFlag2 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1656
	
i2l3307:
;usb_device.c: 1656: USBStatusStageEnabledFlag1 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1657
;usb_device.c: 1657: }
	goto	i2l412
	line	1658
	
i2l403:
	line	1664
	
i2l3309:
;usb_device.c: 1658: else
;usb_device.c: 1659: {
;usb_device.c: 1664: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1665
;usb_device.c: 1665: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0220h)
	movwf	postinc2,c
	movlw	high(0220h)
	movwf	postdec2,c
	line	1666
	
i2l3311:
;usb_device.c: 1666: pBDTEntryEP0OutNext->STAT.Val = 0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	1667
	
i2l3313:
;usb_device.c: 1667: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1668
;usb_device.c: 1668: pBDTEntryIn[0]->STAT.Val = 0x04;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1669
	
i2l3315:
;usb_device.c: 1669: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l412
	line	1670
	
i2l405:
	line	1671
;usb_device.c: 1670: }
;usb_device.c: 1671: }
	goto	i2l412
	line	1672
	
i2l402:; BSR set to: 0

	line	1674
;usb_device.c: 1672: else
;usb_device.c: 1673: {
;usb_device.c: 1674: if(SetupPkt.DataDir == (0x80>>7))
	movlb	2	; () banked
	btfss	((544))&0ffh,7	;volatile
	goto	i2u229_41
	goto	i2u229_40
i2u229_41:
	goto	i2l3331
i2u229_40:
	line	1676
	
i2l3317:; BSR set to: 2

;usb_device.c: 1675: {
;usb_device.c: 1676: controlTransferState = 1;
	movlw	low(01h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1690
	
i2l3319:; BSR set to: 2

;usb_device.c: 1690: if(USBDeferINDataStagePackets == 0)
	tstfsz	((c:_USBDeferINDataStagePackets)),c	;volatile
	goto	i2u230_41
	goto	i2u230_40
i2u230_41:
	goto	i2l3323
i2u230_40:
	line	1692
	
i2l3321:; BSR set to: 2

;usb_device.c: 1691: {
;usb_device.c: 1692: USBCtrlEPAllowDataStage();
	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l3323
	line	1693
	
i2l408:
	line	1715
	
i2l3323:
;usb_device.c: 1693: }
;usb_device.c: 1715: USBStatusStageEnabledFlag2 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1716
	
i2l3325:
;usb_device.c: 1716: USBStatusStageEnabledFlag1 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1717
	
i2l3327:
;usb_device.c: 1717: if(USBDeferStatusStagePacket == 0)
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u231_41
	goto	i2u231_40
i2u231_41:
	goto	i2l412
i2u231_40:
	line	1719
	
i2l3329:
;usb_device.c: 1718: {
;usb_device.c: 1719: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l412
	line	1720
	
i2l409:
	line	1721
;usb_device.c: 1720: }
;usb_device.c: 1721: }
	goto	i2l412
	line	1722
	
i2l407:
	line	1734
	
i2l3331:
;usb_device.c: 1722: else
;usb_device.c: 1723: {
;usb_device.c: 1734: controlTransferState = 2;
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1737
	
i2l3333:
;usb_device.c: 1737: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1738
	
i2l3335:
;usb_device.c: 1738: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0220h)
	movwf	postinc2,c
	movlw	high(0220h)
	movwf	postdec2,c
	line	1739
	
i2l3337:
;usb_device.c: 1739: pBDTEntryEP0OutNext->STAT.Val = 0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1740
	
i2l3339:
;usb_device.c: 1740: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1743
	
i2l3341:
;usb_device.c: 1743: USBStatusStageEnabledFlag2 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1744
	
i2l3343:
;usb_device.c: 1744: USBStatusStageEnabledFlag1 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1745
	
i2l3345:
;usb_device.c: 1745: if(USBDeferStatusStagePacket == 0)
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u232_41
	goto	i2u232_40
i2u232_41:
	goto	i2l412
i2u232_40:
	line	1747
	
i2l3347:
;usb_device.c: 1746: {
;usb_device.c: 1747: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l412
	line	1748
	
i2l411:
	goto	i2l412
	line	1749
	
i2l410:
	goto	i2l412
	line	1751
	
i2l406:
	line	1753
	
i2l412:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPServiceComplete
	__end_of_USBCtrlEPServiceComplete:
	signat	_USBCtrlEPServiceComplete,88
	global	_USBCtrlEPAllowDataStage

;; *************** function _USBCtrlEPAllowDataStage *****************
;; Defined at:
;;		line 1493 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	1493
global __ptext27
__ptext27:
psect	text27
	file	"HIDD\USB\usb_device.c"
	line	1493
	global	__size_of_USBCtrlEPAllowDataStage
	__size_of_USBCtrlEPAllowDataStage	equ	__end_of_USBCtrlEPAllowDataStage-_USBCtrlEPAllowDataStage
	
_USBCtrlEPAllowDataStage:
;incstack = 0
	opt	stack 21
	line	1495
	
i2l3091:
;usb_device.c: 1495: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets)),c	;volatile
	line	1496
;usb_device.c: 1496: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets)),c	;volatile
	line	1498
	
i2l3093:
;usb_device.c: 1498: if(controlTransferState == 2)
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u192_41
	goto	i2u192_40
i2u192_41:
	goto	i2l3101
i2u192_40:
	line	1501
	
i2l3095:
;usb_device.c: 1499: {
;usb_device.c: 1501: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1502
;usb_device.c: 1502: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0228h)
	movwf	postinc2,c
	movlw	high(0228h)
	movwf	postdec2,c
	line	1503
	
i2l3097:
;usb_device.c: 1503: pBDTEntryEP0OutNext->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1504
	
i2l3099:
;usb_device.c: 1504: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1505
;usb_device.c: 1505: }
	goto	i2l394
	line	1506
	
i2l391:
	line	1510
	
i2l3101:
;usb_device.c: 1506: else
;usb_device.c: 1507: {
;usb_device.c: 1510: if(SetupPkt.wLength < inPipes[0].wCount.Val)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_inPipes+04h))&0ffh,w	;volatile
	movlb	2	; () banked
	movlb	2	; () banked
	subwf	(0+(544+06h))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_inPipes+04h))&0ffh,w	;volatile
	movlb	2	; () banked
	movlb	2	; () banked
	subwfb	(1+(544+06h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u193_41
	goto	i2u193_40
i2u193_41:
	goto	i2l3105
i2u193_40:
	line	1512
	
i2l3103:; BSR set to: 2

;usb_device.c: 1511: {
;usb_device.c: 1512: inPipes[0].wCount.Val = SetupPkt.wLength;
	movff	0+(544+06h),0+(_inPipes+04h)	;volatile
	movff	1+(544+06h),1+(_inPipes+04h)	;volatile
	goto	i2l3105
	line	1513
	
i2l393:; BSR set to: 2

	line	1514
	
i2l3105:; BSR set to: 2

;usb_device.c: 1513: }
;usb_device.c: 1514: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	1519
	
i2l3107:
;usb_device.c: 1519: pBDTEntryIn[0]->ADR = ((uint16_t)(&CtrlTrfData));
	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0228h)
	movwf	postinc2,c
	movlw	high(0228h)
	movwf	postdec2,c
	line	1520
	
i2l3109:; BSR set to: 0

;usb_device.c: 1520: pBDTEntryIn[0]->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1521
	
i2l3111:; BSR set to: 0

;usb_device.c: 1521: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l394
	line	1522
	
i2l392:; BSR set to: 0

	line	1523
	
i2l394:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowDataStage
	__end_of_USBCtrlEPAllowDataStage:
	signat	_USBCtrlEPAllowDataStage,88
	global	_USBCheckStdRequest

;; *************** function _USBCheckStdRequest *****************
;; Defined at:
;;		line 2691 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USBStdFeatureReqHandler
;;		_USBStdGetDscHandler
;;		_USBStdGetStatusHandler
;;		_USBStdSetCfgHandler
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	2691
global __ptext28
__ptext28:
psect	text28
	file	"HIDD\USB\usb_device.c"
	line	2691
	global	__size_of_USBCheckStdRequest
	__size_of_USBCheckStdRequest	equ	__end_of_USBCheckStdRequest-_USBCheckStdRequest
	
_USBCheckStdRequest:
;incstack = 0
	opt	stack 18
	line	2693
	
i2l3391:
;usb_device.c: 2693: if(SetupPkt.RequestType != (0x00>>5)) return;
	movlb	2	; () banked
	movlb	2	; () banked
	swapf	((544))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	iorlw	0
	btfsc	status,2
	goto	i2u238_41
	goto	i2u238_40
i2u238_41:
	goto	i2l3427
i2u238_40:
	goto	i2l525
	
i2l3393:; BSR set to: 2

	goto	i2l525
	
i2l524:; BSR set to: 2

	line	2695
;usb_device.c: 2695: switch(SetupPkt.bRequest)
	goto	i2l3427
	line	2697
;usb_device.c: 2696: {
;usb_device.c: 2697: case 5:
	
i2l527:; BSR set to: 2

	line	2698
;usb_device.c: 2698: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2699
	
i2l3395:; BSR set to: 0

;usb_device.c: 2699: USBDeviceState = ADR_PENDING_STATE;
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2701
;usb_device.c: 2701: break;
	goto	i2l525
	line	2702
;usb_device.c: 2702: case 6:
	
i2l529:; BSR set to: 0

	line	2703
	
i2l3397:
;usb_device.c: 2703: USBStdGetDscHandler();
	call	_USBStdGetDscHandler	;wreg free
	line	2704
;usb_device.c: 2704: break;
	goto	i2l525
	line	2705
;usb_device.c: 2705: case 9:
	
i2l530:
	line	2706
	
i2l3399:
;usb_device.c: 2706: USBStdSetCfgHandler();
	call	_USBStdSetCfgHandler	;wreg free
	line	2707
;usb_device.c: 2707: break;
	goto	i2l525
	line	2708
;usb_device.c: 2708: case 8:
	
i2l531:
	line	2709
	
i2l3401:
;usb_device.c: 2709: inPipes[0].pSrc.bRam = (uint8_t*)&USBActiveConfiguration;
		movlw	high((c:_USBActiveConfiguration))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low((c:_USBActiveConfiguration))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	line	2710
	
i2l3403:; BSR set to: 0

;usb_device.c: 2710: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2711
	
i2l3405:; BSR set to: 0

;usb_device.c: 2711: inPipes[0].wCount.v[0] = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2712
	
i2l3407:; BSR set to: 0

;usb_device.c: 2712: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2713
;usb_device.c: 2713: break;
	goto	i2l525
	line	2714
;usb_device.c: 2714: case 0:
	
i2l532:; BSR set to: 0

	line	2715
	
i2l3409:
;usb_device.c: 2715: USBStdGetStatusHandler();
	call	_USBStdGetStatusHandler	;wreg free
	line	2716
;usb_device.c: 2716: break;
	goto	i2l525
	line	2717
;usb_device.c: 2717: case 1:
	
i2l533:
	goto	i2l3411
	line	2718
	
i2l534:
	line	2719
	
i2l3411:
;usb_device.c: 2718: case 3:
;usb_device.c: 2719: USBStdFeatureReqHandler();
	call	_USBStdFeatureReqHandler	;wreg free
	line	2720
;usb_device.c: 2720: break;
	goto	i2l525
	line	2721
;usb_device.c: 2721: case 10:
	
i2l535:
	line	2722
	
i2l3413:
;usb_device.c: 2722: inPipes[0].pSrc.bRam = (uint8_t*)&USBAlternateInterface[SetupPkt.bIntfID];
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low((c:_USBAlternateInterface))	;volatile
	movwf	(??_USBCheckStdRequest+0+0)&0ffh,c
	movlw	high((c:_USBAlternateInterface))	;volatile
	movwf	(??_USBCheckStdRequest+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_USBCheckStdRequest+0+0),c
	movf	(prodh),c,w
	addwfc	(??_USBCheckStdRequest+0+1),c
	movff	??_USBCheckStdRequest+0+0,(_inPipes)	;volatile
	movff	??_USBCheckStdRequest+0+1,(_inPipes+1)	;volatile
	line	2723
	
i2l3415:; BSR set to: 2

;usb_device.c: 2723: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2724
	
i2l3417:; BSR set to: 0

;usb_device.c: 2724: inPipes[0].wCount.v[0] = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2725
	
i2l3419:; BSR set to: 0

;usb_device.c: 2725: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2726
;usb_device.c: 2726: break;
	goto	i2l525
	line	2727
;usb_device.c: 2727: case 11:
	
i2l536:; BSR set to: 2

	line	2728
;usb_device.c: 2728: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2729
	
i2l3421:; BSR set to: 0

;usb_device.c: 2729: USBAlternateInterface[SetupPkt.bIntfID] = SetupPkt.bAltID;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low((c:_USBAlternateInterface))	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_USBAlternateInterface))	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	2	; () banked
	movff	0+(544+02h),indf2	;volatile

	line	2730
;usb_device.c: 2730: break;
	goto	i2l525
	line	2731
;usb_device.c: 2731: case 7:
	
i2l537:; BSR set to: 2

	line	2732
	
i2l3423:; BSR set to: 2

;usb_device.c: 2732: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SET_DESCRIPTOR,0,0);
	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2733
;usb_device.c: 2733: break;
	goto	i2l525
	line	2734
;usb_device.c: 2734: case 12:
	
i2l538:
	goto	i2l525
	line	2735
;usb_device.c: 2735: default:
	
i2l539:
	line	2736
;usb_device.c: 2736: break;
	goto	i2l525
	line	2737
	
i2l3425:
;usb_device.c: 2737: }
	goto	i2l525
	line	2695
	
i2l526:
	
i2l3427:
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l3409
	xorlw	1^0	; case 1
	skipnz
	goto	i2l3411
	xorlw	3^1	; case 3
	skipnz
	goto	i2l3411
	xorlw	5^3	; case 5
	skipnz
	goto	i2l527
	xorlw	6^5	; case 6
	skipnz
	goto	i2l3397
	xorlw	7^6	; case 7
	skipnz
	goto	i2l3423
	xorlw	8^7	; case 8
	skipnz
	goto	i2l3401
	xorlw	9^8	; case 9
	skipnz
	goto	i2l3399
	xorlw	10^9	; case 10
	skipnz
	goto	i2l3413
	xorlw	11^10	; case 11
	skipnz
	goto	i2l536
	xorlw	12^11	; case 12
	skipnz
	goto	i2l525
	goto	i2l525

	line	2737
	
i2l528:; BSR set to: 2

	line	2738
	
i2l525:
	return
	opt stack 0
GLOBAL	__end_of_USBCheckStdRequest
	__end_of_USBCheckStdRequest:
	signat	_USBCheckStdRequest,88
	global	_USBStdSetCfgHandler

;; *************** function _USBStdSetCfgHandler *****************
;; Defined at:
;;		line 1973 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_memset
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	1973
global __ptext29
__ptext29:
psect	text29
	file	"HIDD\USB\usb_device.c"
	line	1973
	global	__size_of_USBStdSetCfgHandler
	__size_of_USBStdSetCfgHandler	equ	__end_of_USBStdSetCfgHandler-_USBStdSetCfgHandler
	
_USBStdSetCfgHandler:
;incstack = 0
	opt	stack 18
	line	1978
	
i2l3113:
;usb_device.c: 1975: uint8_t i;
;usb_device.c: 1978: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	1981
	
i2l3115:; BSR set to: 0

;usb_device.c: 1981: memset((void*)&UEP1,0x00,(1));;
	movlb	15	; () banked
		movlw	high(3924)	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlb	15	; () banked
	movlw	low(3924)	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(01h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(01h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	1984
;usb_device.c: 1984: memset((void*)&BDT[0], 0x00, sizeof(BDT));
	movlb	2	; () banked
		movlw	high(512)	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlb	2	; () banked
	movlw	low(512)	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(020h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(020h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	1987
	
i2l3117:
;usb_device.c: 1987: UCONbits.PPBRST = 1;
	bsf	((c:3940)),c,6	;volatile
	line	1992
	
i2l3119:
;usb_device.c: 1992: for(i = 0; i < (uint8_t)(1+1u); i++)
	movlw	low(0)
	movwf	((c:USBStdSetCfgHandler@i)),c
	
i2l3121:
	movlw	(02h-1)
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u194_41
	goto	i2u194_40
i2u194_41:
	goto	i2l3125
i2u194_40:
	goto	i2l3131
	
i2l3123:
	goto	i2l3131
	line	1993
	
i2l443:
	line	1994
	
i2l3125:
;usb_device.c: 1993: {
;usb_device.c: 1994: ep_data_in[i].Val = 0u;
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	1995
;usb_device.c: 1995: ep_data_out[i].Val = 0u;
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	1992
	
i2l3127:; BSR set to: 0

	incf	((c:USBStdSetCfgHandler@i)),c
	
i2l3129:; BSR set to: 0

	movlw	(02h-1)
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u195_41
	goto	i2u195_40
i2u195_41:
	goto	i2l3125
i2u195_40:
	goto	i2l3131
	
i2l444:; BSR set to: 0

	line	1999
	
i2l3131:
;usb_device.c: 1996: }
;usb_device.c: 1999: memset((void*)&USBAlternateInterface,0x00,1);
		movlw	high((c:_USBAlternateInterface))	;volatile
	movwf	((c:i2memset@p1+1)),c
	movlw	low((c:_USBAlternateInterface))	;volatile
	movwf	((c:i2memset@p1)),c

	movlw	high(0)
	movwf	((c:i2memset@c+1)),c
	movlw	low(0)
	movwf	((c:i2memset@c)),c
	movlw	high(01h)
	movwf	((c:i2memset@n+1)),c
	movlw	low(01h)
	movwf	((c:i2memset@n)),c
	call	i2_memset	;wreg free
	line	2002
	
i2l3133:
;usb_device.c: 2002: UCONbits.PPBRST = 0;
	bcf	((c:3940)),c,6	;volatile
	line	2004
	
i2l3135:
;usb_device.c: 2004: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
	movlb	2	; () banked
		movlw	high(512+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	2	; () banked
	movlw	low(512+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh

	line	2007
	
i2l3137:; BSR set to: 0

;usb_device.c: 2007: pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[0];
	movlb	2	; () banked
		movlw	high(512)	;volatile
	movwf	((c:_pBDTEntryEP0OutCurrent+1)),c
	movlb	2	; () banked
	movlw	low(512)	;volatile
	movwf	((c:_pBDTEntryEP0OutCurrent)),c

	line	2008
	
i2l3139:; BSR set to: 2

;usb_device.c: 2008: pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
		movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)
	movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)

	line	2011
	
i2l3141:; BSR set to: 2

;usb_device.c: 2011: USBActiveConfiguration = SetupPkt.bConfigurationValue;
	movff	0+(544+02h),(c:_USBActiveConfiguration)	;volatile
	line	2014
	
i2l3143:; BSR set to: 2

;usb_device.c: 2014: if(USBActiveConfiguration == 0)
	tstfsz	((c:_USBActiveConfiguration)),c	;volatile
	goto	i2u196_41
	goto	i2u196_40
i2u196_41:
	goto	i2l3147
i2u196_40:
	line	2017
	
i2l3145:; BSR set to: 2

;usb_device.c: 2015: {
;usb_device.c: 2017: USBDeviceState = ADDRESS_STATE;
	movlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2018
;usb_device.c: 2018: }
	goto	i2l447
	line	2019
	
i2l445:; BSR set to: 0

	line	2022
	
i2l3147:
;usb_device.c: 2019: else
;usb_device.c: 2020: {
;usb_device.c: 2022: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_CONFIGURED,(void*)&USBActiveConfiguration,1);
	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movlw	high((c:_USBActiveConfiguration))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)),c
	movlw	low((c:_USBActiveConfiguration))	;volatile
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)),c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2027
	
i2l3149:
;usb_device.c: 2027: USBDeviceState = CONFIGURED_STATE;
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l447
	line	2028
	
i2l446:; BSR set to: 0

	line	2029
	
i2l447:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBStdSetCfgHandler
	__end_of_USBStdSetCfgHandler:
	signat	_USBStdSetCfgHandler,88
	global	i2_memset

;; *************** function i2_memset *****************
;; Defined at:
;;		line 8 in file "D:\MCUDev13\PIC\xc8\v1.32\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[COMRAM] PTR void 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), 
;;  c               2    2[COMRAM] int 
;;  n               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  memset          2    6[COMRAM] PTR unsigned char 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         6       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBStdSetCfgHandler
;;		i2_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"D:\MCUDev13\PIC\xc8\v1.32\sources\common\memset.c"
	line	8
global __ptext30
__ptext30:
psect	text30
	file	"D:\MCUDev13\PIC\xc8\v1.32\sources\common\memset.c"
	line	8
	global	__size_ofi2_memset
	__size_ofi2_memset	equ	__end_ofi2_memset-i2_memset
	
i2_memset:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	18
	
i2l3047:
		movff	(c:i2memset@p1+1),(c:i2memset@p+1)
	movff	(c:i2memset@p1),(c:i2memset@p)

	line	19
	goto	i2l3053
	
i2l1299:
	line	20
	
i2l3049:
	movff	(c:i2memset@p),fsr2l
	movff	(c:i2memset@p+1),fsr2h
	movff	(c:i2memset@c),indf2

	
i2l3051:
	infsnz	((c:i2memset@p)),c
	incf	((c:i2memset@p+1)),c
	goto	i2l3053
	
i2l1298:
	line	19
	
i2l3053:
	decf	((c:i2memset@n)),c
	btfss	status,0
	decf	((c:i2memset@n+1)),c
	incf	((c:i2memset@n))&0ffh,w
	btfsc	status,2
	incf ((c:i2memset@n+1))&0ffh,w

	btfss	status,2
	goto	i2u187_41
	goto	i2u187_40
i2u187_41:
	goto	i2l3049
i2u187_40:
	goto	i2l1301
	
i2l1300:
	line	22
;	Return value of i2_memset is never used
	
i2l1301:
	return
	opt stack 0
GLOBAL	__end_ofi2_memset
	__end_ofi2_memset:
	signat	i2_memset,90
	global	_USBStdGetStatusHandler

;; *************** function _USBStdGetStatusHandler *****************
;; Defined at:
;;		line 2134 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2    1[COMRAM] PTR struct __BDT
;;		 -> RAM(767), BDT(32), NULL(0), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	2134
global __ptext31
__ptext31:
psect	text31
	file	"HIDD\USB\usb_device.c"
	line	2134
	global	__size_of_USBStdGetStatusHandler
	__size_of_USBStdGetStatusHandler	equ	__end_of_USBStdGetStatusHandler-_USBStdGetStatusHandler
	
_USBStdGetStatusHandler:
;incstack = 0
	opt	stack 22
	line	2136
	
i2l3181:
;usb_device.c: 2136: CtrlTrfData[0] = 0;
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((552))&0ffh	;volatile
	line	2137
;usb_device.c: 2137: CtrlTrfData[1] = 0;
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(552+01h))&0ffh	;volatile
	line	2139
;usb_device.c: 2139: switch(SetupPkt.Recipient)
	goto	i2l3201
	line	2141
;usb_device.c: 2140: {
;usb_device.c: 2141: case (0x00):
	
i2l465:; BSR set to: 2

	line	2142
;usb_device.c: 2142: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2147
;usb_device.c: 2147: if(0 == 1)
	goto	i2l3185
	line	2149
	
i2l3183:; BSR set to: 0

;usb_device.c: 2148: {
;usb_device.c: 2149: CtrlTrfData[0]|=0x01;
	movlb	2	; () banked
	movlb	2	; () banked
	bsf	(0+(0/8)+(552))&0ffh,(0)&7	;volatile
	goto	i2l3185
	line	2150
	
i2l466:; BSR set to: 2

	line	2152
	
i2l3185:
;usb_device.c: 2150: }
;usb_device.c: 2152: if(RemoteWakeup == 1)
	decf	((c:_RemoteWakeup)),c,w	;volatile

	btfss	status,2
	goto	i2u203_41
	goto	i2u203_40
i2u203_41:
	goto	i2l468
i2u203_40:
	line	2154
	
i2l3187:
;usb_device.c: 2153: {
;usb_device.c: 2154: CtrlTrfData[0]|=0x02;
	movlb	2	; () banked
	movlb	2	; () banked
	bsf	(0+(1/8)+(552))&0ffh,(1)&7	;volatile
	goto	i2l468
	line	2155
	
i2l467:; BSR set to: 2

	line	2156
;usb_device.c: 2155: }
;usb_device.c: 2156: break;
	goto	i2l468
	line	2157
;usb_device.c: 2157: case (0x01):
	
i2l469:; BSR set to: 2

	line	2158
;usb_device.c: 2158: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2159
;usb_device.c: 2159: break;
	goto	i2l468
	line	2160
;usb_device.c: 2160: case (0x02):
	
i2l470:; BSR set to: 2

	line	2161
;usb_device.c: 2161: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2168
;usb_device.c: 2165: {
;usb_device.c: 2166: BDT_ENTRY *p;
;usb_device.c: 2168: if(SetupPkt.EPDir == 0)
	movlb	2	; () banked
	btfsc	(0+(544+04h))&0ffh,7	;volatile
	goto	i2u204_41
	goto	i2u204_40
i2u204_41:
	goto	i2l3191
i2u204_40:
	line	2170
	
i2l3189:; BSR set to: 2

;usb_device.c: 2169: {
;usb_device.c: 2170: p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movf	((??_USBStdGetStatusHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	line	2171
;usb_device.c: 2171: }
	goto	i2l3193
	line	2172
	
i2l471:; BSR set to: 0

	line	2174
	
i2l3191:
;usb_device.c: 2172: else
;usb_device.c: 2173: {
;usb_device.c: 2174: p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movf	((??_USBStdGetStatusHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	goto	i2l3193
	line	2175
	
i2l472:; BSR set to: 0

	line	2177
	
i2l3193:; BSR set to: 0

;usb_device.c: 2175: }
;usb_device.c: 2177: if((p->STAT.UOWN == 1) && (p->STAT.BSTALL == 1))
	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u205_41
	goto	i2u205_40
i2u205_41:
	goto	i2l468
i2u205_40:
	
i2l3195:; BSR set to: 0

	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	indf2,2
	goto	i2u206_41
	goto	i2u206_40
i2u206_41:
	goto	i2l468
i2u206_40:
	line	2178
	
i2l3197:; BSR set to: 0

;usb_device.c: 2178: CtrlTrfData[0]=0x01;
	movlw	low(01h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((552))&0ffh	;volatile
	goto	i2l468
	
i2l473:; BSR set to: 2

	line	2179
;usb_device.c: 2179: break;
	goto	i2l468
	line	2181
	
i2l3199:; BSR set to: 2

;usb_device.c: 2180: }
;usb_device.c: 2181: }
	goto	i2l468
	line	2139
	
i2l464:; BSR set to: 2

	
i2l3201:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	((544))&0ffh,w	;volatile
	andlw	(1<<5)-1
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l465
	xorlw	1^0	; case 1
	skipnz
	goto	i2l469
	xorlw	2^1	; case 2
	skipnz
	goto	i2l470
	goto	i2l468

	line	2181
	
i2l468:
	line	2183
;usb_device.c: 2183: if(inPipes[0].info.bits.busy == 1)
	movlb	0	; () banked
	btfss	(0+(_inPipes+03h))&0ffh,7	;volatile
	goto	i2u207_41
	goto	i2u207_40
i2u207_41:
	goto	i2l475
i2u207_40:
	line	2185
	
i2l3203:; BSR set to: 0

;usb_device.c: 2184: {
;usb_device.c: 2185: inPipes[0].pSrc.bRam = (uint8_t*)&CtrlTrfData;
	movlb	2	; () banked
		movlw	high(552)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlb	2	; () banked
	movlw	low(552)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	line	2186
	
i2l3205:; BSR set to: 0

;usb_device.c: 2186: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2187
	
i2l3207:; BSR set to: 0

;usb_device.c: 2187: inPipes[0].wCount.v[0] = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	goto	i2l475
	line	2188
	
i2l474:; BSR set to: 0

	line	2189
	
i2l475:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBStdGetStatusHandler
	__end_of_USBStdGetStatusHandler:
	signat	_USBStdGetStatusHandler,88
	global	_USBStdGetDscHandler

;; *************** function _USBStdGetDscHandler *****************
;; Defined at:
;;		line 2048 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	2048
global __ptext32
__ptext32:
psect	text32
	file	"HIDD\USB\usb_device.c"
	line	2048
	global	__size_of_USBStdGetDscHandler
	__size_of_USBStdGetDscHandler	equ	__end_of_USBStdGetDscHandler-_USBStdGetDscHandler
	
_USBStdGetDscHandler:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	2050
	
i2l3151:
;usb_device.c: 2050: if(SetupPkt.bmRequestType == 0x80)
	movlb	2	; () banked
	movlb	2	; () banked
	movf	((544))&0ffh,w	;volatile
	xorlw	128

	btfss	status,2
	goto	i2u197_41
	goto	i2u197_40
i2u197_41:
	goto	i2l461
i2u197_40:
	line	2052
	
i2l3153:; BSR set to: 2

;usb_device.c: 2051: {
;usb_device.c: 2052: inPipes[0].info.Val = 0x00 | 0x80 | 0x40;
	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2054
;usb_device.c: 2054: switch(SetupPkt.bDescriptorType)
	goto	i2l3179
	line	2056
;usb_device.c: 2055: {
;usb_device.c: 2056: case 0x01:
	
i2l452:; BSR set to: 0

	line	2060
	
i2l3155:
;usb_device.c: 2060: inPipes[0].pSrc.bRom = (const uint8_t*)&device_dsc;
		movlw	high(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	line	2062
	
i2l3157:; BSR set to: 0

;usb_device.c: 2062: inPipes[0].wCount.Val = sizeof(device_dsc);
	movlw	high(012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(012h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2063
;usb_device.c: 2063: break;
	goto	i2l461
	line	2064
;usb_device.c: 2064: case 0x02:
	
i2l454:; BSR set to: 2

	line	2068
;usb_device.c: 2068: if(SetupPkt.bDscIndex < 1)
	movlb	2	; () banked
	movlb	2	; () banked
	tstfsz	(0+(544+02h))&0ffh	;volatile
	goto	i2u198_41
	goto	i2u198_40
i2u198_41:
	goto	i2l3165
i2u198_40:
	line	2073
	
i2l3159:; BSR set to: 2

;usb_device.c: 2069: {
;usb_device.c: 2073: inPipes[0].pSrc.bRom = *(USB_CD_Ptr+SetupPkt.bDscIndex);
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+02h))&0ffh,w	;volatile
	mullw	02h
	movlw	low((_USB_CD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_CD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes)	;volatile
	tblrd*-
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+1)	;volatile

	line	2079
	
i2l3161:; BSR set to: 0

;usb_device.c: 2079: inPipes[0].wCount.byte.LB = *(inPipes[0].pSrc.bRom+2);
	movlw	02h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0+1)&0ffh,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u199_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u199_40
i2u199_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u199_40:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2080
	
i2l3163:; BSR set to: 0

;usb_device.c: 2080: inPipes[0].wCount.byte.HB = *(inPipes[0].pSrc.bRom+3);
	movlw	03h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+0+0+1)&0ffh,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u200_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u200_40
i2u200_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u200_40:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+05h))&0ffh	;volatile
	line	2081
;usb_device.c: 2081: }
	goto	i2l461
	line	2082
	
i2l455:; BSR set to: 0

	line	2084
	
i2l3165:
;usb_device.c: 2082: else
;usb_device.c: 2083: {
;usb_device.c: 2084: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l461
	line	2085
	
i2l456:; BSR set to: 0

	line	2086
;usb_device.c: 2085: }
;usb_device.c: 2086: break;
	goto	i2l461
	line	2087
;usb_device.c: 2087: case 0x03:
	
i2l457:; BSR set to: 0

	line	2091
	
i2l3167:
;usb_device.c: 2091: if(SetupPkt.bDscIndex<3)
	movlw	(03h)&0ffh
	movlb	2	; () banked
	movlb	2	; () banked
	subwf	(0+(544+02h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u201_41
	goto	i2u201_40
i2u201_41:
	goto	i2l3173
i2u201_40:
	line	2094
	
i2l3169:; BSR set to: 2

;usb_device.c: 2092: {
;usb_device.c: 2094: inPipes[0].pSrc.bRom = *(USB_SD_Ptr+SetupPkt.bDscIndex);
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+02h))&0ffh,w	;volatile
	mullw	02h
	movlw	low((_USB_SD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_SD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes)	;volatile
	tblrd*-
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+1)	;volatile

	line	2096
	
i2l3171:; BSR set to: 0

;usb_device.c: 2096: inPipes[0].wCount.Val = *inPipes[0].pSrc.bRom;
	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u202_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u202_40
i2u202_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u202_40:
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movf	((??_USBStdGetDscHandler+0+0)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlb	0	; () banked
	clrf	(1+(_inPipes+04h))&0ffh	;volatile
	line	2097
;usb_device.c: 2097: }
	goto	i2l461
	line	2107
	
i2l458:; BSR set to: 0

	line	2109
	
i2l3173:
;usb_device.c: 2107: else
;usb_device.c: 2108: {
;usb_device.c: 2109: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l461
	line	2110
	
i2l459:; BSR set to: 0

	line	2111
;usb_device.c: 2110: }
;usb_device.c: 2111: break;
	goto	i2l461
	line	2112
;usb_device.c: 2112: default:
	
i2l460:; BSR set to: 0

	line	2113
	
i2l3175:
;usb_device.c: 2113: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2114
;usb_device.c: 2114: break;
	goto	i2l461
	line	2115
	
i2l3177:; BSR set to: 0

;usb_device.c: 2115: }
	goto	i2l461
	line	2054
	
i2l451:; BSR set to: 0

	
i2l3179:; BSR set to: 0

	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l3155
	xorlw	2^1	; case 2
	skipnz
	goto	i2l454
	xorlw	3^2	; case 3
	skipnz
	goto	i2l3167
	goto	i2l3175

	line	2115
	
i2l453:; BSR set to: 2

	goto	i2l461
	line	2116
	
i2l450:; BSR set to: 2

	line	2117
	
i2l461:
	return
	opt stack 0
GLOBAL	__end_of_USBStdGetDscHandler
	__end_of_USBStdGetDscHandler:
	signat	_USBStdGetDscHandler,88
	global	_USBStdFeatureReqHandler

;; *************** function _USBStdFeatureReqHandler *****************
;; Defined at:
;;		line 2759 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2   28[COMRAM] PTR struct __BDT
;;		 -> RAM(767), BDT(32), NULL(0), 
;;  pUEP            2   25[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;;  current_ep_d    1   27[COMRAM] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	2759
global __ptext33
__ptext33:
psect	text33
	file	"HIDD\USB\usb_device.c"
	line	2759
	global	__size_of_USBStdFeatureReqHandler
	__size_of_USBStdFeatureReqHandler	equ	__end_of_USBStdFeatureReqHandler-_USBStdFeatureReqHandler
	
_USBStdFeatureReqHandler:
;incstack = 0
	opt	stack 18
	line	2805
	
i2l3209:
;usb_device.c: 2761: BDT_ENTRY *p;
;usb_device.c: 2762: EP_STATUS current_ep_data;
;usb_device.c: 2766: unsigned char* pUEP;
;usb_device.c: 2804: if((SetupPkt.bFeature == 1)&&
;usb_device.c: 2805: (SetupPkt.Recipient == (0x00)))
	movlb	2	; () banked
	movlb	2	; () banked
	decf	(0+(544+02h))&0ffh,w	;volatile

	btfss	status,2
	goto	i2u208_41
	goto	i2u208_40
i2u208_41:
	goto	i2l3221
i2u208_40:
	
i2l3211:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	((544))&0ffh,w	;volatile
	andlw	(1<<5)-1
	iorlw	0
	btfss	status,2
	goto	i2u209_41
	goto	i2u209_40
i2u209_41:
	goto	i2l3221
i2u209_40:
	line	2807
	
i2l3213:; BSR set to: 2

;usb_device.c: 2806: {
;usb_device.c: 2807: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2808
	
i2l3215:; BSR set to: 0

;usb_device.c: 2808: if(SetupPkt.bRequest == 3)
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+01h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	i2u210_41
	goto	i2u210_40
i2u210_41:
	goto	i2l3219
i2u210_40:
	line	2809
	
i2l3217:; BSR set to: 2

;usb_device.c: 2809: RemoteWakeup = 1;
	movlw	low(01h)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l3221
	line	2810
	
i2l543:; BSR set to: 2

	line	2811
	
i2l3219:; BSR set to: 2

;usb_device.c: 2810: else
;usb_device.c: 2811: RemoteWakeup = 0;
	movlw	low(0)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l3221
	
i2l544:; BSR set to: 2

	goto	i2l3221
	line	2812
	
i2l542:; BSR set to: 2

	line	2818
	
i2l3221:; BSR set to: 2

;usb_device.c: 2812: }
;usb_device.c: 2815: if((SetupPkt.bFeature == 0)&&
;usb_device.c: 2816: (SetupPkt.Recipient == (0x02))&&
;usb_device.c: 2817: (SetupPkt.EPNum != 0) && (SetupPkt.EPNum <= 1)&&
;usb_device.c: 2818: (USBDeviceState == CONFIGURED_STATE))
	movlb	2	; () banked
	movlb	2	; () banked
	tstfsz	(0+(544+02h))&0ffh	;volatile
	goto	i2u211_41
	goto	i2u211_40
i2u211_41:
	goto	i2l565
i2u211_40:
	
i2l3223:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	((544))&0ffh,w	;volatile
	andlw	(1<<5)-1
	xorlw	02h
	btfss	status,2
	goto	i2u212_41
	goto	i2u212_40
i2u212_41:
	goto	i2l565
i2u212_40:
	
i2l3225:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	i2u213_41
	goto	i2u213_40
i2u213_41:
	goto	i2l565
i2u213_40:
	
i2l3227:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movlw	(02h)&0ffh
	subwf	((??_USBStdFeatureReqHandler+0+0)),c,w
	btfsc	status,0
	goto	i2u214_41
	goto	i2u214_40
i2u214_41:
	goto	i2l565
i2u214_40:
	
i2l3229:; BSR set to: 2

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	32

	btfss	status,2
	goto	i2u215_41
	goto	i2u215_40
i2u215_41:
	goto	i2l565
i2u215_40:
	line	2822
	
i2l3231:; BSR set to: 0

;usb_device.c: 2819: {
;usb_device.c: 2822: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2825
;usb_device.c: 2825: if(SetupPkt.EPDir == 0)
	movlb	2	; () banked
	btfsc	(0+(544+04h))&0ffh,7	;volatile
	goto	i2u216_41
	goto	i2u216_40
i2u216_41:
	goto	i2l3235
i2u216_40:
	line	2827
	
i2l3233:; BSR set to: 2

;usb_device.c: 2826: {
;usb_device.c: 2827: p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2828
;usb_device.c: 2828: current_ep_data.Val = ep_data_out[SetupPkt.EPNum].Val;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	line	2829
;usb_device.c: 2829: }
	goto	i2l3237
	line	2830
	
i2l546:; BSR set to: 0

	line	2832
	
i2l3235:
;usb_device.c: 2830: else
;usb_device.c: 2831: {
;usb_device.c: 2832: p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2833
;usb_device.c: 2833: current_ep_data.Val = ep_data_in[SetupPkt.EPNum].Val;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	goto	i2l3237
	line	2834
	
i2l547:; BSR set to: 0

	line	2840
	
i2l3237:; BSR set to: 0

;usb_device.c: 2834: }
;usb_device.c: 2840: if(current_ep_data.bits.ping_pong_state == 0)
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,0
	goto	i2u217_41
	goto	i2u217_40
i2u217_41:
	goto	i2l3241
i2u217_40:
	line	2842
	
i2l3239:; BSR set to: 0

;usb_device.c: 2841: {
;usb_device.c: 2842: p = (BDT_ENTRY*)(((uintptr_t)p) & (~0x0004));
	movlw	low(0FFFBh)
	andwf	((c:USBStdFeatureReqHandler@p)),c,w
	
	movwf	((c:USBStdFeatureReqHandler@p)),c
	movlw	high(0FFFBh)
	andwf	((c:USBStdFeatureReqHandler@p+1)),c,w
	movwf	1+((c:USBStdFeatureReqHandler@p)),c
	line	2843
;usb_device.c: 2843: }
	goto	i2l3243
	line	2844
	
i2l548:; BSR set to: 0

	line	2846
	
i2l3241:; BSR set to: 0

;usb_device.c: 2844: else
;usb_device.c: 2845: {
;usb_device.c: 2846: p = (BDT_ENTRY*)(((uintptr_t)p) | 0x0004);
	movlw	04h
	iorwf	((c:USBStdFeatureReqHandler@p)),c,w
	
	movwf	((c:USBStdFeatureReqHandler@p)),c
	movf	((c:USBStdFeatureReqHandler@p+1)),c,w
	movwf	1+((c:USBStdFeatureReqHandler@p)),c
	goto	i2l3243
	line	2847
	
i2l549:; BSR set to: 0

	line	2852
	
i2l3243:; BSR set to: 0

;usb_device.c: 2847: }
;usb_device.c: 2852: if(SetupPkt.EPDir == 0)
	movlb	2	; () banked
	btfsc	(0+(544+04h))&0ffh,7	;volatile
	goto	i2u218_41
	goto	i2u218_40
i2u218_41:
	goto	i2l3247
i2u218_40:
	line	2854
	
i2l3245:; BSR set to: 2

;usb_device.c: 2853: {
;usb_device.c: 2854: pBDTEntryOut[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	line	2855
;usb_device.c: 2855: }
	goto	i2l3249
	line	2856
	
i2l550:; BSR set to: 0

	line	2858
	
i2l3247:
;usb_device.c: 2856: else
;usb_device.c: 2857: {
;usb_device.c: 2858: pBDTEntryIn[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	goto	i2l3249
	line	2859
	
i2l551:; BSR set to: 0

	line	2862
	
i2l3249:; BSR set to: 0

;usb_device.c: 2859: }
;usb_device.c: 2862: if(SetupPkt.bRequest == 3)
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+01h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	i2u219_41
	goto	i2u219_40
i2u219_41:
	goto	i2l3263
i2u219_40:
	line	2864
	
i2l3251:; BSR set to: 2

;usb_device.c: 2863: {
;usb_device.c: 2864: if(p->STAT.UOWN == 1)
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u220_41
	goto	i2u220_40
i2u220_41:
	goto	i2l3259
i2u220_40:
	line	2868
	
i2l3253:; BSR set to: 2

;usb_device.c: 2865: {
;usb_device.c: 2868: if(SetupPkt.EPDir == 0)
	movlb	2	; () banked
	btfsc	(0+(544+04h))&0ffh,7	;volatile
	goto	i2u221_41
	goto	i2u221_40
i2u221_41:
	goto	i2l3257
i2u221_40:
	line	2870
	
i2l3255:; BSR set to: 2

;usb_device.c: 2869: {
;usb_device.c: 2870: ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 1;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bsf	indf2,1
	line	2871
;usb_device.c: 2871: }
	goto	i2l3259
	line	2872
	
i2l554:; BSR set to: 0

	line	2874
	
i2l3257:
;usb_device.c: 2872: else
;usb_device.c: 2873: {
;usb_device.c: 2874: ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 1;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bsf	indf2,1
	goto	i2l3259
	line	2875
	
i2l555:; BSR set to: 0

	goto	i2l3259
	line	2876
	
i2l553:; BSR set to: 0

	line	2879
	
i2l3259:
;usb_device.c: 2875: }
;usb_device.c: 2876: }
;usb_device.c: 2879: p->STAT.Val |= 0x04;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(2/8)
	bsf	plusw2,(2)&7
	line	2880
	
i2l3261:
;usb_device.c: 2880: p->STAT.Val |= 0x80;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2881
;usb_device.c: 2881: }
	goto	i2l565
	line	2882
	
i2l552:
	line	2887
	
i2l3263:
;usb_device.c: 2882: else
;usb_device.c: 2883: {
;usb_device.c: 2887: p = (BDT_ENTRY*)(((uintptr_t)p) ^ 0x0004);
	movlw	04h
	xorwf	((c:USBStdFeatureReqHandler@p)),c,w
	
	movwf	((c:USBStdFeatureReqHandler@p)),c
	movf	((c:USBStdFeatureReqHandler@p+1)),c,w
	movwf	1+((c:USBStdFeatureReqHandler@p)),c
	line	2889
	
i2l3265:
;usb_device.c: 2889: if(p->STAT.UOWN == 1)
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u222_41
	goto	i2u222_40
i2u222_41:
	goto	i2l3273
i2u222_40:
	line	2893
	
i2l3267:
;usb_device.c: 2890: {
;usb_device.c: 2893: p->STAT.Val &= (~0x80);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2894
	
i2l3269:
;usb_device.c: 2894: p->STAT.Val |= 0x40;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	line	2895
	
i2l3271:
;usb_device.c: 2895: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER_TERMINATED,p,sizeof(p));
	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)
	movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2896
;usb_device.c: 2896: }
	goto	i2l3275
	line	2897
	
i2l557:
	line	2900
	
i2l3273:
;usb_device.c: 2897: else
;usb_device.c: 2898: {
;usb_device.c: 2900: p->STAT.Val |= 0x40;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	goto	i2l3275
	line	2901
	
i2l558:
	line	2905
	
i2l3275:
;usb_device.c: 2901: }
;usb_device.c: 2905: p = (BDT_ENTRY*)(((uintptr_t)p) ^ 0x0004);
	movlw	04h
	xorwf	((c:USBStdFeatureReqHandler@p)),c,w
	
	movwf	((c:USBStdFeatureReqHandler@p)),c
	movf	((c:USBStdFeatureReqHandler@p+1)),c,w
	movwf	1+((c:USBStdFeatureReqHandler@p)),c
	line	2911
	
i2l3277:
;usb_device.c: 2911: if((current_ep_data.bits.transfer_terminated != 0) || (p->STAT.UOWN == 1))
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,1
	goto	i2u223_41
	goto	i2u223_40
i2u223_41:
	goto	i2l561
i2u223_40:
	
i2l3279:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	indf2,7
	goto	i2u224_41
	goto	i2u224_40
i2u224_41:
	goto	i2l3289
i2u224_40:
	
i2l561:
	line	2913
;usb_device.c: 2912: {
;usb_device.c: 2913: if(SetupPkt.EPDir == 0)
	movlb	2	; () banked
	btfsc	(0+(544+04h))&0ffh,7	;volatile
	goto	i2u225_41
	goto	i2u225_40
i2u225_41:
	goto	i2l3283
i2u225_40:
	line	2915
	
i2l3281:; BSR set to: 2

;usb_device.c: 2914: {
;usb_device.c: 2915: ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 0;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bcf	indf2,1
	line	2916
;usb_device.c: 2916: }
	goto	i2l3285
	line	2917
	
i2l562:; BSR set to: 0

	line	2919
	
i2l3283:
;usb_device.c: 2917: else
;usb_device.c: 2918: {
;usb_device.c: 2919: ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 0;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	bcf	indf2,1
	goto	i2l3285
	line	2920
	
i2l563:; BSR set to: 0

	line	2922
	
i2l3285:; BSR set to: 0

;usb_device.c: 2920: }
;usb_device.c: 2922: p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	line	2925
	
i2l3287:; BSR set to: 0

;usb_device.c: 2925: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER_TERMINATED,p,sizeof(p));
	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1)),c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event)),c
		movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)
	movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1)),c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2926
;usb_device.c: 2926: }
	goto	i2l3291
	line	2927
	
i2l559:
	line	2930
	
i2l3289:
;usb_device.c: 2927: else
;usb_device.c: 2928: {
;usb_device.c: 2930: p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	goto	i2l3291
	line	2931
	
i2l564:
	line	2978
	
i2l3291:
;usb_device.c: 2931: }
;usb_device.c: 2978: pUEP = (unsigned char*)(&UEP0+SetupPkt.EPNum);
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low(3923)	;volatile
	movwf	(??_USBStdFeatureReqHandler+1+0)&0ffh,c
	movlw	high(3923)	;volatile
	movwf	(??_USBStdFeatureReqHandler+1+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_USBStdFeatureReqHandler+1+0),c
	movf	(prodh),c,w
	addwfc	(??_USBStdFeatureReqHandler+1+1),c
	movff	??_USBStdFeatureReqHandler+1+0,(c:USBStdFeatureReqHandler@pUEP)
	movff	??_USBStdFeatureReqHandler+1+1,(c:USBStdFeatureReqHandler@pUEP+1)
	line	2982
	
i2l3293:; BSR set to: 2

;usb_device.c: 2982: *pUEP &= ~0x0001;
	movff	(c:USBStdFeatureReqHandler@pUEP),fsr2l
	movff	(c:USBStdFeatureReqHandler@pUEP+1),fsr2h
	movlw	0FEh
	andwf	indf2
	goto	i2l565
	line	2983
	
i2l556:; BSR set to: 2

	goto	i2l565
	line	2984
	
i2l545:; BSR set to: 2

	line	2985
	
i2l565:
	return
	opt stack 0
GLOBAL	__end_of_USBStdFeatureReqHandler
	__end_of_USBStdFeatureReqHandler:
	signat	_USBStdFeatureReqHandler,88
	global	_USER_USB_CALLBACK_EVENT_HANDLER

;; *************** function _USER_USB_CALLBACK_EVENT_HANDLER *****************
;; Defined at:
;;		line 51 in file "HIDD\usb_events.c"
;; Parameters:    Size  Location     Type
;;  event           2   14[COMRAM] enum E4810
;;  pdata           2   16[COMRAM] PTR void 
;;		 -> RAM(767), USTATcopy(1), USBActiveConfiguration(1), BDT(32), 
;;		 -> NULL(0), 
;;  size            2   18[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_APP_DeviceCustomHIDInitialize
;;		_APP_LEDUpdateUSBStatus
;;		_USBCheckHIDRequest
;;		i2_SYSTEM_Initialize
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBStdSetCfgHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USBCtrlTrfSetupHandler
;;		_USBCheckStdRequest
;;		_USBStdFeatureReqHandler
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"HIDD\usb_events.c"
	line	51
global __ptext34
__ptext34:
psect	text34
	file	"HIDD\usb_events.c"
	line	51
	global	__size_of_USER_USB_CALLBACK_EVENT_HANDLER
	__size_of_USER_USB_CALLBACK_EVENT_HANDLER	equ	__end_of_USER_USB_CALLBACK_EVENT_HANDLER-_USER_USB_CALLBACK_EVENT_HANDLER
	
_USER_USB_CALLBACK_EVENT_HANDLER:
;incstack = 0
	opt	stack 22
	line	53
	
i2l2981:
;usb_events.c: 53: switch((int)event)
	goto	i2l2995
	line	55
;usb_events.c: 54: {
;usb_events.c: 55: case EVENT_TRANSFER:
	
i2l147:
	line	56
;usb_events.c: 56: break;
	goto	i2l158
	line	58
;usb_events.c: 58: case EVENT_SOF:
	
i2l149:
	line	61
	
i2l2983:
;usb_events.c: 61: APP_LEDUpdateUSBStatus();
	call	_APP_LEDUpdateUSBStatus	;wreg free
	line	62
;usb_events.c: 62: break;
	goto	i2l158
	line	64
;usb_events.c: 64: case EVENT_SUSPEND:
	
i2l150:
	line	66
	
i2l2985:
;usb_events.c: 66: APP_LEDUpdateUSBStatus();
	call	_APP_LEDUpdateUSBStatus	;wreg free
	line	74
;usb_events.c: 74: SYSTEM_Initialize(SYSTEM_STATE_USB_SUSPEND);
	movlw	(01h)&0ffh
	
	call	i2_SYSTEM_Initialize
	line	75
;usb_events.c: 75: break;
	goto	i2l158
	line	77
;usb_events.c: 77: case EVENT_RESUME:
	
i2l151:
	line	79
	
i2l2987:
;usb_events.c: 79: APP_LEDUpdateUSBStatus();
	call	_APP_LEDUpdateUSBStatus	;wreg free
	line	85
;usb_events.c: 85: SYSTEM_Initialize(SYSTEM_STATE_USB_RESUME);
	movlw	(02h)&0ffh
	
	call	i2_SYSTEM_Initialize
	line	86
;usb_events.c: 86: break;
	goto	i2l158
	line	88
;usb_events.c: 88: case EVENT_CONFIGURED:
	
i2l152:
	line	91
	
i2l2989:
;usb_events.c: 91: APP_DeviceCustomHIDInitialize();
	call	_APP_DeviceCustomHIDInitialize	;wreg free
	line	92
;usb_events.c: 92: break;
	goto	i2l158
	line	94
;usb_events.c: 94: case EVENT_SET_DESCRIPTOR:
	
i2l153:
	line	95
;usb_events.c: 95: break;
	goto	i2l158
	line	97
;usb_events.c: 97: case EVENT_EP0_REQUEST:
	
i2l154:
	line	100
	
i2l2991:
;usb_events.c: 100: USBCheckHIDRequest();
	call	_USBCheckHIDRequest	;wreg free
	line	101
;usb_events.c: 101: break;
	goto	i2l158
	line	103
;usb_events.c: 103: case EVENT_BUS_ERROR:
	
i2l155:
	line	104
;usb_events.c: 104: break;
	goto	i2l158
	line	106
;usb_events.c: 106: case EVENT_TRANSFER_TERMINATED:
	
i2l156:
	line	107
;usb_events.c: 107: break;
	goto	i2l158
	line	109
;usb_events.c: 109: default:
	
i2l157:
	line	110
;usb_events.c: 110: break;
	goto	i2l158
	line	111
	
i2l2993:
;usb_events.c: 111: }
	goto	i2l158
	line	53
	
i2l146:
	
i2l2995:
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event+1),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 127
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	i2l4147
	xorlw	127^0	; case 127
	skipnz
	goto	i2l4149
	goto	i2l158
	
i2l4147:
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0,c,w
	xorlw	1^0	; case 1
	skipnz
	goto	i2l2989
	xorlw	2^1	; case 2
	skipnz
	goto	i2l158
	xorlw	3^2	; case 3
	skipnz
	goto	i2l2991
	xorlw	5^3	; case 5
	skipnz
	goto	i2l158
	xorlw	114^5	; case 114
	skipnz
	goto	i2l158
	xorlw	115^114	; case 115
	skipnz
	goto	i2l2983
	xorlw	116^115	; case 116
	skipnz
	goto	i2l2987
	xorlw	117^116	; case 117
	skipnz
	goto	i2l2985
	goto	i2l158
	
i2l4149:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 255 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0,c,w
	xorlw	255^0	; case 255
	skipnz
	goto	i2l158
	goto	i2l158

	line	111
	
i2l148:
	line	113
;usb_events.c: 112: return 1;
;	Return value of _USER_USB_CALLBACK_EVENT_HANDLER is never used
	
i2l158:
	return
	opt stack 0
GLOBAL	__end_of_USER_USB_CALLBACK_EVENT_HANDLER
	__end_of_USER_USB_CALLBACK_EVENT_HANDLER:
	signat	_USER_USB_CALLBACK_EVENT_HANDLER,12409
	global	i2_SYSTEM_Initialize

;; *************** function i2_SYSTEM_Initialize *****************
;; Defined at:
;;		line 38 in file "HIDD\system.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     enum E4601
;; Auto vars:     Size  Location     Type
;;  state           1    1[COMRAM] enum E4601
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2_ADC_Enable
;;		i2_ADC_SetConfiguration
;;		i2_BUTTON_Enable
;;		i2_LED_Enable
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"HIDD\system.c"
	line	38
global __ptext35
__ptext35:
psect	text35
	file	"HIDD\system.c"
	line	38
	global	__size_ofi2_SYSTEM_Initialize
	__size_ofi2_SYSTEM_Initialize	equ	__end_ofi2_SYSTEM_Initialize-i2_SYSTEM_Initialize
	
i2_SYSTEM_Initialize:
;incstack = 0
	opt	stack 23
;i2SYSTEM_Initialize@state stored from wreg
	movwf	((c:i2SYSTEM_Initialize@state)),c
	line	40
	
i2l2963:
;system.c: 40: switch(state)
	goto	i2l2979
	line	42
;system.c: 41: {
;system.c: 42: case SYSTEM_STATE_USB_START:
	
i2l128:
	line	44
	
i2l2965:
;system.c: 44: TRISB &= 0x7F;
	bcf	(0+(7/8)+(c:3987)),c,(7)&7	;volatile
	line	45
;system.c: 45: LATB |= 0x80;
	bsf	(0+(7/8)+(c:3978)),c,(7)&7	;volatile
	line	47
	
i2l2967:
;system.c: 47: LED_Enable(LED_D1);
	movlw	(01h)&0ffh
	
	call	i2_LED_Enable
	line	48
	
i2l2969:
;system.c: 48: LED_Enable(LED_D2);
	movlw	(02h)&0ffh
	
	call	i2_LED_Enable
	line	50
	
i2l2971:
;system.c: 50: BUTTON_Enable(BUTTON_S1);
	movlw	(01h)&0ffh
	
	call	i2_BUTTON_Enable
	line	52
	
i2l2973:
;system.c: 52: ADC_SetConfiguration(ADC_CONFIGURATION_DEFAULT);
	movlw	(0)&0ffh
	
	call	i2_ADC_SetConfiguration
	line	53
	
i2l2975:
;system.c: 53: ADC_Enable(ADC_CHANNEL_10);
	movlw	(0Ah)&0ffh
	
	call	i2_ADC_Enable
	line	54
;system.c: 54: break;
	goto	i2l132
	line	56
;system.c: 56: case SYSTEM_STATE_USB_SUSPEND:
	
i2l130:
	line	57
;system.c: 57: break;
	goto	i2l132
	line	59
;system.c: 59: case SYSTEM_STATE_USB_RESUME:
	
i2l131:
	line	60
;system.c: 60: break;
	goto	i2l132
	line	61
	
i2l2977:
;system.c: 61: }
	goto	i2l132
	line	40
	
i2l127:
	
i2l2979:
	movf	((c:i2SYSTEM_Initialize@state)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l2965
	xorlw	1^0	; case 1
	skipnz
	goto	i2l132
	xorlw	2^1	; case 2
	skipnz
	goto	i2l132
	goto	i2l132

	line	61
	
i2l129:
	line	62
	
i2l132:
	return
	opt stack 0
GLOBAL	__end_ofi2_SYSTEM_Initialize
	__end_ofi2_SYSTEM_Initialize:
	signat	i2_SYSTEM_Initialize,88
	global	i2_LED_Enable

;; *************** function i2_LED_Enable *****************
;; Defined at:
;;		line 220 in file "BSP\leds.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     enum E2
;; Auto vars:     Size  Location     Type
;;  led             1    0[COMRAM] enum E2
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i2_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"BSP\leds.c"
	line	220
global __ptext36
__ptext36:
psect	text36
	file	"BSP\leds.c"
	line	220
	global	__size_ofi2_LED_Enable
	__size_ofi2_LED_Enable	equ	__end_ofi2_LED_Enable-i2_LED_Enable
	
i2_LED_Enable:
;incstack = 0
	opt	stack 23
;i2LED_Enable@led stored from wreg
	movwf	((c:i2LED_Enable@led)),c
	line	222
	
i2l2857:
;leds.c: 222: switch(led)
	goto	i2l2861
	line	224
;leds.c: 223: {
;leds.c: 224: case LED_D1:
	
i2l723:
	line	225
;leds.c: 225: TRISCbits.TRISC0 = 0;
	bcf	((c:3988)),c,0	;volatile
	line	226
;leds.c: 226: break;
	goto	i2l729
	line	228
;leds.c: 228: case LED_D2:
	
i2l725:
	line	229
;leds.c: 229: TRISCbits.TRISC1 = 0;
	bcf	((c:3988)),c,1	;volatile
	line	230
;leds.c: 230: break;
	goto	i2l729
	line	232
;leds.c: 232: case LED_D3:
	
i2l726:
	line	233
;leds.c: 233: TRISCbits.TRISC2 = 0;
	bcf	((c:3988)),c,2	;volatile
	line	234
;leds.c: 234: break;
	goto	i2l729
	line	236
;leds.c: 236: case LED_D4:
	
i2l727:
	line	237
;leds.c: 237: TRISCbits.TRISC3 = 0;
	bcf	((c:3988)),c,3	;volatile
	line	238
;leds.c: 238: break;
	goto	i2l729
	line	240
;leds.c: 240: case LED_NONE:
	
i2l728:
	line	241
;leds.c: 241: break;
	goto	i2l729
	line	242
	
i2l2859:
;leds.c: 242: }
	goto	i2l729
	line	222
	
i2l722:
	
i2l2861:
	movf	((c:i2LED_Enable@led)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l729
	xorlw	1^0	; case 1
	skipnz
	goto	i2l723
	xorlw	2^1	; case 2
	skipnz
	goto	i2l725
	xorlw	3^2	; case 3
	skipnz
	goto	i2l726
	xorlw	4^3	; case 4
	skipnz
	goto	i2l727
	goto	i2l729

	line	242
	
i2l724:
	line	243
	
i2l729:
	return
	opt stack 0
GLOBAL	__end_ofi2_LED_Enable
	__end_ofi2_LED_Enable:
	signat	i2_LED_Enable,88
	global	i2_BUTTON_Enable

;; *************** function i2_BUTTON_Enable *****************
;; Defined at:
;;		line 85 in file "BSP\buttons.c"
;; Parameters:    Size  Location     Type
;;  button          1    wreg     enum E4576
;; Auto vars:     Size  Location     Type
;;  button          1    0[COMRAM] enum E4576
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i2_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"BSP\buttons.c"
	line	85
global __ptext37
__ptext37:
psect	text37
	file	"BSP\buttons.c"
	line	85
	global	__size_ofi2_BUTTON_Enable
	__size_ofi2_BUTTON_Enable	equ	__end_ofi2_BUTTON_Enable-i2_BUTTON_Enable
	
i2_BUTTON_Enable:
;incstack = 0
	opt	stack 23
;i2BUTTON_Enable@button stored from wreg
	movwf	((c:i2BUTTON_Enable@button)),c
	line	87
	
i2l2851:
;buttons.c: 87: switch(button)
	goto	i2l2855
	line	89
;buttons.c: 88: {
;buttons.c: 89: case BUTTON_S1:
	
i2l672:
	line	90
;buttons.c: 90: break;
	goto	i2l675
	line	92
;buttons.c: 92: case BUTTON_NONE:
	
i2l674:
	line	93
;buttons.c: 93: break;
	goto	i2l675
	line	94
	
i2l2853:
;buttons.c: 94: }
	goto	i2l675
	line	87
	
i2l671:
	
i2l2855:
	movf	((c:i2BUTTON_Enable@button)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l675
	xorlw	1^0	; case 1
	skipnz
	goto	i2l675
	goto	i2l675

	line	94
	
i2l673:
	line	95
	
i2l675:
	return
	opt stack 0
GLOBAL	__end_ofi2_BUTTON_Enable
	__end_ofi2_BUTTON_Enable:
	signat	i2_BUTTON_Enable,88
	global	i2_ADC_SetConfiguration

;; *************** function i2_ADC_SetConfiguration *****************
;; Defined at:
;;		line 75 in file "BSP\adc.c"
;; Parameters:    Size  Location     Type
;;  configuratio    1    wreg     enum E33
;; Auto vars:     Size  Location     Type
;;  configuratio    1    0[COMRAM] enum E33
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i2_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"BSP\adc.c"
	line	75
global __ptext38
__ptext38:
psect	text38
	file	"BSP\adc.c"
	line	75
	global	__size_ofi2_ADC_SetConfiguration
	__size_ofi2_ADC_SetConfiguration	equ	__end_ofi2_ADC_SetConfiguration-i2_ADC_SetConfiguration
	
i2_ADC_SetConfiguration:
;incstack = 0
	opt	stack 23
;i2ADC_SetConfiguration@configuration stored from wreg
	movwf	((c:i2ADC_SetConfiguration@configuration)),c
	line	77
	
i2l2843:
;adc.c: 77: if(configuration == ADC_CONFIGURATION_DEFAULT)
	tstfsz	((c:i2ADC_SetConfiguration@configuration)),c
	goto	i2u166_41
	goto	i2u166_40
i2u166_41:
	goto	i2l659
i2u166_40:
	line	79
	
i2l2845:
;adc.c: 78: {
;adc.c: 79: ADCON0=0x29;
	movlw	low(029h)
	movwf	((c:4034)),c	;volatile
	line	80
;adc.c: 80: ADCON1=0;
	movlw	low(0)
	movwf	((c:4033)),c	;volatile
	line	81
;adc.c: 81: ADCON2=0x3E;
	movlw	low(03Eh)
	movwf	((c:4032)),c	;volatile
	line	82
	
i2l2847:
;adc.c: 82: ADCON2bits.ADFM = 1;
	bsf	((c:4032)),c,7	;volatile
	goto	i2l659
	line	84
	
i2l2849:
;adc.c: 84: return 1;
;	Return value of i2_ADC_SetConfiguration is never used
	goto	i2l659
	line	85
	
i2l658:
	line	88
;adc.c: 85: }
;adc.c: 87: return 0;
;	Return value of i2_ADC_SetConfiguration is never used
	
i2l659:
	return
	opt stack 0
GLOBAL	__end_ofi2_ADC_SetConfiguration
	__end_ofi2_ADC_SetConfiguration:
	signat	i2_ADC_SetConfiguration,89
	global	i2_ADC_Enable

;; *************** function i2_ADC_Enable *****************
;; Defined at:
;;		line 61 in file "BSP\adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     enum E30
;; Auto vars:     Size  Location     Type
;;  channel         1    0[COMRAM] enum E30
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i2_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	line	61
global __ptext39
__ptext39:
psect	text39
	file	"BSP\adc.c"
	line	61
	global	__size_ofi2_ADC_Enable
	__size_ofi2_ADC_Enable	equ	__end_ofi2_ADC_Enable-i2_ADC_Enable
	
i2_ADC_Enable:
;incstack = 0
	opt	stack 23
;i2ADC_Enable@channel stored from wreg
	movwf	((c:i2ADC_Enable@channel)),c
	line	63
	
i2l2837:
;adc.c: 63: switch(channel)
	goto	i2l2841
	line	65
;adc.c: 64: {
;adc.c: 65: case ADC_CHANNEL_10:
	
i2l652:
	line	66
;adc.c: 66: TRISBbits.TRISB4 = 1;
	bsf	((c:3987)),c,4	;volatile
	line	67
;adc.c: 67: ANSELHbits.ANS10 = 1;
	bsf	((c:3967)),c,2	;volatile
	line	68
;adc.c: 68: return 1;
;	Return value of i2_ADC_Enable is never used
	goto	i2l653
	line	70
;adc.c: 70: default:
	
i2l654:
	line	71
;adc.c: 71: return 0;
;	Return value of i2_ADC_Enable is never used
	goto	i2l653
	line	72
	
i2l2839:
;adc.c: 72: }
	goto	i2l653
	line	63
	
i2l651:
	
i2l2841:
	movf	((c:i2ADC_Enable@channel)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 10 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	10^0	; case 10
	skipnz
	goto	i2l652
	goto	i2l653

	line	72
	
i2l655:
	line	73
	
i2l653:
	return
	opt stack 0
GLOBAL	__end_ofi2_ADC_Enable
	__end_ofi2_ADC_Enable:
	signat	i2_ADC_Enable,89
	global	_USBCheckHIDRequest

;; *************** function _USBCheckHIDRequest *****************
;; Defined at:
;;		line 153 in file "HIDD\USB\usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device_hid.c"
	line	153
global __ptext40
__ptext40:
psect	text40
	file	"HIDD\USB\usb_device_hid.c"
	line	153
	global	__size_of_USBCheckHIDRequest
	__size_of_USBCheckHIDRequest	equ	__end_of_USBCheckHIDRequest-_USBCheckHIDRequest
	
_USBCheckHIDRequest:
;incstack = 0
	opt	stack 24
	line	155
	
i2l2905:
;usb_device_hid.c: 155: if(SetupPkt.Recipient != (0x01)) return;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	((544))&0ffh,w	;volatile
	andlw	(1<<5)-1
	movwf	(??_USBCheckHIDRequest+0+0)&0ffh,c
	decf	((??_USBCheckHIDRequest+0+0)),c,w
	btfsc	status,2
	goto	i2u174_41
	goto	i2u174_40
i2u174_41:
	goto	i2l2909
i2u174_40:
	goto	i2l593
	
i2l2907:; BSR set to: 2

	goto	i2l593
	
i2l592:; BSR set to: 2

	line	156
	
i2l2909:; BSR set to: 2

;usb_device_hid.c: 156: if(SetupPkt.bIntfID != 0x00) return;
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+04h))&0ffh,w	;volatile
	btfsc	status,2
	goto	i2u175_41
	goto	i2u175_40
i2u175_41:
	goto	i2l2913
i2u175_40:
	goto	i2l593
	
i2l2911:; BSR set to: 2

	goto	i2l593
	
i2l594:; BSR set to: 2

	line	163
	
i2l2913:; BSR set to: 2

;usb_device_hid.c: 163: if(SetupPkt.bRequest == 6)
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+01h))&0ffh,w	;volatile
	xorlw	6

	btfss	status,2
	goto	i2u176_41
	goto	i2u176_40
i2u176_41:
	goto	i2l2935
i2u176_40:
	goto	i2l2933
	line	165
	
i2l2915:; BSR set to: 2

;usb_device_hid.c: 164: {
;usb_device_hid.c: 165: switch(SetupPkt.bDescriptorType)
	goto	i2l2933
	line	167
;usb_device_hid.c: 166: {
;usb_device_hid.c: 167: case 0x21:
	
i2l597:; BSR set to: 2

	line	168
	
i2l2917:; BSR set to: 2

;usb_device_hid.c: 168: if(USBActiveConfiguration == 1)
	decf	((c:_USBActiveConfiguration)),c,w	;volatile

	btfss	status,2
	goto	i2u177_41
	goto	i2u177_40
i2u177_41:
	goto	i2l2935
i2u177_40:
	line	170
	
i2l2919:; BSR set to: 2

;usb_device_hid.c: 169: {
;usb_device_hid.c: 170: { inPipes[0].pSrc.bRom = (const uint8_t*)&configDescriptor1 + 18; inPipes[0].wCount.Val = sizeof(USB_HID_DSC)+3; inPipes[0].info.Val = 0x40 | 0x80 | 0x00; };
		movlw	high(_configDescriptor1+012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low(_configDescriptor1+012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l2921:; BSR set to: 0

	movlw	high(09h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(09h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l2923:; BSR set to: 0

	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l2935
	line	174
	
i2l598:; BSR set to: 0

	line	175
;usb_device_hid.c: 174: }
;usb_device_hid.c: 175: break;
	goto	i2l2935
	line	176
;usb_device_hid.c: 176: case 0x22:
	
i2l600:; BSR set to: 0

	line	179
	
i2l2925:
;usb_device_hid.c: 178: {
;usb_device_hid.c: 179: { inPipes[0].pSrc.bRom = (const uint8_t*)&hid_rpt01; inPipes[0].wCount.Val = 29; inPipes[0].info.Val = 0x40 | 0x80 | 0x00; };
		movlw	high(_hid_rpt01)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low(_hid_rpt01)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l2927:; BSR set to: 0

	movlw	high(01Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(01Dh)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l2929:; BSR set to: 0

	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	184
;usb_device_hid.c: 183: }
;usb_device_hid.c: 184: break;
	goto	i2l2935
	line	185
;usb_device_hid.c: 185: case 0x23:
	
i2l601:; BSR set to: 0

	line	197
;usb_device_hid.c: 197: break;
	goto	i2l2935
	line	198
	
i2l2931:; BSR set to: 0

;usb_device_hid.c: 198: }
	goto	i2l2935
	line	165
	
i2l596:; BSR set to: 0

	
i2l2933:
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 33 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	33^0	; case 33
	skipnz
	goto	i2l2917
	xorlw	34^33	; case 34
	skipnz
	goto	i2l2925
	xorlw	35^34	; case 35
	skipnz
	goto	i2l2935
	goto	i2l2935

	line	198
	
i2l599:; BSR set to: 2

	goto	i2l2935
	line	199
	
i2l595:; BSR set to: 2

	line	201
	
i2l2935:
;usb_device_hid.c: 199: }
;usb_device_hid.c: 201: if(SetupPkt.RequestType != (0x20>>5))
	movlb	2	; () banked
	movlb	2	; () banked
	swapf	((544))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	movwf	(??_USBCheckHIDRequest+0+0)&0ffh,c
	decf	((??_USBCheckHIDRequest+0+0)),c,w
	btfsc	status,2
	goto	i2u178_41
	goto	i2u178_40
i2u178_41:
	goto	i2l2961
i2u178_40:
	goto	i2l593
	line	203
	
i2l2937:; BSR set to: 2

;usb_device_hid.c: 202: {
;usb_device_hid.c: 203: return;
	goto	i2l593
	line	204
	
i2l602:; BSR set to: 2

	line	206
;usb_device_hid.c: 204: }
;usb_device_hid.c: 206: switch(SetupPkt.bRequest)
	goto	i2l2961
	line	208
;usb_device_hid.c: 207: {
;usb_device_hid.c: 208: case 0x01:
	
i2l604:; BSR set to: 2

	line	212
;usb_device_hid.c: 212: break;
	goto	i2l593
	line	213
;usb_device_hid.c: 213: case 0x09:
	
i2l606:; BSR set to: 2

	line	217
;usb_device_hid.c: 217: break;
	goto	i2l593
	line	218
;usb_device_hid.c: 218: case 0x02:
	
i2l607:; BSR set to: 2

	line	219
	
i2l2939:; BSR set to: 2

;usb_device_hid.c: 219: { inPipes[0].pSrc.bRam = (uint8_t*)&idle_rate; inPipes[0].wCount.Val = 1; inPipes[0].info.Val = 0x40 | 0x80 | 0x01; };
		movlw	high((c:_idle_rate))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low((c:_idle_rate))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l2941:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l2943:; BSR set to: 0

	movlw	low(0C1h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	223
;usb_device_hid.c: 223: break;
	goto	i2l593
	line	224
;usb_device_hid.c: 224: case 0x0A:
	
i2l608:; BSR set to: 0

	line	225
	
i2l2945:
;usb_device_hid.c: 225: inPipes[0].info.Val = 0x00 | 0x80;
	movlw	low(080h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	226
	
i2l2947:; BSR set to: 0

;usb_device_hid.c: 226: idle_rate = SetupPkt.W_Value.byte.HB;
	movff	0+(544+03h),(c:_idle_rate)	;volatile
	line	228
;usb_device_hid.c: 227: ;
;usb_device_hid.c: 228: break;
	goto	i2l593
	line	229
;usb_device_hid.c: 229: case 0x03:
	
i2l609:; BSR set to: 0

	line	230
	
i2l2949:
;usb_device_hid.c: 230: { inPipes[0].pSrc.bRam = (uint8_t*)&active_protocol; inPipes[0].wCount.Val = 1; inPipes[0].info.Val = 0x00 | 0x80 | 0x01; };
		movlw	high((c:_active_protocol))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low((c:_active_protocol))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile

	
i2l2951:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	
i2l2953:; BSR set to: 0

	movlw	low(081h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	234
;usb_device_hid.c: 234: break;
	goto	i2l593
	line	235
;usb_device_hid.c: 235: case 0x0B:
	
i2l610:; BSR set to: 0

	line	236
	
i2l2955:
;usb_device_hid.c: 236: inPipes[0].info.Val = 0x00 | 0x80;
	movlw	low(080h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	237
	
i2l2957:; BSR set to: 0

;usb_device_hid.c: 237: active_protocol = SetupPkt.W_Value.byte.LB;
	movff	0+(544+02h),(c:_active_protocol)	;volatile
	line	238
;usb_device_hid.c: 238: break;
	goto	i2l593
	line	239
	
i2l2959:; BSR set to: 0

;usb_device_hid.c: 239: }
	goto	i2l593
	line	206
	
i2l603:; BSR set to: 0

	
i2l2961:
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l593
	xorlw	2^1	; case 2
	skipnz
	goto	i2l2939
	xorlw	3^2	; case 3
	skipnz
	goto	i2l2949
	xorlw	9^3	; case 9
	skipnz
	goto	i2l593
	xorlw	10^9	; case 10
	skipnz
	goto	i2l2945
	xorlw	11^10	; case 11
	skipnz
	goto	i2l2955
	goto	i2l593

	line	239
	
i2l605:; BSR set to: 2

	line	241
	
i2l593:
	return
	opt stack 0
GLOBAL	__end_of_USBCheckHIDRequest
	__end_of_USBCheckHIDRequest:
	signat	_USBCheckHIDRequest,88
	global	_APP_LEDUpdateUSBStatus

;; *************** function _APP_LEDUpdateUSBStatus *****************
;; Defined at:
;;		line 50 in file "HIDD\app_led_usb_status.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LED_Off
;;		_LED_On
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"HIDD\app_led_usb_status.c"
	line	50
global __ptext41
__ptext41:
psect	text41
	file	"HIDD\app_led_usb_status.c"
	line	50
	global	__size_of_APP_LEDUpdateUSBStatus
	__size_of_APP_LEDUpdateUSBStatus	equ	__end_of_APP_LEDUpdateUSBStatus-_APP_LEDUpdateUSBStatus
	
_APP_LEDUpdateUSBStatus:
;incstack = 0
	opt	stack 23
	line	54
	
i2l2869:
;app_led_usb_status.c: 52: static uint16_t ledCount = 0;
;app_led_usb_status.c: 54: if(UCONbits.SUSPND == 1)
	btfss	((c:3940)),c,1	;volatile
	goto	i2u167_41
	goto	i2u167_40
i2u167_41:
	goto	i2l2901
i2u167_40:
	line	56
	
i2l2871:
;app_led_usb_status.c: 55: {
;app_led_usb_status.c: 56: LED_Off(LED_D1);
	movlw	(01h)&0ffh
	
	call	_LED_Off
	goto	i2l96
	line	57
	
i2l2873:
;app_led_usb_status.c: 57: return;
	goto	i2l96
	line	58
	
i2l95:
	line	60
;app_led_usb_status.c: 58: }
;app_led_usb_status.c: 60: switch(USBDeviceState)
	goto	i2l2901
	line	62
;app_led_usb_status.c: 61: {
;app_led_usb_status.c: 62: case CONFIGURED_STATE:
	
i2l98:
	line	65
	
i2l2875:
;app_led_usb_status.c: 65: if(ledCount == 1)
	decf	((c:APP_LEDUpdateUSBStatus@ledCount)),c,w
	iorwf ((c:APP_LEDUpdateUSBStatus@ledCount+1)),c,w

	btfss	status,2
	goto	i2u168_41
	goto	i2u168_40
i2u168_41:
	goto	i2l2879
i2u168_40:
	line	67
	
i2l2877:
;app_led_usb_status.c: 66: {
;app_led_usb_status.c: 67: LED_On(LED_D1);
	movlw	(01h)&0ffh
	
	call	_LED_On
	line	68
;app_led_usb_status.c: 68: }
	goto	i2l2903
	line	69
	
i2l99:
	
i2l2879:
;app_led_usb_status.c: 69: else if(ledCount == 75)
	movf	((c:APP_LEDUpdateUSBStatus@ledCount)),c,w
	xorlw	75
	iorwf ((c:APP_LEDUpdateUSBStatus@ledCount+1)),c,w

	btfss	status,2
	goto	i2u169_41
	goto	i2u169_40
i2u169_41:
	goto	i2l2883
i2u169_40:
	line	71
	
i2l2881:
;app_led_usb_status.c: 70: {
;app_led_usb_status.c: 71: LED_Off(LED_D1);
	movlw	(01h)&0ffh
	
	call	_LED_Off
	line	72
;app_led_usb_status.c: 72: }
	goto	i2l2903
	line	73
	
i2l101:
	
i2l2883:
;app_led_usb_status.c: 73: else if(ledCount > 150)
	movlw	097h
	subwf	((c:APP_LEDUpdateUSBStatus@ledCount)),c,w
	movlw	0
	subwfb	((c:APP_LEDUpdateUSBStatus@ledCount+1)),c,w
	btfss	status,0
	goto	i2u170_41
	goto	i2u170_40
i2u170_41:
	goto	i2l2903
i2u170_40:
	line	75
	
i2l2885:
;app_led_usb_status.c: 74: {
;app_led_usb_status.c: 75: ledCount = 0;
	movlw	high(0)
	movwf	((c:APP_LEDUpdateUSBStatus@ledCount+1)),c
	movlw	low(0)
	movwf	((c:APP_LEDUpdateUSBStatus@ledCount)),c
	goto	i2l2903
	line	76
	
i2l103:
	goto	i2l2903
	line	77
	
i2l102:
	goto	i2l2903
	
i2l100:
;app_led_usb_status.c: 76: }
;app_led_usb_status.c: 77: break;
	goto	i2l2903
	line	79
;app_led_usb_status.c: 79: default:
	
i2l105:
	line	82
	
i2l2887:
;app_led_usb_status.c: 82: if(ledCount == 1)
	decf	((c:APP_LEDUpdateUSBStatus@ledCount)),c,w
	iorwf ((c:APP_LEDUpdateUSBStatus@ledCount+1)),c,w

	btfss	status,2
	goto	i2u171_41
	goto	i2u171_40
i2u171_41:
	goto	i2l2891
i2u171_40:
	line	84
	
i2l2889:
;app_led_usb_status.c: 83: {
;app_led_usb_status.c: 84: LED_On(LED_D1);
	movlw	(01h)&0ffh
	
	call	_LED_On
	line	85
;app_led_usb_status.c: 85: }
	goto	i2l2903
	line	86
	
i2l106:
	
i2l2891:
;app_led_usb_status.c: 86: else if(ledCount == 50)
	movf	((c:APP_LEDUpdateUSBStatus@ledCount)),c,w
	xorlw	50
	iorwf ((c:APP_LEDUpdateUSBStatus@ledCount+1)),c,w

	btfss	status,2
	goto	i2u172_41
	goto	i2u172_40
i2u172_41:
	goto	i2l2895
i2u172_40:
	line	88
	
i2l2893:
;app_led_usb_status.c: 87: {
;app_led_usb_status.c: 88: LED_Off(LED_D1);
	movlw	(01h)&0ffh
	
	call	_LED_Off
	line	89
;app_led_usb_status.c: 89: }
	goto	i2l2903
	line	90
	
i2l108:
	
i2l2895:
;app_led_usb_status.c: 90: else if(ledCount > 950)
	movlw	0B7h
	subwf	((c:APP_LEDUpdateUSBStatus@ledCount)),c,w
	movlw	03h
	subwfb	((c:APP_LEDUpdateUSBStatus@ledCount+1)),c,w
	btfss	status,0
	goto	i2u173_41
	goto	i2u173_40
i2u173_41:
	goto	i2l2903
i2u173_40:
	line	92
	
i2l2897:
;app_led_usb_status.c: 91: {
;app_led_usb_status.c: 92: ledCount = 0;
	movlw	high(0)
	movwf	((c:APP_LEDUpdateUSBStatus@ledCount+1)),c
	movlw	low(0)
	movwf	((c:APP_LEDUpdateUSBStatus@ledCount)),c
	goto	i2l2903
	line	93
	
i2l110:
	goto	i2l2903
	line	94
	
i2l109:
	goto	i2l2903
	
i2l107:
;app_led_usb_status.c: 93: }
;app_led_usb_status.c: 94: break;
	goto	i2l2903
	line	95
	
i2l2899:
;app_led_usb_status.c: 95: }
	goto	i2l2903
	line	60
	
i2l97:
	
i2l2901:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 32 to 32
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	32^0	; case 32
	skipnz
	goto	i2l2875
	goto	i2l2887

	line	95
	
i2l104:; BSR set to: 0

	line	98
	
i2l2903:
;app_led_usb_status.c: 98: ledCount++;
	infsnz	((c:APP_LEDUpdateUSBStatus@ledCount)),c
	incf	((c:APP_LEDUpdateUSBStatus@ledCount+1)),c
	line	99
	
i2l96:
	return
	opt stack 0
GLOBAL	__end_of_APP_LEDUpdateUSBStatus
	__end_of_APP_LEDUpdateUSBStatus:
	signat	_APP_LEDUpdateUSBStatus,88
	global	_LED_On

;; *************** function _LED_On *****************
;; Defined at:
;;		line 59 in file "BSP\leds.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     enum E2
;; Auto vars:     Size  Location     Type
;;  led             1    0[COMRAM] enum E2
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_LEDUpdateUSBStatus
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"BSP\leds.c"
	line	59
global __ptext42
__ptext42:
psect	text42
	file	"BSP\leds.c"
	line	59
	global	__size_of_LED_On
	__size_of_LED_On	equ	__end_of_LED_On-_LED_On
	
_LED_On:
;incstack = 0
	opt	stack 23
;LED_On@led stored from wreg
	movwf	((c:LED_On@led)),c
	line	61
	
i2l2801:
;leds.c: 61: switch(led)
	goto	i2l2805
	line	63
;leds.c: 62: {
;leds.c: 63: case LED_D1:
	
i2l683:
	line	64
;leds.c: 64: LATCbits.LATC0 = 1;
	bsf	((c:3979)),c,0	;volatile
	line	65
;leds.c: 65: break;
	goto	i2l689
	line	67
;leds.c: 67: case LED_D2:
	
i2l685:
	line	68
;leds.c: 68: LATCbits.LATC1 = 1;
	bsf	((c:3979)),c,1	;volatile
	line	69
;leds.c: 69: break;
	goto	i2l689
	line	71
;leds.c: 71: case LED_D3:
	
i2l686:
	line	72
;leds.c: 72: LATCbits.LATC2 = 1;
	bsf	((c:3979)),c,2	;volatile
	line	73
;leds.c: 73: break;
	goto	i2l689
	line	75
;leds.c: 75: case LED_D4:
	
i2l687:
	line	76
;leds.c: 76: LATCbits.LATC3 = 1;
	bsf	((c:3979)),c,3	;volatile
	line	77
;leds.c: 77: break;
	goto	i2l689
	line	79
;leds.c: 79: case LED_NONE:
	
i2l688:
	line	80
;leds.c: 80: break;
	goto	i2l689
	line	81
	
i2l2803:
;leds.c: 81: }
	goto	i2l689
	line	61
	
i2l682:
	
i2l2805:
	movf	((c:LED_On@led)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l689
	xorlw	1^0	; case 1
	skipnz
	goto	i2l683
	xorlw	2^1	; case 2
	skipnz
	goto	i2l685
	xorlw	3^2	; case 3
	skipnz
	goto	i2l686
	xorlw	4^3	; case 4
	skipnz
	goto	i2l687
	goto	i2l689

	line	81
	
i2l684:
	line	82
	
i2l689:
	return
	opt stack 0
GLOBAL	__end_of_LED_On
	__end_of_LED_On:
	signat	_LED_On,4216
	global	_LED_Off

;; *************** function _LED_Off *****************
;; Defined at:
;;		line 100 in file "BSP\leds.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     enum E2
;; Auto vars:     Size  Location     Type
;;  led             1    0[COMRAM] enum E2
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_LEDUpdateUSBStatus
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	line	100
global __ptext43
__ptext43:
psect	text43
	file	"BSP\leds.c"
	line	100
	global	__size_of_LED_Off
	__size_of_LED_Off	equ	__end_of_LED_Off-_LED_Off
	
_LED_Off:
;incstack = 0
	opt	stack 23
;LED_Off@led stored from wreg
	movwf	((c:LED_Off@led)),c
	line	102
	
i2l2795:
;leds.c: 102: switch(led)
	goto	i2l2799
	line	104
;leds.c: 103: {
;leds.c: 104: case LED_D1:
	
i2l693:
	line	105
;leds.c: 105: LATCbits.LATC0 = 0;
	bcf	((c:3979)),c,0	;volatile
	line	106
;leds.c: 106: break;
	goto	i2l699
	line	108
;leds.c: 108: case LED_D2:
	
i2l695:
	line	109
;leds.c: 109: LATCbits.LATC1 = 0;
	bcf	((c:3979)),c,1	;volatile
	line	110
;leds.c: 110: break;
	goto	i2l699
	line	112
;leds.c: 112: case LED_D3:
	
i2l696:
	line	113
;leds.c: 113: LATCbits.LATC2 = 0;
	bcf	((c:3979)),c,2	;volatile
	line	114
;leds.c: 114: break;
	goto	i2l699
	line	116
;leds.c: 116: case LED_D4:
	
i2l697:
	line	117
;leds.c: 117: LATCbits.LATC3 = 0;
	bcf	((c:3979)),c,3	;volatile
	line	118
;leds.c: 118: break;
	goto	i2l699
	line	120
;leds.c: 120: case LED_NONE:
	
i2l698:
	line	121
;leds.c: 121: break;
	goto	i2l699
	line	122
	
i2l2797:
;leds.c: 122: }
	goto	i2l699
	line	102
	
i2l692:
	
i2l2799:
	movf	((c:LED_Off@led)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l699
	xorlw	1^0	; case 1
	skipnz
	goto	i2l693
	xorlw	2^1	; case 2
	skipnz
	goto	i2l695
	xorlw	3^2	; case 3
	skipnz
	goto	i2l696
	xorlw	4^3	; case 4
	skipnz
	goto	i2l697
	goto	i2l699

	line	122
	
i2l694:
	line	123
	
i2l699:
	return
	opt stack 0
GLOBAL	__end_of_LED_Off
	__end_of_LED_Off:
	signat	_LED_Off,4216
	global	_APP_DeviceCustomHIDInitialize

;; *************** function _APP_DeviceCustomHIDInitialize *****************
;; Defined at:
;;		line 42 in file "HIDD\app_device_custom_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;;		_USBEnableEndpoint
;;		i2_USBTransferOnePacket
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	file	"HIDD\app_device_custom_hid.c"
	line	42
global __ptext44
__ptext44:
psect	text44
	file	"HIDD\app_device_custom_hid.c"
	line	42
	global	__size_of_APP_DeviceCustomHIDInitialize
	__size_of_APP_DeviceCustomHIDInitialize	equ	__end_of_APP_DeviceCustomHIDInitialize-_APP_DeviceCustomHIDInitialize
	
_APP_DeviceCustomHIDInitialize:
;incstack = 0
	opt	stack 22
	line	46
	
i2l2863:
;app_device_custom_hid.c: 46: USBInHandle = 0;
		movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBInHandle+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBInHandle))&0ffh

	line	49
	
i2l2865:; BSR set to: 0

;app_device_custom_hid.c: 49: USBEnableEndpoint(1, 0x02|0x04|0x10|0x08);
	movlw	low(01Eh)
	movwf	((c:USBEnableEndpoint@options)),c
	movlw	(01h)&0ffh
	
	call	_USBEnableEndpoint
	line	52
	
i2l2867:
;app_device_custom_hid.c: 52: USBOutHandle = (volatile void*)USBTransferOnePacket(1,0,(uint8_t*)&ReceivedDataBuffer,64);
	movlw	low(0)
	movwf	((c:i2USBTransferOnePacket@dir)),c
	movlb	2	; () banked
		movlw	high(608)
	movwf	((c:i2USBTransferOnePacket@data+1)),c
	movlb	2	; () banked
	movlw	low(608)
	movwf	((c:i2USBTransferOnePacket@data)),c

	movlw	low(040h)
	movwf	((c:i2USBTransferOnePacket@len)),c
	movlw	(01h)&0ffh
	
	call	i2_USBTransferOnePacket
	movff	0+?i2_USBTransferOnePacket,(_USBOutHandle)
	movff	1+?i2_USBTransferOnePacket,(_USBOutHandle+1)
	line	53
	
i2l49:
	return
	opt stack 0
GLOBAL	__end_of_APP_DeviceCustomHIDInitialize
	__end_of_APP_DeviceCustomHIDInitialize:
	signat	_APP_DeviceCustomHIDInitialize,88
	global	i2_USBTransferOnePacket

;; *************** function i2_USBTransferOnePacket *****************
;; Defined at:
;;		line 1000 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1    0[COMRAM] unsigned char 
;;  data            2    1[COMRAM] PTR unsigned char 
;;		 -> ToSendDataBuffer(64), ReceivedDataBuffer(64), 
;;  len             1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1    6[COMRAM] unsigned char 
;;  USBTransferO    2    7[COMRAM] PTR volatile struct __BD
;;		 -> RAM(767), BDT(32), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_APP_DeviceCustomHIDInitialize
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	file	"HIDD\USB\usb_device.c"
	line	1000
global __ptext45
__ptext45:
psect	text45
	file	"HIDD\USB\usb_device.c"
	line	1000
	global	__size_ofi2_USBTransferOnePacket
	__size_ofi2_USBTransferOnePacket	equ	__end_ofi2_USBTransferOnePacket-i2_USBTransferOnePacket
	
i2_USBTransferOnePacket:
;incstack = 0
	opt	stack 23
;i2USBTransferOnePacket@ep stored from wreg
	movwf	((c:i2USBTransferOnePacket@ep)),c
	line	1005
	
i2l2807:
;usb_device.c: 1002: volatile BDT_ENTRY* handle;
;usb_device.c: 1005: if(dir != 0)
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u163_41
	goto	i2u163_40
i2u163_41:
	goto	i2l2811
i2u163_40:
	line	1008
	
i2l2809:
;usb_device.c: 1006: {
;usb_device.c: 1008: handle = pBDTEntryIn[ep];
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:i2USBTransferOnePacket@handle)
	movff	postdec2,(c:i2USBTransferOnePacket@handle+1)
	line	1009
;usb_device.c: 1009: }
	goto	i2l2813
	line	1010
	
i2l355:; BSR set to: 0

	line	1013
	
i2l2811:
;usb_device.c: 1010: else
;usb_device.c: 1011: {
;usb_device.c: 1013: handle = pBDTEntryOut[ep];
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:i2USBTransferOnePacket@handle)
	movff	postdec2,(c:i2USBTransferOnePacket@handle+1)
	goto	i2l2813
	line	1014
	
i2l356:; BSR set to: 0

	line	1018
	
i2l2813:; BSR set to: 0

;usb_device.c: 1014: }
;usb_device.c: 1018: if(handle == 0)
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	iorwf ((c:i2USBTransferOnePacket@handle)),c,w

	btfss	status,2
	goto	i2u164_41
	goto	i2u164_40
i2u164_41:
	goto	i2l2819
i2u164_40:
	line	1020
	
i2l2815:; BSR set to: 0

;usb_device.c: 1019: {
;usb_device.c: 1020: return 0;
		movlw	high(0)
	movwf	((c:?i2_USBTransferOnePacket+1)),c
	movlw	low(0)
	movwf	((c:?i2_USBTransferOnePacket)),c

	goto	i2l358
	
i2l2817:; BSR set to: 0

	goto	i2l358
	line	1021
	
i2l357:; BSR set to: 0

	line	1034
	
i2l2819:; BSR set to: 0

;usb_device.c: 1021: }
;usb_device.c: 1034: handle->ADR = ((uint16_t)(data));
	lfsr	2,02h
	movf	((c:i2USBTransferOnePacket@handle)),c,w
	addwf	fsr2l
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@data),postinc2
	movff	(c:i2USBTransferOnePacket@data+1),postdec2
	line	1035
;usb_device.c: 1035: handle->CNT = len;
	lfsr	2,01h
	movf	((c:i2USBTransferOnePacket@handle)),c,w
	addwf	fsr2l
	movf	((c:i2USBTransferOnePacket@handle+1)),c,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@len),indf2

	line	1036
	
i2l2821:; BSR set to: 0

;usb_device.c: 1036: handle->STAT.Val &= 0x40;
	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1037
	
i2l2823:; BSR set to: 0

;usb_device.c: 1037: handle->STAT.Val |= (0x08 & 0x08);
	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1038
	
i2l2825:; BSR set to: 0

;usb_device.c: 1038: handle->STAT.Val |= 0x80;
	movff	(c:i2USBTransferOnePacket@handle),fsr2l
	movff	(c:i2USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1041
	
i2l2827:; BSR set to: 0

;usb_device.c: 1041: if(dir != 0)
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u165_41
	goto	i2u165_40
i2u165_41:
	goto	i2l2831
i2u165_40:
	line	1044
	
i2l2829:; BSR set to: 0

;usb_device.c: 1042: {
;usb_device.c: 1044: pBDTEntryIn[ep] = (BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[ep]) ^ 0x0004);
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??i2_USBTransferOnePacket+0+0
	movff	postdec2,??i2_USBTransferOnePacket+0+0+1
	movlw	04h
	xorwf	(??i2_USBTransferOnePacket+0+0),c
	movlw	0
	xorwf	(??i2_USBTransferOnePacket+0+1),c
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	??i2_USBTransferOnePacket+0+0,postinc2
	movff	??i2_USBTransferOnePacket+0+1,postdec2

	line	1045
;usb_device.c: 1045: }
	goto	i2l2833
	line	1046
	
i2l359:; BSR set to: 0

	line	1049
	
i2l2831:; BSR set to: 0

;usb_device.c: 1046: else
;usb_device.c: 1047: {
;usb_device.c: 1049: pBDTEntryOut[ep] = (BDT_ENTRY*)(((uintptr_t)pBDTEntryOut[ep]) ^ 0x0004);
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??i2_USBTransferOnePacket+0+0
	movff	postdec2,??i2_USBTransferOnePacket+0+0+1
	movlw	04h
	xorwf	(??i2_USBTransferOnePacket+0+0),c
	movlw	0
	xorwf	(??i2_USBTransferOnePacket+0+1),c
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	??i2_USBTransferOnePacket+0+0,postinc2
	movff	??i2_USBTransferOnePacket+0+1,postdec2

	goto	i2l2833
	line	1050
	
i2l360:; BSR set to: 0

	line	1051
	
i2l2833:; BSR set to: 0

;usb_device.c: 1050: }
;usb_device.c: 1051: return (void*)handle;
		movff	(c:i2USBTransferOnePacket@handle+1),(c:?i2_USBTransferOnePacket+1)
	movff	(c:i2USBTransferOnePacket@handle),(c:?i2_USBTransferOnePacket)

	goto	i2l358
	
i2l2835:; BSR set to: 0

	line	1052
	
i2l358:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_ofi2_USBTransferOnePacket
	__end_ofi2_USBTransferOnePacket:
	signat	i2_USBTransferOnePacket,90
	global	_USBEnableEndpoint

;; *************** function _USBEnableEndpoint *****************
;; Defined at:
;;		line 883 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  options         1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1   13[COMRAM] unsigned char 
;;  p               2   11[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBConfigureEndpoint
;; This function is called by:
;;		_APP_DeviceCustomHIDInitialize
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	line	883
global __ptext46
__ptext46:
psect	text46
	file	"HIDD\USB\usb_device.c"
	line	883
	global	__size_of_USBEnableEndpoint
	__size_of_USBEnableEndpoint	equ	__end_of_USBEnableEndpoint-_USBEnableEndpoint
	
_USBEnableEndpoint:; BSR set to: 0

;incstack = 0
	opt	stack 22
;USBEnableEndpoint@ep stored from wreg
	movwf	((c:USBEnableEndpoint@ep)),c
	line	889
	
i2l2783:
;usb_device.c: 885: unsigned char* p;
;usb_device.c: 889: if(options & 0x04)
	
	btfss	((c:USBEnableEndpoint@options)),c,(2)&7
	goto	i2u161_41
	goto	i2u161_40
i2u161_41:
	goto	i2l2787
i2u161_40:
	line	891
	
i2l2785:
;usb_device.c: 890: {
;usb_device.c: 891: USBConfigureEndpoint(ep, 0);
	movlw	low(0)
	movwf	((c:USBConfigureEndpoint@direction)),c
	movf	((c:USBEnableEndpoint@ep)),c,w
	
	call	_USBConfigureEndpoint
	goto	i2l2787
	line	892
	
i2l350:
	line	893
	
i2l2787:
;usb_device.c: 892: }
;usb_device.c: 893: if(options & 0x02)
	
	btfss	((c:USBEnableEndpoint@options)),c,(1)&7
	goto	i2u162_41
	goto	i2u162_40
i2u162_41:
	goto	i2l2791
i2u162_40:
	line	895
	
i2l2789:
;usb_device.c: 894: {
;usb_device.c: 895: USBConfigureEndpoint(ep, 1);
	movlw	low(01h)
	movwf	((c:USBConfigureEndpoint@direction)),c
	movf	((c:USBEnableEndpoint@ep)),c,w
	
	call	_USBConfigureEndpoint
	goto	i2l2791
	line	896
	
i2l351:
	line	904
	
i2l2791:
;usb_device.c: 896: }
;usb_device.c: 904: p = (unsigned char*)(&UEP0+ep);
	movf	((c:USBEnableEndpoint@ep)),c,w
	mullw	01h
	movlw	low(3923)	;volatile
	movwf	(??_USBEnableEndpoint+0+0)&0ffh,c
	movlw	high(3923)	;volatile
	movwf	(??_USBEnableEndpoint+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_USBEnableEndpoint+0+0),c
	movf	(prodh),c,w
	addwfc	(??_USBEnableEndpoint+0+1),c
	movff	??_USBEnableEndpoint+0+0,(c:USBEnableEndpoint@p)
	movff	??_USBEnableEndpoint+0+1,(c:USBEnableEndpoint@p+1)
	line	906
	
i2l2793:
;usb_device.c: 906: *p = options;
	movff	(c:USBEnableEndpoint@p),fsr2l
	movff	(c:USBEnableEndpoint@p+1),fsr2h
	movff	(c:USBEnableEndpoint@options),indf2

	line	907
	
i2l352:
	return
	opt stack 0
GLOBAL	__end_of_USBEnableEndpoint
	__end_of_USBEnableEndpoint:
	signat	_USBEnableEndpoint,8312
	global	_USBConfigureEndpoint

;; *************** function _USBConfigureEndpoint *****************
;; Defined at:
;;		line 1548 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  EPNum           1    wreg     unsigned char 
;;  direction       1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EPNum           1    5[COMRAM] unsigned char 
;;  handle          2    6[COMRAM] PTR volatile struct __BD
;;		 -> BDT(32), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBEnableEndpoint
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	line	1548
global __ptext47
__ptext47:
psect	text47
	file	"HIDD\USB\usb_device.c"
	line	1548
	global	__size_of_USBConfigureEndpoint
	__size_of_USBConfigureEndpoint	equ	__end_of_USBConfigureEndpoint-_USBConfigureEndpoint
	
_USBConfigureEndpoint:
;incstack = 0
	opt	stack 22
;USBConfigureEndpoint@EPNum stored from wreg
	movwf	((c:USBConfigureEndpoint@EPNum)),c
	line	1554
	
i2l2767:
;usb_device.c: 1550: volatile BDT_ENTRY* handle;
;usb_device.c: 1554: handle = (volatile BDT_ENTRY*)&BDT[0];
	movlb	2	; () banked
		movlw	high(512)	;volatile
	movwf	((c:USBConfigureEndpoint@handle+1)),c
	movlb	2	; () banked
	movlw	low(512)	;volatile
	movwf	((c:USBConfigureEndpoint@handle)),c

	line	1555
	
i2l2769:; BSR set to: 2

;usb_device.c: 1555: handle += (4*EPNum+2*direction+0u);
	movf	((c:USBConfigureEndpoint@direction)),c,w
	movwf	(??_USBConfigureEndpoint+0+0)&0ffh,c
	clrf	(??_USBConfigureEndpoint+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+0+0),c,f
	rlcf	(??_USBConfigureEndpoint+0+1),c,f
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	movwf	(??_USBConfigureEndpoint+2+0)&0ffh,c
	clrf	(??_USBConfigureEndpoint+2+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	movf	(??_USBConfigureEndpoint+0+0),c,w
	addwf	(??_USBConfigureEndpoint+2+0),c
	movf	(??_USBConfigureEndpoint+0+1),c,w
	addwfc	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0),c
	rlcf	(??_USBConfigureEndpoint+2+1),c
	movf	(??_USBConfigureEndpoint+2+0),c,w
	addwf	((c:USBConfigureEndpoint@handle)),c
	movf	(??_USBConfigureEndpoint+2+1),c,w
	addwfc	((c:USBConfigureEndpoint@handle+1)),c

	line	1557
	
i2l2771:; BSR set to: 2

;usb_device.c: 1557: handle->STAT.UOWN = 0;
	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	indf2,7
	line	1562
	
i2l2773:; BSR set to: 2

;usb_device.c: 1562: if(direction == 0)
	tstfsz	((c:USBConfigureEndpoint@direction)),c
	goto	i2u160_41
	goto	i2u160_40
i2u160_41:
	goto	i2l2777
i2u160_40:
	line	1564
	
i2l2775:; BSR set to: 2

;usb_device.c: 1563: {
;usb_device.c: 1564: pBDTEntryOut[EPNum] = handle;
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	line	1565
;usb_device.c: 1565: }
	goto	i2l2779
	line	1566
	
i2l397:; BSR set to: 0

	line	1568
	
i2l2777:
;usb_device.c: 1566: else
;usb_device.c: 1567: {
;usb_device.c: 1568: pBDTEntryIn[EPNum] = handle;
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	goto	i2l2779
	line	1569
	
i2l398:; BSR set to: 0

	line	1572
	
i2l2779:; BSR set to: 0

;usb_device.c: 1569: }
;usb_device.c: 1572: handle->STAT.DTS = 0;
	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	indf2,6
	line	1573
	
i2l2781:; BSR set to: 0

;usb_device.c: 1573: (handle+1)->STAT.DTS = 1;
	lfsr	2,04h
	movf	((c:USBConfigureEndpoint@handle)),c,w
	addwf	fsr2l
	movf	((c:USBConfigureEndpoint@handle+1)),c,w
	addwfc	fsr2h
	bsf	indf2,6
	line	1590
	
i2l399:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBConfigureEndpoint
	__end_of_USBConfigureEndpoint:
	signat	_USBConfigureEndpoint,8312
	global	_USBCtrlTrfOutHandler

;; *************** function _USBCtrlTrfOutHandler *****************
;; Defined at:
;;		line 2543 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;;		_USBCtrlTrfRxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	line	2543
global __ptext48
__ptext48:
psect	text48
	file	"HIDD\USB\usb_device.c"
	line	2543
	global	__size_of_USBCtrlTrfOutHandler
	__size_of_USBCtrlTrfOutHandler	equ	__end_of_USBCtrlTrfOutHandler-_USBCtrlTrfOutHandler
	
_USBCtrlTrfOutHandler:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	2545
	
i2l3537:
;usb_device.c: 2545: if(controlTransferState == 2)
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u245_41
	goto	i2u245_40
i2u245_41:
	goto	i2l3541
i2u245_40:
	line	2547
	
i2l3539:
;usb_device.c: 2546: {
;usb_device.c: 2547: USBCtrlTrfRxService();
	call	_USBCtrlTrfRxService	;wreg free
	line	2548
;usb_device.c: 2548: }
	goto	i2l507
	line	2549
	
i2l503:
	line	2553
	
i2l3541:
;usb_device.c: 2549: else
;usb_device.c: 2550: {
;usb_device.c: 2553: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2560
	
i2l3543:
;usb_device.c: 2560: if(BothEP0OutUOWNsSet == 0)
	tstfsz	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2u246_41
	goto	i2u246_40
i2u246_41:
	goto	i2l3551
i2u246_40:
	line	2562
	
i2l3545:
;usb_device.c: 2561: {
;usb_device.c: 2562: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2563
;usb_device.c: 2563: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0220h)
	movwf	postinc2,c
	movlw	high(0220h)
	movwf	postdec2,c
	line	2564
	
i2l3547:
;usb_device.c: 2564: pBDTEntryEP0OutNext->STAT.Val = 0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2565
	
i2l3549:
;usb_device.c: 2565: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2566
;usb_device.c: 2566: }
	goto	i2l507
	line	2567
	
i2l505:
	line	2569
	
i2l3551:
;usb_device.c: 2567: else
;usb_device.c: 2568: {
;usb_device.c: 2569: BothEP0OutUOWNsSet = 0;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2l507
	line	2570
	
i2l506:
	goto	i2l507
	line	2571
	
i2l504:
	line	2572
	
i2l507:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfOutHandler
	__end_of_USBCtrlTrfOutHandler:
	signat	_USBCtrlTrfOutHandler,88
	global	_USBCtrlTrfRxService

;; *************** function _USBCtrlTrfRxService *****************
;; Defined at:
;;		line 1857 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToRead      1    1[COMRAM] unsigned char 
;;  i               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1  BANK2h  BANK2l
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfOutHandler
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2
	line	1857
global __ptext49
__ptext49:
psect	text49
	file	"HIDD\USB\usb_device.c"
	line	1857
	global	__size_of_USBCtrlTrfRxService
	__size_of_USBCtrlTrfRxService	equ	__end_of_USBCtrlTrfRxService-_USBCtrlTrfRxService
	
_USBCtrlTrfRxService:
;incstack = 0
	opt	stack 22
	line	1864
	
i2l3349:
;usb_device.c: 1859: uint8_t byteToRead;
;usb_device.c: 1860: uint8_t i;
;usb_device.c: 1864: byteToRead = pBDTEntryEP0OutCurrent->CNT;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:USBCtrlTrfRxService@byteToRead)),c
	line	1870
	
i2l3351:
;usb_device.c: 1870: if(byteToRead > outPipes[0].wCount.Val)
	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_outPipes+04h))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_outPipes+04h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u233_41
	goto	i2u233_40
i2u233_41:
	goto	i2l3355
i2u233_40:
	line	1872
	
i2l3353:; BSR set to: 0

;usb_device.c: 1871: {
;usb_device.c: 1872: byteToRead = outPipes[0].wCount.Val;
	movff	0+(_outPipes+04h),(c:USBCtrlTrfRxService@byteToRead)	;volatile
	goto	i2l3355
	line	1873
	
i2l430:; BSR set to: 0

	line	1875
	
i2l3355:; BSR set to: 0

;usb_device.c: 1873: }
;usb_device.c: 1875: outPipes[0].wCount.Val -= byteToRead;
	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_outPipes+04h))&0ffh	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_outPipes+04h))&0ffh	;volatile
	line	1879
	
i2l3357:; BSR set to: 0

;usb_device.c: 1879: for(i=0;i<byteToRead;i++)
	movlw	low(0)
	movwf	((c:USBCtrlTrfRxService@i)),c
	goto	i2l3365
	line	1880
	
i2l432:; BSR set to: 0

	line	1881
	
i2l3359:; BSR set to: 0

;usb_device.c: 1880: {
;usb_device.c: 1881: *outPipes[0].pDst.bRam++ = CtrlTrfData[i];
	movf	((c:USBCtrlTrfRxService@i)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(552)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(552)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(_outPipes),fsr1l	;volatile
	movff	(_outPipes+1),fsr1h	;volatile
	movff	indf2,indf1
	
i2l3361:; BSR set to: 2

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_outPipes))&0ffh	;volatile
	incf	((_outPipes+1))&0ffh	;volatile
	line	1879
	
i2l3363:; BSR set to: 0

	incf	((c:USBCtrlTrfRxService@i)),c
	goto	i2l3365
	
i2l431:; BSR set to: 0

	
i2l3365:; BSR set to: 0

	movf	((c:USBCtrlTrfRxService@byteToRead)),c,w
	subwf	((c:USBCtrlTrfRxService@i)),c,w
	btfss	status,0
	goto	i2u234_41
	goto	i2u234_40
i2u234_41:
	goto	i2l3359
i2u234_40:
	goto	i2l3367
	
i2l433:; BSR set to: 0

	line	1886
	
i2l3367:; BSR set to: 0

;usb_device.c: 1882: }
;usb_device.c: 1886: if(outPipes[0].wCount.Val > 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_outPipes+04h))&0ffh,w	;volatile
	iorwf (0+(_outPipes+04h))&0ffh,w	;volatile

	btfsc	status,2
	goto	i2u235_41
	goto	i2u235_40
i2u235_41:
	goto	i2l3381
i2u235_40:
	line	1888
	
i2l3369:; BSR set to: 0

;usb_device.c: 1887: {
;usb_device.c: 1888: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1889
;usb_device.c: 1889: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0228h)
	movwf	postinc2,c
	movlw	high(0228h)
	movwf	postdec2,c
	line	1890
	
i2l3371:; BSR set to: 0

;usb_device.c: 1890: if(pBDTEntryEP0OutCurrent->STAT.DTS == 0)
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	btfsc	indf2,6
	goto	i2u236_41
	goto	i2u236_40
i2u236_41:
	goto	i2l3377
i2u236_40:
	line	1892
	
i2l3373:; BSR set to: 0

;usb_device.c: 1891: {
;usb_device.c: 1892: pBDTEntryEP0OutNext->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1893
	
i2l3375:; BSR set to: 0

;usb_device.c: 1893: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1894
;usb_device.c: 1894: }
	goto	i2l440
	line	1895
	
i2l435:; BSR set to: 0

	line	1897
	
i2l3377:; BSR set to: 0

;usb_device.c: 1895: else
;usb_device.c: 1896: {
;usb_device.c: 1897: pBDTEntryEP0OutNext->STAT.Val = 0x00|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1898
	
i2l3379:; BSR set to: 0

;usb_device.c: 1898: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l440
	line	1899
	
i2l436:; BSR set to: 0

	line	1900
;usb_device.c: 1899: }
;usb_device.c: 1900: }
	goto	i2l440
	line	1901
	
i2l434:; BSR set to: 0

	line	1906
	
i2l3381:; BSR set to: 0

;usb_device.c: 1901: else
;usb_device.c: 1902: {
;usb_device.c: 1906: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1907
;usb_device.c: 1907: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0220h)
	movwf	postinc2,c
	movlw	high(0220h)
	movwf	postdec2,c
	line	1911
	
i2l3383:; BSR set to: 0

;usb_device.c: 1911: pBDTEntryEP0OutNext->STAT.Val = 0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1912
	
i2l3385:; BSR set to: 0

;usb_device.c: 1912: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1919
	
i2l3387:; BSR set to: 0

;usb_device.c: 1920: {
;usb_device.c: 1926: outPipes[0].pFunc();
	line	1931
	
i2l438:; BSR set to: 0

	line	1932
;usb_device.c: 1931: }
;usb_device.c: 1932: outPipes[0].info.bits.busy = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_outPipes+03h))&0ffh,7	;volatile
	line	1946
;usb_device.c: 1946: if(USBDeferStatusStagePacket == 0)
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u237_41
	goto	i2u237_40
i2u237_41:
	goto	i2l440
i2u237_40:
	line	1948
	
i2l3389:; BSR set to: 0

;usb_device.c: 1947: {
;usb_device.c: 1948: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l440
	line	1949
	
i2l439:
	goto	i2l440
	line	1950
	
i2l437:
	line	1952
	
i2l440:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfRxService
	__end_of_USBCtrlTrfRxService:
	signat	_USBCtrlTrfRxService,88
	global	_USBCtrlEPAllowStatusStage

;; *************** function _USBCtrlEPAllowStatusStage *****************
;; Defined at:
;;		line 1421 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBCtrlEPServiceComplete
;;		_USBCtrlTrfRxService
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2
	line	1421
global __ptext50
__ptext50:
psect	text50
	file	"HIDD\USB\usb_device.c"
	line	1421
	global	__size_of_USBCtrlEPAllowStatusStage
	__size_of_USBCtrlEPAllowStatusStage	equ	__end_of_USBCtrlEPAllowStatusStage-_USBCtrlEPAllowStatusStage
	
_USBCtrlEPAllowStatusStage:
;incstack = 0
	opt	stack 22
	line	1428
	
i2l3055:
;usb_device.c: 1428: if(USBStatusStageEnabledFlag1 == 0)
	tstfsz	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	goto	i2u188_41
	goto	i2u188_40
i2u188_41:
	goto	i2l388
i2u188_40:
	line	1430
	
i2l3057:
;usb_device.c: 1429: {
;usb_device.c: 1430: USBStatusStageEnabledFlag1 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1)),c	;volatile
	line	1431
	
i2l3059:
;usb_device.c: 1431: if(USBStatusStageEnabledFlag2 == 0)
	tstfsz	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	goto	i2u189_41
	goto	i2u189_40
i2u189_41:
	goto	i2l388
i2u189_40:
	line	1433
	
i2l3061:
;usb_device.c: 1432: {
;usb_device.c: 1433: USBStatusStageEnabledFlag2 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2)),c	;volatile
	line	1437
	
i2l3063:
;usb_device.c: 1437: if(controlTransferState == 2)
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u190_41
	goto	i2u190_40
i2u190_41:
	goto	i2l3071
i2u190_40:
	line	1439
	
i2l3065:
;usb_device.c: 1438: {
;usb_device.c: 1439: pBDTEntryIn[0]->CNT = 0;
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1440
	
i2l3067:; BSR set to: 0

;usb_device.c: 1440: pBDTEntryIn[0]->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1441
	
i2l3069:; BSR set to: 0

;usb_device.c: 1441: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1442
;usb_device.c: 1442: }
	goto	i2l388
	line	1443
	
i2l385:; BSR set to: 0

	
i2l3071:
;usb_device.c: 1443: else if(controlTransferState == 1)
	decf	((c:_controlTransferState)),c,w	;volatile

	btfss	status,2
	goto	i2u191_41
	goto	i2u191_40
i2u191_41:
	goto	i2l388
i2u191_40:
	line	1445
	
i2l3073:
;usb_device.c: 1444: {
;usb_device.c: 1445: BothEP0OutUOWNsSet = 0;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1450
	
i2l3075:
;usb_device.c: 1450: pBDTEntryEP0OutCurrent->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1451
	
i2l3077:
;usb_device.c: 1451: pBDTEntryEP0OutCurrent->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(0220h)
	movwf	postinc2,c
	movlw	high(0220h)
	movwf	postdec2,c
	line	1452
	
i2l3079:
;usb_device.c: 1452: pBDTEntryEP0OutCurrent->STAT.Val = 0x04;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1453
	
i2l3081:
;usb_device.c: 1453: pBDTEntryEP0OutCurrent->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1454
	
i2l3083:
;usb_device.c: 1454: BothEP0OutUOWNsSet = 1;
	movlw	low(01h)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1458
	
i2l3085:
;usb_device.c: 1458: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1459
	
i2l3087:
;usb_device.c: 1459: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(0220h)
	movwf	postinc2,c
	movlw	high(0220h)
	movwf	postdec2,c
	line	1460
	
i2l3089:
;usb_device.c: 1460: pBDTEntryEP0OutNext->STAT.Val = 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(080h)
	movwf	indf2
	goto	i2l388
	line	1461
	
i2l387:
	goto	i2l388
	line	1462
	
i2l386:
	goto	i2l388
	
i2l384:
	goto	i2l388
	line	1463
	
i2l383:
	line	1464
	
i2l388:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowStatusStage
	__end_of_USBCtrlEPAllowStatusStage:
	signat	_USBCtrlEPAllowStatusStage,88
	global	_USBCtrlTrfInHandler

;; *************** function _USBCtrlTrfInHandler *****************
;; Defined at:
;;		line 2597 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lastDTS         1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2
	line	2597
global __ptext51
__ptext51:
psect	text51
	file	"HIDD\USB\usb_device.c"
	line	2597
	global	__size_of_USBCtrlTrfInHandler
	__size_of_USBCtrlTrfInHandler	equ	__end_of_USBCtrlTrfInHandler-_USBCtrlTrfInHandler
	
_USBCtrlTrfInHandler:
;incstack = 0
	opt	stack 23
	line	2601
	
i2l3553:
;usb_device.c: 2599: uint8_t lastDTS;
;usb_device.c: 2601: lastDTS = pBDTEntryIn[0]->STAT.DTS;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0
	btfsc	indf2,6
	movlw	1
	movwf	((c:USBCtrlTrfInHandler@lastDTS)),c
	line	2604
	
i2l3555:
;usb_device.c: 2604: pBDTEntryIn[0] = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[0]) ^ 0x0004);
	movlw	04h
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_pBDTEntryIn))&0ffh
	line	2609
	
i2l3557:; BSR set to: 0

;usb_device.c: 2609: if(USBDeviceState == ADR_PENDING_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	8

	btfss	status,2
	goto	i2u247_41
	goto	i2u247_40
i2u247_41:
	goto	i2l3567
i2u247_40:
	line	2611
	
i2l3559:; BSR set to: 0

;usb_device.c: 2610: {
;usb_device.c: 2611: UADDR = (SetupPkt.bDevADR & 0x7F);
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(544+02h))&0ffh,w	;volatile
	andlw	low(07Fh)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3932))&0ffh	;volatile
	line	2612
	
i2l3561:; BSR set to: 15

;usb_device.c: 2612: if(UADDR != 0u)
	movlb	15	; () banked
	movlb	15	; () banked
	movf	((3932))&0ffh,w	;volatile
	btfsc	status,2
	goto	i2u248_41
	goto	i2u248_40
i2u248_41:
	goto	i2l3565
i2u248_40:
	line	2614
	
i2l3563:; BSR set to: 15

;usb_device.c: 2613: {
;usb_device.c: 2614: USBDeviceState=ADDRESS_STATE;
	movlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2615
;usb_device.c: 2615: }
	goto	i2l3567
	line	2616
	
i2l511:; BSR set to: 0

	line	2618
	
i2l3565:
;usb_device.c: 2616: else
;usb_device.c: 2617: {
;usb_device.c: 2618: USBDeviceState=DEFAULT_STATE;
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l3567
	line	2619
	
i2l512:; BSR set to: 0

	goto	i2l3567
	line	2620
	
i2l510:; BSR set to: 0

	line	2623
	
i2l3567:; BSR set to: 0

;usb_device.c: 2619: }
;usb_device.c: 2620: }
;usb_device.c: 2623: if(controlTransferState == 1)
	decf	((c:_controlTransferState)),c,w	;volatile

	btfss	status,2
	goto	i2u249_41
	goto	i2u249_40
i2u249_41:
	goto	i2l513
i2u249_40:
	line	2625
	
i2l3569:; BSR set to: 0

;usb_device.c: 2624: {
;usb_device.c: 2625: pBDTEntryIn[0]->ADR = ((uint16_t)(CtrlTrfData));
	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0228h)
	movwf	postinc2,c
	movlw	high(0228h)
	movwf	postdec2,c
	line	2626
	
i2l3571:; BSR set to: 0

;usb_device.c: 2626: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	2632
	
i2l3573:
;usb_device.c: 2632: if(shortPacketStatus == 2)
	movf	((c:_shortPacketStatus)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u250_41
	goto	i2u250_40
i2u250_41:
	goto	i2l514
i2u250_40:
	line	2636
	
i2l3575:
;usb_device.c: 2633: {
;usb_device.c: 2636: pBDTEntryIn[0]->STAT.Val = 0x04;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	2637
	
i2l3577:
;usb_device.c: 2637: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2638
;usb_device.c: 2638: }
	goto	i2l521
	line	2639
	
i2l514:
	line	2641
;usb_device.c: 2639: else
;usb_device.c: 2640: {
;usb_device.c: 2641: if(lastDTS == 0)
	tstfsz	((c:USBCtrlTrfInHandler@lastDTS)),c
	goto	i2u251_41
	goto	i2u251_40
i2u251_41:
	goto	i2l3583
i2u251_40:
	line	2643
	
i2l3579:
;usb_device.c: 2642: {
;usb_device.c: 2643: pBDTEntryIn[0]->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	2644
	
i2l3581:
;usb_device.c: 2644: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2645
;usb_device.c: 2645: }
	goto	i2l521
	line	2646
	
i2l516:
	line	2648
	
i2l3583:
;usb_device.c: 2646: else
;usb_device.c: 2647: {
;usb_device.c: 2648: pBDTEntryIn[0]->STAT.Val = 0x00|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2649
	
i2l3585:
;usb_device.c: 2649: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	i2l521
	line	2650
	
i2l517:
	goto	i2l521
	line	2651
	
i2l515:
	line	2652
;usb_device.c: 2650: }
;usb_device.c: 2651: }
;usb_device.c: 2652: }
	goto	i2l521
	line	2653
	
i2l513:; BSR set to: 0

	line	2658
;usb_device.c: 2653: else
;usb_device.c: 2654: {
;usb_device.c: 2658: if(outPipes[0].info.bits.busy == 1)
	movlb	0	; () banked
	btfss	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2u252_41
	goto	i2u252_40
i2u252_41:
	goto	i2l3589
i2u252_40:
	line	2660
	
i2l3587:; BSR set to: 0

;usb_device.c: 2661: {
;usb_device.c: 2662: outPipes[0].pFunc();
	line	2663
	
i2l520:; BSR set to: 0

	line	2664
;usb_device.c: 2663: }
;usb_device.c: 2664: outPipes[0].info.bits.busy = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2l3589
	line	2665
	
i2l519:; BSR set to: 0

	line	2667
	
i2l3589:; BSR set to: 0

;usb_device.c: 2665: }
;usb_device.c: 2667: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	goto	i2l521
	line	2670
	
i2l518:; BSR set to: 0

	line	2672
	
i2l521:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfInHandler
	__end_of_USBCtrlTrfInHandler:
	signat	_USBCtrlTrfInHandler,88
	global	_USBCtrlTrfTxService

;; *************** function _USBCtrlTrfTxService *****************
;; Defined at:
;;		line 1776 in file "HIDD\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToSend      1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlTrfInHandler
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2
	line	1776
global __ptext52
__ptext52:
psect	text52
	file	"HIDD\USB\usb_device.c"
	line	1776
	global	__size_of_USBCtrlTrfTxService
	__size_of_USBCtrlTrfTxService	equ	__end_of_USBCtrlTrfTxService-_USBCtrlTrfTxService
	
_USBCtrlTrfTxService:
;incstack = 0
	opt	stack 21
	line	1782
	
i2l3005:
;usb_device.c: 1778: uint8_t byteToSend;
;usb_device.c: 1782: byteToSend = 8;
	movlw	low(08h)
	movwf	((c:USBCtrlTrfTxService@byteToSend)),c
	line	1783
	
i2l3007:
;usb_device.c: 1783: if(inPipes[0].wCount.Val < (uint8_t)8)
	movlw	08h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_inPipes+04h))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_inPipes+04h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u179_41
	goto	i2u179_40
i2u179_41:
	goto	i2l3017
i2u179_40:
	line	1785
	
i2l3009:; BSR set to: 0

;usb_device.c: 1784: {
;usb_device.c: 1785: byteToSend = inPipes[0].wCount.Val;
	movff	0+(_inPipes+04h),(c:USBCtrlTrfTxService@byteToSend)	;volatile
	line	1792
;usb_device.c: 1792: if(shortPacketStatus == 0)
	tstfsz	((c:_shortPacketStatus)),c	;volatile
	goto	i2u180_41
	goto	i2u180_40
i2u180_41:
	goto	i2l3013
i2u180_40:
	line	1794
	
i2l3011:; BSR set to: 0

;usb_device.c: 1793: {
;usb_device.c: 1794: shortPacketStatus = 1;
	movlw	low(01h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	1795
;usb_device.c: 1795: }
	goto	i2l3017
	line	1796
	
i2l416:; BSR set to: 0

	
i2l3013:; BSR set to: 0

;usb_device.c: 1796: else if(shortPacketStatus == 1)
	decf	((c:_shortPacketStatus)),c,w	;volatile

	btfss	status,2
	goto	i2u181_41
	goto	i2u181_40
i2u181_41:
	goto	i2l3017
i2u181_40:
	line	1798
	
i2l3015:; BSR set to: 0

;usb_device.c: 1797: {
;usb_device.c: 1798: shortPacketStatus = 2;
	movlw	low(02h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	goto	i2l3017
	line	1799
	
i2l418:; BSR set to: 0

	goto	i2l3017
	line	1800
	
i2l417:; BSR set to: 0

	goto	i2l3017
	
i2l415:; BSR set to: 0

	line	1804
	
i2l3017:; BSR set to: 0

;usb_device.c: 1799: }
;usb_device.c: 1800: }
;usb_device.c: 1804: inPipes[0].wCount.Val -= byteToSend;
	movf	((c:USBCtrlTrfTxService@byteToSend)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_inPipes+04h))&0ffh	;volatile
	line	1809
	
i2l3019:; BSR set to: 0

;usb_device.c: 1809: pBDTEntryIn[0]->CNT = byteToSend;
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movff	(c:USBCtrlTrfTxService@byteToSend),indf2

	line	1813
	
i2l3021:; BSR set to: 0

;usb_device.c: 1813: pDst = (volatile uint8_t*)CtrlTrfData;
	movlb	2	; () banked
		movlw	high(552)	;volatile
	movwf	((c:_pDst+1)),c
	movlb	2	; () banked
	movlw	low(552)	;volatile
	movwf	((c:_pDst)),c

	line	1814
	
i2l3023:; BSR set to: 2

;usb_device.c: 1814: if(inPipes[0].info.bits.ctrl_trf_mem == 0x00)
	movlb	0	; () banked
	btfsc	(0+(_inPipes+03h))&0ffh,0	;volatile
	goto	i2u182_41
	goto	i2u182_40
i2u182_41:
	goto	i2l3045
i2u182_40:
	goto	i2l3035
	line	1816
	
i2l3025:; BSR set to: 0

;usb_device.c: 1815: {
;usb_device.c: 1816: while(byteToSend)
	goto	i2l3035
	
i2l421:; BSR set to: 0

	line	1818
	
i2l3027:; BSR set to: 0

;usb_device.c: 1817: {
;usb_device.c: 1818: *pDst++ = *inPipes[0].pSrc.bRom++;
	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u183_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u183_40
i2u183_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u183_40:
	movwf	indf2
	
i2l3029:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_inPipes))&0ffh	;volatile
	incf	((_inPipes+1))&0ffh	;volatile
	
i2l3031:; BSR set to: 0

	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1819
	
i2l3033:; BSR set to: 0

;usb_device.c: 1819: byteToSend--;
	decf	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2l3035
	line	1820
	
i2l420:; BSR set to: 0

	line	1816
	
i2l3035:; BSR set to: 0

	tstfsz	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2u184_41
	goto	i2u184_40
i2u184_41:
	goto	i2l3027
i2u184_40:
	goto	i2l427
	
i2l422:; BSR set to: 0

	line	1821
;usb_device.c: 1820: }
;usb_device.c: 1821: }
	goto	i2l427
	line	1822
	
i2l419:; BSR set to: 0

	line	1824
;usb_device.c: 1822: else
;usb_device.c: 1823: {
;usb_device.c: 1824: while(byteToSend)
	goto	i2l3045
	
i2l425:; BSR set to: 0

	line	1826
	
i2l3037:; BSR set to: 0

;usb_device.c: 1825: {
;usb_device.c: 1826: *pDst++ = *inPipes[0].pSrc.bRam++;
	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	i2u185_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u185_40
i2u185_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u185_40:
	movwf	indf2
	
i2l3039:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_inPipes))&0ffh	;volatile
	incf	((_inPipes+1))&0ffh	;volatile
	
i2l3041:; BSR set to: 0

	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1827
	
i2l3043:; BSR set to: 0

;usb_device.c: 1827: byteToSend--;
	decf	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2l3045
	line	1828
	
i2l424:; BSR set to: 0

	line	1824
	
i2l3045:; BSR set to: 0

	tstfsz	((c:USBCtrlTrfTxService@byteToSend)),c
	goto	i2u186_41
	goto	i2u186_40
i2u186_41:
	goto	i2l3037
i2u186_40:
	goto	i2l427
	
i2l426:; BSR set to: 0

	goto	i2l427
	line	1829
	
i2l423:; BSR set to: 0

	line	1830
	
i2l427:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfTxService
	__end_of_USBCtrlTrfTxService:
	signat	_USBCtrlTrfTxService,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
