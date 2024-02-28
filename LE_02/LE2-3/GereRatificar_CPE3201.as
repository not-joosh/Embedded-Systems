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
	FNCALL	_main,___awmod
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_readKey
	FNCALL	_readKey,_dataCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTCbits
_PORTCbits	set	0x7
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
__ptext0:	;psect for function ___awmod
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
?_instCtrl:	; 0 bytes @ 0x0
??_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
??_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@timeIn
delay@timeIn:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	instCtrl@dataIn
instCtrl@dataIn:	; 1 bytes @ 0x2
	global	dataCtrl@dataIn
dataCtrl@dataIn:	; 1 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?_readKey
?_readKey:	; 2 bytes @ 0x3
	global	delay@j
delay@j:	; 2 bytes @ 0x3
	ds	1
??___awmod:	; 0 bytes @ 0x4
	ds	1
??_initLCD:	; 0 bytes @ 0x5
??_readKey:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	readKey@charCount
readKey@charCount:	; 1 bytes @ 0x7
	ds	1
	global	readKey@bits
readKey@bits:	; 2 bytes @ 0x8
	ds	2
	global	readKey@isValidKey
readKey@isValidKey:	; 2 bytes @ 0xA
	ds	2
??_main:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@isValidKey
main@isValidKey:	; 2 bytes @ 0x0
	ds	2
	global	main@charCount
