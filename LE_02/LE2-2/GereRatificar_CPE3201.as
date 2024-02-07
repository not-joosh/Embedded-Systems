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
	FNCALL	_main,_readKey
	FNCALL	_readKey,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RD4
_RD4	set	0x44
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay
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
	file	"GereRatificar_CPE3201.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_readKey:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	delay@timeIn
delay@timeIn:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@j
delay@j:	; 2 bytes @ 0x3
	ds	2
??_readKey:	; 0 bytes @ 0x5
	ds	2
	global	readKey@bits
readKey@bits:	; 2 bytes @ 0x7
	ds	2
??_main:	; 0 bytes @ 0x9
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9       9
;!    BANK0            80      0       0
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
;!    _main->_readKey
;!    _readKey->_delay
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
;! (0) _main                                                 0     0      0      88
;!                            _readKey
;! ---------------------------------------------------------------------------------
;! (1) _readKey                                              4     4      0      88
;!                                              5 COMMON     4     4      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                5     3      2      73
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _readKey
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 86 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_readKey
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
	line	86
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
	line	86
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	88
	
l540:	
;LE2-2.c: 88: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	89
;LE2-2.c: 89: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	90
	
l542:	
;LE2-2.c: 90: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	91
	
l544:	
;LE2-2.c: 91: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l546
	line	92
;LE2-2.c: 92: while (1)
	
l39:	
	line	94
	
