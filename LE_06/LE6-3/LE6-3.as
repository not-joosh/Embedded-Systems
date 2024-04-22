opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_handshake
	FNCALL	_main,_readKeypad
	FNROOT	_main
	global	_message1
	global	_message2
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	36

;initializer for _message1
	retlw	059h
	retlw	06Fh
	retlw	075h
	retlw	020h
	retlw	070h
	retlw	072h
	retlw	065h
	retlw	073h
	retlw	073h
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	031h
	retlw	02Eh
	retlw	020h
	retlw	0Ah
	retlw	0
	line	37

;initializer for _message2
	retlw	059h
	retlw	06Fh
	retlw	075h
	retlw	020h
	retlw	070h
	retlw	072h
	retlw	065h
	retlw	073h
	retlw	073h
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	032h
	retlw	02Eh
	retlw	020h
	retlw	0Ah
	retlw	0
	global	_count_flag
	global	_keypadValue
	global	_PORTC
_PORTC	set	0x7
	global	_TXREG
_TXREG	set	0x19
	global	_PORTD
_PORTD	set	0x8
	global	_RD4
_RD4	set	0x44
	global	_SPEN
_SPEN	set	0xC7
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISC
_TRISC	set	0x87
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRMT
_TRMT	set	0x4C1
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"LE6-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count_flag:
       ds      1

_keypadValue:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	36
_message1:
       ds      17

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	37
_message2:
       ds      17

	file	"LE6-3.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+34)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_readKeypad:	; 0 bytes @ 0x0
??_readKeypad:	; 0 bytes @ 0x0
??_handshake:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_handshake:	; 1 bytes @ 0x0
handshake@dataIn:	; 1 bytes @ 0x0
	global	handshake@i_55
handshake@i_55:	; 2 bytes @ 0x0
	ds	1
	global	readKeypad@keypress
readKeypad@keypress:	; 1 bytes @ 0x1
	ds	1
	global	handshake@i
handshake@i:	; 2 bytes @ 0x2
	ds	2
	global	handshake@i_54
handshake@i_54:	; 2 bytes @ 0x4
	ds	2
??_main:	; 0 bytes @ 0x6
	global	main@i
main@i:	; 2 bytes @ 0x6
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        34
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      10
;!    BANK0            80      0      34
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_handshake
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                 2     2      0     243
;!                                              6 COMMON     2     2      0
;!                          _handshake
;!                         _readKeypad
;! ---------------------------------------------------------------------------------
;! (1) _readKeypad                                           2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _handshake                                            7     7      0     182
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _handshake
;!   _readKeypad
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      0      22       5       42.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2C      12        0.0%
;!ABS                  0      0      2C       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_handshake
;;		_readKeypad
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	53
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	58
	
l657:	
;LE6-3.c: 58: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	59
;LE6-3.c: 59: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	61
	
l659:	
;LE6-3.c: 61: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	63
	
l661:	
;LE6-3.c: 63: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	64
	
l663:	
;LE6-3.c: 64: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	65
	
l665:	
;LE6-3.c: 65: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	66
	
l667:	
;LE6-3.c: 66: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	67
	
l669:	
;LE6-3.c: 67: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	goto	l671
	line	69
;LE6-3.c: 68: for(;;)
	
l39:	
	line	71
	