main@charCount:	; 2 bytes @ 0x2
	ds	2
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
;!    COMMON           14     12      12
;!    BANK0            80      4       4
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    readKey@charCount	PTR int  size(1) Largest target is 2
;!		 -> main@charCount(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_readKey
;!    _readKey->_dataCtrl
;!    _initLCD->_delay
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
;! (0) _main                                                 4     4      0     799
;!                                              0 BANK0      4     4      0
;!                            ___awmod
;!                            _initLCD
;!                           _instCtrl
;!                            _readKey
;! ---------------------------------------------------------------------------------
;! (1) _readKey                                              9     7      2      96
;!                                              3 COMMON     9     7      2
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     121
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                5     3      2      99
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              7     3      4     402
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awmod
;!   _initLCD
;!     _delay
;!     _instCtrl
;!   _instCtrl
;!   _readKey
;!     _dataCtrl
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      C       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      4       4       5        5.0%
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
;;		line 130 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  isValidKey      2    0[BANK0 ] int 
;;  charCount       2    2[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		_initLCD
;;		_instCtrl
;;		_readKey
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	130
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	130
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	132
	
l797:	
;LE2-3.c: 132: int charCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@charCount)
	clrf	(main@charCount+1)
	line	133
;LE2-3.c: 133: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	134
;LE2-3.c: 134: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	135
	
l799:	
;LE2-3.c: 135: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	137
	
l801:	
;LE2-3.c: 137: initLCD();
	fcall	_initLCD
	goto	l803
	line	138
;LE2-3.c: 138: while (1)
	
l58:	
	line	140
	
l803:	
;LE2-3.c: 139: {
;LE2-3.c: 140: if (RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u301
	goto	u300
u301:
	goto	l803
u300:
	line	142
	
l805:	
;LE2-3.c: 141: {
;LE2-3.c: 142: int isValidKey = readKey(&charCount);
	movlw	(main@charCount)&0ffh
	fcall	_readKey
	movf	(1+(?_readKey)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@isValidKey+1)
	addwf	(main@isValidKey+1)
	movf	(0+(?_readKey)),w
	clrf	(main@isValidKey)
	addwf	(main@isValidKey)

	line	143
	
l807:	
;LE2-3.c: 143: if (isValidKey)
	movf	(main@isValidKey+1),w
	iorwf	(main@isValidKey),w
	skipnz
	goto	u311
	goto	u310
u311:
	goto	l803
u310:
	line	145
	
l809:	
;LE2-3.c: 144: {
;LE2-3.c: 145: charCount += 1;
	movlw	low(01h)
	addwf	(main@charCount),f
	skipnc
	incf	(main@charCount+1),f
	movlw	high(01h)
	addwf	(main@charCount+1),f
	line	146
	
l811:	
;LE2-3.c: 146: if (charCount % 20 == 0)
	movlw	low(014h)
	movwf	(___awmod@divisor)
	movlw	high(014h)
	movwf	((___awmod@divisor))+1
	movf	(main@charCount+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(main@charCount),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	((1+(?___awmod))),w
	iorwf	((0+(?___awmod))),w
	skipz
	goto	u321
	goto	u320
u321:
	goto	l825
u320:
	line	148
	
l813:	
;LE2-3.c: 147: {
;LE2-3.c: 148: if (charCount == 20)
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@charCount),w
	iorwf	(main@charCount+1),w
	skipz
	goto	u331
	goto	u330
u331:
	goto	l817
u330:
	line	149
	
l815:	
;LE2-3.c: 149: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	goto	l825
	line	150
	
l62:	
	
l817:	
;LE2-3.c: 150: else if (charCount == 40)
	movlw	028h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@charCount),w
	iorwf	(main@charCount+1),w
	skipz
	goto	u341
	goto	u340
u341:
	goto	l821
u340:
	line	151
	
l819:	
;LE2-3.c: 151: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	goto	l825
	line	152
	
l64:	
	
l821:	
;LE2-3.c: 152: else if (charCount == 60)
	movlw	03Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@charCount),w
	iorwf	(main@charCount+1),w
	skipz
	goto	u351
	goto	u350
u351:
	goto	l825
u350:
	line	153
	
l823:	
;LE2-3.c: 153: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	goto	l825
	
l66:	
	goto	l825
	line	154
	
l65:	
	goto	l825
	
l63:	
	goto	l825
	
l61:	
	line	155
	
l825:	
;LE2-3.c: 154: }
;LE2-3.c: 155: if (charCount > 80)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@charCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(051h))^80h
	subwf	btemp+1,w
	skipz
	goto	u365
	movlw	low(051h)
	subwf	(main@charCount),w
u365:

	skipc
	goto	u361
	goto	u360
u361:
	goto	l803
u360:
	line	157
	
l827:	
;LE2-3.c: 156: {
;LE2-3.c: 157: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	158
	
l829:	
;LE2-3.c: 158: charCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@charCount)
	clrf	(main@charCount+1)
	goto	l803
	line	159
	
l67:	
	goto	l803
	line	160
	
l60:	
	goto	l803
	line	161
	
l59:	
	goto	l803
	line	162
	
l68:	
	line	138
	goto	l803
	
l69:	
	line	163
	
l70:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_readKey

;; *************** function _readKey *****************
;; Defined at:
;;		line 81 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  charCount       1    wreg     PTR int 
;;		 -> main@charCount(2), 
;; Auto vars:     Size  Location     Type
;;  charCount       1    7[COMMON] PTR int 
;;		 -> main@charCount(2), 
;;  isValidKey      2   10[COMMON] int 
;;  bits            2    8[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	81
global __ptext1
__ptext1:	;psect for function _readKey
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	81
	global	__size_of_readKey
	__size_of_readKey	equ	__end_of_readKey-_readKey
	
_readKey:	
;incstack = 0
	opt	stack 6
; Regs used in _readKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	83
	
l711:	
;LE2-3.c: 83: int isValidKey = 1;
	movlw	low(01h)
	movwf	(readKey@isValidKey)
	movlw	high(01h)
	movwf	((readKey@isValidKey))+1
	line	84
;LE2-3.c: 84: int bits = PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_readKey+0)+0
	clrf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	movwf	(readKey@bits)
	movf	1+(??_readKey+0)+0,w
	movwf	(readKey@bits+1)
	line	85
;LE2-3.c: 85: switch (bits)
	goto	l741
	line	87
;LE2-3.c: 86: {
;LE2-3.c: 87: case KEY_0:
	
l41:	
	line	88
	
l713:	
;LE2-3.c: 88: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	89
;LE2-3.c: 89: break;
	goto	l743
	line	90
;LE2-3.c: 90: case KEY_1:
	
l43:	
	line	91
	
l715:	
;LE2-3.c: 91: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	92
;LE2-3.c: 92: break;
	goto	l743
	line	93
;LE2-3.c: 93: case KEY_2:
	
l44:	
	line	94
	
l717:	
;LE2-3.c: 94: dataCtrl('2');
	movlw	(032h)
	fcall	_dataCtrl
	line	95
;LE2-3.c: 95: break;
	goto	l743
	line	96
;LE2-3.c: 96: case KEY_3:
	
l45:	
	line	97
	
l719:	
;LE2-3.c: 97: dataCtrl('3');
	movlw	(033h)
	fcall	_dataCtrl
	line	98
;LE2-3.c: 98: break;
	goto	l743
	line	99
;LE2-3.c: 99: case KEY_4:
	
l46:	
	line	100
	
l721:	
;LE2-3.c: 100: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	101
;LE2-3.c: 101: break;
	goto	l743
	line	102
;LE2-3.c: 102: case KEY_5:
	
l47:	
	line	103
	
l723:	
;LE2-3.c: 103: dataCtrl('5');
	movlw	(035h)
	fcall	_dataCtrl
	line	104
;LE2-3.c: 104: break;
	goto	l743
	line	105
;LE2-3.c: 105: case KEY_6:
	
l48:	
	line	106
	
l725:	
;LE2-3.c: 106: dataCtrl('6');
	movlw	(036h)
	fcall	_dataCtrl
	line	107
;LE2-3.c: 107: break;
	goto	l743
	line	108
;LE2-3.c: 108: case KEY_7:
	
l49:	
	line	109
	
l727:	
;LE2-3.c: 109: dataCtrl('7');
	movlw	(037h)
	fcall	_dataCtrl
	line	110
;LE2-3.c: 110: break;
	goto	l743
	line	111
;LE2-3.c: 111: case KEY_8:
	
l50:	
	line	112
	
l729:	
;LE2-3.c: 112: dataCtrl('8');
	movlw	(038h)
	fcall	_dataCtrl
	line	113
;LE2-3.c: 113: break;
	goto	l743
	line	114
;LE2-3.c: 114: case KEY_9:
	
l51:	
	line	115
	
l731:	
;LE2-3.c: 115: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	116
;LE2-3.c: 116: break;
	goto	l743
	line	117
;LE2-3.c: 117: case KEY_HASH:
	
l52:	
	line	118
	
l733:	
;LE2-3.c: 118: dataCtrl('#');
	movlw	(023h)
	fcall	_dataCtrl
	line	119
;LE2-3.c: 119: break;
	goto	l743
	line	120
;LE2-3.c: 120: case KEY_MULTIPLY:
	
l53:	
	line	121
	
l735:	
;LE2-3.c: 121: dataCtrl('*');
	movlw	(02Ah)
	fcall	_dataCtrl
	line	122
;LE2-3.c: 122: break;
	goto	l743
	line	123
;LE2-3.c: 123: default:
	
l54:	
	line	124
	
l737:	
;LE2-3.c: 124: isValidKey = 0;
	clrf	(readKey@isValidKey)
	clrf	(readKey@isValidKey+1)
	line	125
;LE2-3.c: 125: break;
	goto	l743
	line	126
	
l739:	
;LE2-3.c: 126: }
	goto	l743
	line	85
	
l40:	
	
l741:	
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
	goto	l851
	goto	l737
	opt asmopt_on
	
l851:	
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
	goto	l715
	xorlw	17^16	; case 17
	skipnz
	goto	l717
	xorlw	18^17	; case 18
	skipnz
	goto	l719
	xorlw	20^18	; case 20
	skipnz
	goto	l721
	xorlw	21^20	; case 21
	skipnz
	goto	l723
	xorlw	22^21	; case 22
	skipnz
	goto	l725
	xorlw	24^22	; case 24
	skipnz
	goto	l727
	xorlw	25^24	; case 25
	skipnz
	goto	l729
	xorlw	26^25	; case 26
	skipnz
	goto	l731
	xorlw	28^26	; case 28
	skipnz
	goto	l735
	xorlw	29^28	; case 29
	skipnz
	goto	l713
	xorlw	30^29	; case 30
	skipnz
	goto	l733
	goto	l737
	opt asmopt_on

	line	126
	
l42:	
	line	127
	
l743:	
;LE2-3.c: 127: return isValidKey;
	movf	(readKey@isValidKey+1),w
	clrf	(?_readKey+1)
	addwf	(?_readKey+1)
	movf	(readKey@isValidKey),w
	clrf	(?_readKey)
	addwf	(?_readKey)

	goto	l55
	
l745:	
	line	128
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_readKey
	__end_of_readKey:
	signat	_readKey,4218
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 53 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  dataIn          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataIn          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readKey
;;		_printStr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	53
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	53
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg]
;dataCtrl@dataIn stored from wreg
	movwf	(dataCtrl@dataIn)
	line	55
	
l701:	
;LE2-3.c: 55: PORTB = dataIn;
	movf	(dataCtrl@dataIn),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	56
	
l703:	
;LE2-3.c: 56: PORTCbits.RC1 = 1;
	bsf	(7),1	;volatile
	line	57
	
l705:	
;LE2-3.c: 57: PORTCbits.RC2 = 1;
	bsf	(7),2	;volatile
	line	58
;LE2-3.c: 58: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_dataCtrl+0)+0+1),f
	movlw	221
