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
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _handshake
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
	file	"LE6-2_SENDER.as"
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

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	global	handshake@dataIn
handshake@dataIn:	; 1 bytes @ 0x0
	ds	1
	global	readKeypad@keypress
readKeypad@keypress:	; 1 bytes @ 0x1
	ds	1
??_main:	; 0 bytes @ 0x2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4       6
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
;!    _main->_readKeypad
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
;! (0) _main                                                 2     2      0      60
;!                                              2 COMMON     2     2      0
;!                          _handshake
;!                         _readKeypad
;! ---------------------------------------------------------------------------------
;! (1) _readKeypad                                           2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _handshake                                            1     1      0      15
;!                                              0 COMMON     1     1      0
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
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       6       1       42.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       6       3        0.0%
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
;!DATA                 0      0       6      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 70 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] int 
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
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
	line	70
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
	line	70
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l553:	
;LE6-2_SENDER.c: 75: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	76
;LE6-2_SENDER.c: 76: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	78
	
l555:	
;LE6-2_SENDER.c: 78: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	80
	
l557:	
;LE6-2_SENDER.c: 80: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	81
	
l559:	
;LE6-2_SENDER.c: 81: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	82
	
l561:	
;LE6-2_SENDER.c: 82: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	83
	
l563:	
;LE6-2_SENDER.c: 83: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	84
	
l565:	
;LE6-2_SENDER.c: 84: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	goto	l567
	line	86
;LE6-2_SENDER.c: 85: for(;;)
	
l35:	
	line	88
	