l671:	
;LE6-3.c: 69: {
;LE6-3.c: 71: if(RD4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u301
	goto	u300
u301:
	goto	l671
u300:
	line	73
	
l673:	
;LE6-3.c: 72: {
;LE6-3.c: 73: readKeypad();
	fcall	_readKeypad
	line	74
	
l675:	
;LE6-3.c: 74: handshake(keypadValue);
	movf	(_keypadValue),w
	fcall	_handshake
	line	75
	
l677:	
;LE6-3.c: 75: for(int i = 0; i < 10000; i++);
	clrf	(main@i)
	clrf	(main@i+1)
	
l679:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u315
	movlw	low(02710h)
	subwf	(main@i),w
u315:

	skipc
	goto	u311
	goto	u310
u311:
	goto	l683
u310:
	goto	l671
	
l681:	
	goto	l671
	
l41:	
	
l683:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l685:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u325
	movlw	low(02710h)
	subwf	(main@i),w
u325:

	skipc
	goto	u321
	goto	u320
u321:
	goto	l683
u320:
	goto	l671
	
l42:	
	goto	l671
	line	76
	
l40:	
	line	77
;LE6-3.c: 76: }
;LE6-3.c: 77: }
	goto	l671
	
l43:	
	line	78
	
l44:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_readKeypad

;; *************** function _readKeypad *****************
;; Defined at:
;;		line 80 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  keypress        1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	80
global __ptext1
__ptext1:	;psect for function _readKeypad
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	80
	global	__size_of_readKeypad
	__size_of_readKeypad	equ	__end_of_readKeypad-_readKeypad
	
_readKeypad:	
;incstack = 0
	opt	stack 7
; Regs used in _readKeypad: [wreg-fsr0h+status,2+status,0]
	line	82
	
l537:	
;LE6-3.c: 82: char keypress = 0x0F & PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(readKeypad@keypress)
	line	83
;LE6-3.c: 83: switch(keypress)
	goto	l545
	line	85
;LE6-3.c: 84: {
;LE6-3.c: 85: case KEY_1:
	
l48:	
	line	86
	
l539:	
;LE6-3.c: 86: keypadValue = KEY_1;
	clrf	(_keypadValue)
	line	87
;LE6-3.c: 87: break;
	goto	l52
	line	88
;LE6-3.c: 88: case KEY_2:
	
l50:	
	line	89
;LE6-3.c: 89: keypadValue = KEY_2;
	clrf	(_keypadValue)
	incf	(_keypadValue),f
	line	90
;LE6-3.c: 90: break;
	goto	l52
	line	91
;LE6-3.c: 91: default:
	
l51:	
	line	92
	
l541:	
;LE6-3.c: 92: keypadValue = 0xFF;
	movlw	(0FFh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	93
;LE6-3.c: 93: break;
	goto	l52
	line	94
	
l543:	
;LE6-3.c: 94: }
	goto	l52
	line	83
	
l47:	
	
l545:	
	movf	(readKeypad@keypress),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l539
	xorlw	1^0	; case 1
	skipnz
	goto	l50
	goto	l541
	opt asmopt_on

	line	94
	
l49:	
	line	95
	
l52:	
	return
	opt stack 0
GLOBAL	__end_of_readKeypad
	__end_of_readKeypad:
	signat	_readKeypad,88
	global	_handshake

;; *************** function _handshake *****************
;; Defined at:
;;		line 97 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
;; Parameters:    Size  Location     Type
;;  dataIn          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataIn          1    0[COMMON] unsigned char 
;;  i               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	97
global __ptext2
__ptext2:	;psect for function _handshake
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6-3\LE6-3.c"
	line	97
	global	__size_of_handshake
	__size_of_handshake	equ	__end_of_handshake-_handshake
	
_handshake:	
;incstack = 0
	opt	stack 7
; Regs used in _handshake: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	99
	
l617:	
;LE6-3.c: 99: while(!TRMT);
	goto	l55
	
l56:	
	
l55:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l55
u170:
	goto	l619
	
l57:	
	line	100
	
l619:	
;LE6-3.c: 100: if(keypadValue == KEY_1)
	movf	(_keypadValue),f
	skipz
	goto	u181
	goto	u180
u181:
	goto	l633
u180:
	line	102
	
l621:	
;LE6-3.c: 101: {
;LE6-3.c: 102: for(int i = 0; i < sizeof(message1); i++)
	clrf	(handshake@i)
	clrf	(handshake@i+1)
	
l623:	
	movlw	high(011h)
	subwf	(handshake@i+1),w
	movlw	low(011h)
	skipnz
	subwf	(handshake@i),w
	skipc
	goto	u191
	goto	u190
u191:
	goto	l627
u190:
	goto	l631
	
l625:	
	goto	l631
	line	103
	
l59:	
	line	104
	
l627:	
;LE6-3.c: 103: {
;LE6-3.c: 104: TXREG = message1[i];
	movf	(handshake@i),w
	addlw	_message1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	105
;LE6-3.c: 105: while(!TRMT);
	goto	l61
	
l62:	
	
l61:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l61
u200:
	goto	l629
	
l63:	
	line	102
	
l629:	
	movlw	low(01h)
	addwf	(handshake@i),f
	skipnc
	incf	(handshake@i+1),f
	movlw	high(01h)
	addwf	(handshake@i+1),f
	movlw	high(011h)
	subwf	(handshake@i+1),w
	movlw	low(011h)
	skipnz
	subwf	(handshake@i),w
	skipc
	goto	u211
	goto	u210
u211:
	goto	l627
u210:
	goto	l631
	
l60:	
	line	107
	
l631:	
;LE6-3.c: 106: }
;LE6-3.c: 107: TXREG = 0x0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	108
;LE6-3.c: 108: while(!TRMT);
	goto	l64
	
l65:	
	
l64:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l64
u220:
	goto	l647
	
l66:	
	line	109
;LE6-3.c: 109: }
	goto	l647
	line	110
	
l58:	
	
l633:	
;LE6-3.c: 110: else if(keypadValue == KEY_2)
	movf	(_keypadValue),w
	xorlw	01h
	skipz
	goto	u231
	goto	u230
u231:
	goto	l78
u230:
	line	112
	
l635:	
;LE6-3.c: 111: {
;LE6-3.c: 112: for(int i = 0; i < sizeof(message2); i++)
	clrf	(handshake@i_54)
	clrf	(handshake@i_54+1)
	
l637:	
	movlw	high(011h)
	subwf	(handshake@i_54+1),w
	movlw	low(011h)
	skipnz
	subwf	(handshake@i_54),w
	skipc
	goto	u241
	goto	u240
u241:
	goto	l641
u240:
	goto	l645
	
l639:	
	goto	l645
	line	113
	
l69:	
	line	114
	
l641:	
;LE6-3.c: 113: {
;LE6-3.c: 114: TXREG = message2[i];
	movf	(handshake@i_54),w
	addlw	_message2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	115
;LE6-3.c: 115: while(!TRMT);
	goto	l71
	
l72:	
	
l71:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u251
	goto	u250
u251:
	goto	l71
u250:
	goto	l643
	
l73:	
	line	112
	
l643:	
	movlw	low(01h)
	addwf	(handshake@i_54),f
	skipnc
	incf	(handshake@i_54+1),f
	movlw	high(01h)
	addwf	(handshake@i_54+1),f
	movlw	high(011h)
	subwf	(handshake@i_54+1),w
	movlw	low(011h)
	skipnz
	subwf	(handshake@i_54),w
	skipc
	goto	u261
	goto	u260
u261:
	goto	l641
u260:
	goto	l645
	
l70:	
	line	117
	
l645:	
;LE6-3.c: 116: }
;LE6-3.c: 117: TXREG = 0x0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	118
;LE6-3.c: 118: while(!TRMT);
	goto	l74
	
l75:	
	
l74:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u271
	goto	u270
u271:
	goto	l74
u270:
	goto	l647
	
l76:	
	line	119
;LE6-3.c: 119: }
	goto	l647
	line	120
	
l68:	
	line	121
;LE6-3.c: 120: else
;LE6-3.c: 121: return 0;
;	Return value of _handshake is never used
	goto	l78
	
l77:	
	goto	l647
	
l67:	
	line	123
	
l647:	
;LE6-3.c: 123: for(int i = 0; i < 10000; i++);
	clrf	(handshake@i_55)
	clrf	(handshake@i_55+1)
	
l649:	
	movf	(handshake@i_55+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u285
	movlw	low(02710h)
	subwf	(handshake@i_55),w
u285:

	skipc
	goto	u281
	goto	u280
u281:
	goto	l653
u280:
	goto	l78
	
l651:	
	goto	l78
	
l79:	
	
l653:	
	movlw	low(01h)
	addwf	(handshake@i_55),f
	skipnc
	incf	(handshake@i_55+1),f
	movlw	high(01h)
	addwf	(handshake@i_55+1),f
	
l655:	
	movf	(handshake@i_55+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u295
	movlw	low(02710h)
	subwf	(handshake@i_55),w
u295:

	skipc
	goto	u291
	goto	u290
u291:
	goto	l653
u290:
	goto	l78
	
l80:	
	line	125
;LE6-3.c: 124: return 1;
;	Return value of _handshake is never used
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_handshake
	__end_of_handshake:
	signat	_handshake,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