movwf	((??_dataCtrl+0)+0),f
u377:
	decfsz	((??_dataCtrl+0)+0),f
	goto	u377
	decfsz	((??_dataCtrl+0)+0+1),f
	goto	u377
	nop2
opt asmopt_on

	line	59
	
l707:	
;LE2-3.c: 59: PORTCbits.RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),2	;volatile
	line	60
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 62 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	62
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	62
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	64
	
l709:	
;LE2-3.c: 64: delay(100);
	movlw	low(064h)
	movwf	(delay@timeIn)
	movlw	high(064h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	65
;LE2-3.c: 65: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	66
;LE2-3.c: 66: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	67
;LE2-3.c: 67: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	68
;LE2-3.c: 68: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	69
;LE2-3.c: 69: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	70
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 44 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  dataIn          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataIn          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	44
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	44
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 7
; Regs used in _instCtrl: [wreg]
;instCtrl@dataIn stored from wreg
	movwf	(instCtrl@dataIn)
	line	46
	
l693:	
;LE2-3.c: 46: PORTB = dataIn;
	movf	(instCtrl@dataIn),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	47
	
l695:	
;LE2-3.c: 47: PORTCbits.RC1 = 0;
	bcf	(7),1	;volatile
	line	48
	
l697:	
;LE2-3.c: 48: PORTCbits.RC2 = 1;
	bsf	(7),2	;volatile
	line	49
;LE2-3.c: 49: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_instCtrl+0)+0+1),f
	movlw	221