l546:	
;LE2-2.c: 93: {
;LE2-2.c: 94: if (RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l546
u20:
	line	96
	
l548:	
;LE2-2.c: 95: {
;LE2-2.c: 96: readKey();
	fcall	_readKey
	goto	l546
	line	97
	
l40:	
	goto	l546
	line	98
	
l41:	
	line	92
	goto	l546
	
l42:	
	line	99
	
l43:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_readKey

;; *************** function _readKey *****************
;; Defined at:
;;		line 39 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  bits            2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	39
global __ptext1
__ptext1:	;psect for function _readKey
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
	line	39
	global	__size_of_readKey
	__size_of_readKey	equ	__end_of_readKey-_readKey
	
_readKey:	
;incstack = 0
	opt	stack 6
; Regs used in _readKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	41
	
l504:	
;LE2-2.c: 41: int bits = PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_readKey+0)+0
	clrf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	movwf	(readKey@bits)
	movf	1+(??_readKey+0)+0,w
	movwf	(readKey@bits+1)
	line	42
;LE2-2.c: 42: switch (bits)
	goto	l532
	line	44
;LE2-2.c: 43: {
;LE2-2.c: 44: case KEY_0:
	
l22:	
	line	45
	
l506:	
;LE2-2.c: 45: PORTB = 0x00;
	clrf	(6)	;volatile
	line	46
;LE2-2.c: 46: break;
	goto	l534
	line	47
;LE2-2.c: 47: case KEY_1:
	
l24:	
	line	48
	
l508:	
;LE2-2.c: 48: PORTB = 0x01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	49
;LE2-2.c: 49: break;
	goto	l534
	line	50
;LE2-2.c: 50: case KEY_2:
	
l25:	
	line	51
	
l510:	
;LE2-2.c: 51: PORTB = 0x02;
	movlw	(02h)
	movwf	(6)	;volatile
	line	52
;LE2-2.c: 52: break;
	goto	l534
	line	53
;LE2-2.c: 53: case KEY_3:
	
l26:	
	line	54
	
l512:	
;LE2-2.c: 54: PORTB = 0x03;
	movlw	(03h)
	movwf	(6)	;volatile
	line	55
;LE2-2.c: 55: break;
	goto	l534
	line	56
;LE2-2.c: 56: case KEY_4:
	
l27:	
	line	57
	
l514:	
;LE2-2.c: 57: PORTB = 0x04;
	movlw	(04h)
	movwf	(6)	;volatile
	line	58
;LE2-2.c: 58: break;
	goto	l534
	line	59
;LE2-2.c: 59: case KEY_5:
	
l28:	
	line	60
	
l516:	
;LE2-2.c: 60: PORTB = 0x05;
	movlw	(05h)
	movwf	(6)	;volatile
	line	61
;LE2-2.c: 61: break;
	goto	l534
	line	62
;LE2-2.c: 62: case KEY_6:
	
l29:	
	line	63
	
l518:	
;LE2-2.c: 63: PORTB = 0x06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	64
;LE2-2.c: 64: break;
	goto	l534
	line	65
;LE2-2.c: 65: case KEY_7:
	
l30:	
	line	66
	
l520:	
;LE2-2.c: 66: PORTB = 0x07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	67
;LE2-2.c: 67: break;
	goto	l534
	line	68
;LE2-2.c: 68: case KEY_8:
	
l31:	
	line	69
	
l522:	
;LE2-2.c: 69: PORTB = 0x08;
	movlw	(08h)
	movwf	(6)	;volatile
	line	70
;LE2-2.c: 70: break;
	goto	l534
	line	71
;LE2-2.c: 71: case KEY_9:
	
l32:	
	line	72
	
l524:	
;LE2-2.c: 72: PORTB = 0x09;
	movlw	(09h)
	movwf	(6)	;volatile
	line	73
;LE2-2.c: 73: break;
	goto	l534
	line	74
;LE2-2.c: 74: case KEY_MULTIPLY:
	
l33:	
	line	75
	
l526:	
;LE2-2.c: 75: PORTB = 0x0F;
	movlw	(0Fh)
	movwf	(6)	;volatile
	line	76
;LE2-2.c: 76: break;
	goto	l534
	line	77
;LE2-2.c: 77: case KEY_HASH:
	
l34:	
	line	78
	
l528:	
;LE2-2.c: 78: PORTB = 0x0F;
	movlw	(0Fh)
	movwf	(6)	;volatile
	line	79
;LE2-2.c: 79: break;
	goto	l534
	line	80
;LE2-2.c: 80: default:
	
l35:	
	line	81
;LE2-2.c: 81: break;
	goto	l534
	line	82
	
l530:	
;LE2-2.c: 82: }
	goto	l534
	line	42
	
l21:	
	
l532:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (readKey@bits+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l570
	goto	l534
	opt asmopt_on
	
l570:	
; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 16 to 30
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           56    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (readKey@bits),w
	opt asmopt_off
	xorlw	16^0	; case 16
	skipnz
	goto	l508
	xorlw	17^16	; case 17
	skipnz
	goto	l510
	xorlw	18^17	; case 18
	skipnz
	goto	l512
	xorlw	20^18	; case 20
	skipnz
	goto	l514
	xorlw	21^20	; case 21
	skipnz
	goto	l516
	xorlw	22^21	; case 22
	skipnz
	goto	l518
	xorlw	24^22	; case 24
	skipnz
	goto	l520
	xorlw	25^24	; case 25
	skipnz
	goto	l522
	xorlw	26^25	; case 26
	skipnz
	goto	l524
	xorlw	28^26	; case 28
	skipnz
	goto	l526
	xorlw	29^28	; case 29
	skipnz
	goto	l506
	xorlw	30^29	; case 30
	skipnz
	goto	l528
	goto	l534
	opt asmopt_on

	line	82
	
l23:	
	line	83
	
l534:	
;LE2-2.c: 83: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	84
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_readKey
	__end_of_readKey:
	signat	_readKey,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 34 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
;; Parameters:    Size  Location     Type
;;  timeIn          2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	34
global __ptext2
__ptext2:	;psect for function _delay
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-2\LE2-2.c"
	line	34
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	36
	
l500:	
;LE2-2.c: 36: for (int j = 0; j < timeIn; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	goto	l15
	
l16:	
	
l502:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l15:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@timeIn+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u15
	movf	(delay@timeIn),w
	subwf	(delay@j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l502
u10:
	goto	l18
	
l17:	
	line	37
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
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