l567:	
;LE6-2_SENDER.c: 86: {
;LE6-2_SENDER.c: 88: if(RD4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l567
u20:
	line	90
	
l569:	
;LE6-2_SENDER.c: 89: {
;LE6-2_SENDER.c: 90: readKeypad();
	fcall	_readKeypad
	line	91
	
l571:	
;LE6-2_SENDER.c: 91: handshake(keypadValue);
	movf	(_keypadValue),w
	fcall	_handshake
	line	92
	
l573:	
;LE6-2_SENDER.c: 92: for(int i = 0; i < 1000; i++);
	clrf	(main@i)
	clrf	(main@i+1)
	
l575:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(03E8h)
	subwf	(main@i),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l579
u30:
	goto	l567
	
l577:	
	goto	l567
	
l37:	
	
l579:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l581:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(03E8h)
	subwf	(main@i),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l579
u40:
	goto	l567
	
l38:	
	goto	l567
	line	93
	
l36:	
	line	96
;LE6-2_SENDER.c: 93: }
;LE6-2_SENDER.c: 96: }
	goto	l567
	
l39:	
	line	97
	
l40:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_readKeypad

;; *************** function _readKeypad *****************
;; Defined at:
;;		line 99 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
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
	line	99
global __ptext1
__ptext1:	;psect for function _readKeypad
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
	line	99
	global	__size_of_readKeypad
	__size_of_readKeypad	equ	__end_of_readKeypad-_readKeypad
	
_readKeypad:	
;incstack = 0
	opt	stack 7
; Regs used in _readKeypad: [wreg-fsr0h+status,2+status,0]
	line	101
	
l519:	
;LE6-2_SENDER.c: 101: char keypress = 0x0F & PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(readKeypad@keypress)
	line	102
;LE6-2_SENDER.c: 102: switch(keypress)
	goto	l545
	line	104
;LE6-2_SENDER.c: 103: {
;LE6-2_SENDER.c: 104: case KEY_1:
	
l44:	
	line	105
	
l521:	
;LE6-2_SENDER.c: 105: keypadValue = 0x06;
	movlw	(06h)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	106
;LE6-2_SENDER.c: 106: break;
	goto	l56
	line	107
;LE6-2_SENDER.c: 107: case KEY_2:
	
l46:	
	line	108
	
l523:	
;LE6-2_SENDER.c: 108: keypadValue = 0x5B;
	movlw	(05Bh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	109
;LE6-2_SENDER.c: 109: break;
	goto	l56
	line	110
;LE6-2_SENDER.c: 110: case KEY_3:
	
l47:	
	line	111
	
l525:	
;LE6-2_SENDER.c: 111: keypadValue = 0x4F;
	movlw	(04Fh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	112
;LE6-2_SENDER.c: 112: break;
	goto	l56
	line	113
;LE6-2_SENDER.c: 113: case KEY_4:
	
l48:	
	line	114
	
l527:	
;LE6-2_SENDER.c: 114: keypadValue = 0x66;
	movlw	(066h)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	115
;LE6-2_SENDER.c: 115: break;
	goto	l56
	line	116
;LE6-2_SENDER.c: 116: case KEY_5:
	
l49:	
	line	117
	
l529:	
;LE6-2_SENDER.c: 117: keypadValue = 0x6D;
	movlw	(06Dh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	118
;LE6-2_SENDER.c: 118: break;
	goto	l56
	line	119
;LE6-2_SENDER.c: 119: case KEY_6:
	
l50:	
	line	120
	
l531:	
;LE6-2_SENDER.c: 120: keypadValue = 0x7D ;
	movlw	(07Dh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	121
;LE6-2_SENDER.c: 121: break;
	goto	l56
	line	122
;LE6-2_SENDER.c: 122: case KEY_7:
	
l51:	
	line	123
	
l533:	
;LE6-2_SENDER.c: 123: keypadValue = 0x07;
	movlw	(07h)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	124
;LE6-2_SENDER.c: 124: break;
	goto	l56
	line	125
;LE6-2_SENDER.c: 125: case KEY_8:
	
l52:	
	line	126
	
l535:	
;LE6-2_SENDER.c: 126: keypadValue = 0x7F;
	movlw	(07Fh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	127
;LE6-2_SENDER.c: 127: break;
	goto	l56
	line	128
;LE6-2_SENDER.c: 128: case KEY_9:
	
l53:	
	line	129
	
l537:	
;LE6-2_SENDER.c: 129: keypadValue = 0x6F;
	movlw	(06Fh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	130
;LE6-2_SENDER.c: 130: break;
	goto	l56
	line	131
;LE6-2_SENDER.c: 131: case KEY_0:
	
l54:	
	line	132
	
l539:	
;LE6-2_SENDER.c: 132: keypadValue = 0x3F;
	movlw	(03Fh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	133
;LE6-2_SENDER.c: 133: break;
	goto	l56
	line	134
;LE6-2_SENDER.c: 134: default:
	
l55:	
	line	135
	
l541:	
;LE6-2_SENDER.c: 135: keypadValue = 0xFF;
	movlw	(0FFh)
	movwf	(??_readKeypad+0)+0
	movf	(??_readKeypad+0)+0,w
	movwf	(_keypadValue)
	line	136
;LE6-2_SENDER.c: 136: break;
	goto	l56
	line	137
	
l543:	
;LE6-2_SENDER.c: 137: }
	goto	l56
	line	102
	
l43:	
	
l545:	
	movf	(readKeypad@keypress),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 13
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; direct_byte           50     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l521
	xorlw	1^0	; case 1
	skipnz
	goto	l523
	xorlw	2^1	; case 2
	skipnz
	goto	l525
	xorlw	4^2	; case 4
	skipnz
	goto	l527
	xorlw	5^4	; case 5
	skipnz
	goto	l529
	xorlw	6^5	; case 6
	skipnz
	goto	l531
	xorlw	8^6	; case 8
	skipnz
	goto	l533
	xorlw	9^8	; case 9
	skipnz
	goto	l535
	xorlw	10^9	; case 10
	skipnz
	goto	l537
	xorlw	13^10	; case 13
	skipnz
	goto	l539
	goto	l541
	opt asmopt_on

	line	137
	
l45:	
	line	138
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_readKeypad
	__end_of_readKeypad:
	signat	_readKeypad,88
	global	_handshake

;; *************** function _handshake *****************
;; Defined at:
;;		line 140 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
;; Parameters:    Size  Location     Type
;;  dataIn          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataIn          1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	140
global __ptext2
__ptext2:	;psect for function _handshake
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_06\LE6_SENDER\LE6-2_SENDER.c"
	line	140
	global	__size_of_handshake
	__size_of_handshake	equ	__end_of_handshake-_handshake
	
_handshake:	
;incstack = 0
	opt	stack 7
; Regs used in _handshake: [wreg]
;handshake@dataIn stored from wreg
	movwf	(handshake@dataIn)
	line	142
	
l547:	
;LE6-2_SENDER.c: 142: while(!TRMT);
	goto	l59
	
l60:	
	
l59:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l59
u10:
	goto	l549
	
l61:	
	line	143
	
l549:	
;LE6-2_SENDER.c: 143: TXREG = dataIn;
	movf	(handshake@dataIn),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	goto	l62
	line	144
	
l551:	
	line	145
;LE6-2_SENDER.c: 144: return 1;
;	Return value of _handshake is never used
	
l62:	
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