movwf	((??_instCtrl+0)+0),f
u387:
	decfsz	((??_instCtrl+0)+0),f
	goto	u387
	decfsz	((??_instCtrl+0)+0+1),f
	goto	u387
	nop2
opt asmopt_on

	line	50
	
l699:	
;LE2-3.c: 50: PORTCbits.RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),2	;volatile
	line	51
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 39 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
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
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	39
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2-3\LE2-3.c"
	line	39
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	41
	
l689:	
;LE2-3.c: 41: for (int j = 0; j < timeIn; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	goto	l19
	
l20:	
	
l691:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l19:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@timeIn+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u195
	movf	(delay@timeIn),w
	subwf	(delay@j),w
u195:

	skipc
	goto	u191
	goto	u190
u191:
	goto	l691
u190:
	goto	l22
	
l21:	
	line	42
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l751:	
	clrf	(___awmod@sign)
	line	14
	
l753:	
	btfss	(___awmod@dividend+1),7
	goto	u201
	goto	u200
u201:
	goto	l759
u200:
	line	15
	
l755:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l757:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l759
	line	17
	
l289:	
	line	18
	
l759:	
	btfss	(___awmod@divisor+1),7
	goto	u211
	goto	u210
u211:
	goto	l763
u210:
	line	19
	
l761:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l763
	
l290:	
	line	20
	
l763:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u221
	goto	u220
u221:
	goto	l781
u220:
	line	21
	
l765:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l771
	
l293:	
	line	23
	
l767:	
	movlw	01h
	
u235:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u235
	line	24
	
l769:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l771
	line	25
	
l292:	
	line	22
	
l771:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u241
	goto	u240
u241:
	goto	l767
u240:
	goto	l773
	
l294:	
	goto	l773
	line	26
	
l295:	
	line	27
	
l773:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u255
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u255:
	skipc
	goto	u251
	goto	u250
u251:
	goto	l777
u250:
	line	28
	
l775:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l777
	
l296:	
	line	29
	
l777:	
	movlw	01h
	
u265:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u265
	line	30
	
l779:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u271
	goto	u270
u271:
	goto	l773
u270:
	goto	l781
	
l297:	
	goto	l781
	line	31
	
l291:	
	line	32
	
l781:	
	movf	(___awmod@sign),w
	skipz
	goto	u280
	goto	l785
u280:
	line	33
	
l783:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l785
	
l298:	
	line	34
	
l785:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l299
	
l787:	
	line	35
	
l299:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
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
