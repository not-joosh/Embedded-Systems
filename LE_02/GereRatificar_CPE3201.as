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
	FNCALL	_dataCtrl,_delay
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
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
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	delay@j
delay@j:	; 2 bytes @ 0x3
	ds	1
??___awmod:	; 0 bytes @ 0x4
	ds	1
?_instCtrl:	; 0 bytes @ 0x5
?_dataCtrl:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	instCtrl@dataIn
instCtrl@dataIn:	; 2 bytes @ 0x5
	global	dataCtrl@dataIn
dataCtrl@dataIn:	; 2 bytes @ 0x5
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
??_instCtrl:	; 0 bytes @ 0x7
??_dataCtrl:	; 0 bytes @ 0x7
??_initLCD:	; 0 bytes @ 0x7
	global	?_readKey
?_readKey:	; 2 bytes @ 0x7
	ds	2
??_readKey:	; 0 bytes @ 0x9
	ds	2
??_main:	; 0 bytes @ 0xB
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	readKey@rowCount
readKey@rowCount:	; 1 bytes @ 0x0
	ds	1
	global	readKey@bits
readKey@bits:	; 2 bytes @ 0x1
	ds	2
	global	readKey@isValidKey
readKey@isValidKey:	; 2 bytes @ 0x3
	ds	2
	global	main@isValidKey
main@isValidKey:	; 2 bytes @ 0x5
	ds	2
	global	main@rowCount
main@rowCount:	; 2 bytes @ 0x7
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
;!    COMMON           14     11      11
;!    BANK0            80      9       9
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    readKey@rowCount	PTR int  size(1) Largest target is 2
;!		 -> main@rowCount(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_readKey
;!    _readKey->_dataCtrl
;!    _dataCtrl->_delay
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_readKey
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
;! (0) _main                                                 4     4      0    4117
;!                                              5 BANK0      4     4      0
;!                            ___awmod
;!                            _initLCD
;!                           _instCtrl
;!                            _readKey
;! ---------------------------------------------------------------------------------
;! (1) _readKey                                              9     7      2    1308
;!                                              7 COMMON     4     2      2
;!                                              0 BANK0      5     5      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             2     0      2    1234
;!                                              5 COMMON     2     0      2
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0    1333
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             2     0      2     916
;!                                              5 COMMON     2     0      2
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                5     3      2     417
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              7     3      4     402
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awmod
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!   _readKey
;!     _dataCtrl
;!       _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      9       9       5       11.3%
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
;;		line 143 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  isValidKey      2    5[BANK0 ] int 
;;  rowCount        2    7[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
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
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	143
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	143
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	145
	
l800:	
;LE2.c: 145: int rowCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@rowCount)
	clrf	(main@rowCount+1)
	line	146
;LE2.c: 146: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	147
;LE2.c: 147: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	148
	
l802:	
;LE2.c: 148: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	150
	
l804:	
;LE2.c: 150: initLCD();
	fcall	_initLCD
	goto	l806
	line	151
;LE2.c: 151: while (1)
	
l53:	
	line	153
	
l806:	
;LE2.c: 152: {
;LE2.c: 153: if (RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u281
	goto	u280
u281:
	goto	l806
u280:
	line	155
	
l808:	
;LE2.c: 154: {
;LE2.c: 155: int isValidKey = readKey(&rowCount);
	movlw	(main@rowCount)&0ffh
	fcall	_readKey
	movf	(1+(?_readKey)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@isValidKey+1)
	addwf	(main@isValidKey+1)
	movf	(0+(?_readKey)),w
	clrf	(main@isValidKey)
	addwf	(main@isValidKey)

	line	156
	
l810:	
;LE2.c: 156: if (isValidKey)
	movf	(main@isValidKey+1),w
	iorwf	(main@isValidKey),w
	skipnz
	goto	u291
	goto	u290
u291:
	goto	l806
u290:
	line	158
	
l812:	
;LE2.c: 157: {
;LE2.c: 158: rowCount += 1;
	movlw	low(01h)
	addwf	(main@rowCount),f
	skipnc
	incf	(main@rowCount+1),f
	movlw	high(01h)
	addwf	(main@rowCount+1),f
	line	159
	
l814:	
;LE2.c: 159: if (rowCount % 20 == 0)
	movlw	low(014h)
	movwf	(___awmod@divisor)
	movlw	high(014h)
	movwf	((___awmod@divisor))+1
	movf	(main@rowCount+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(main@rowCount),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	((1+(?___awmod))),w
	iorwf	((0+(?___awmod))),w
	skipz
	goto	u301
	goto	u300
u301:
	goto	l828
u300:
	line	161
	
l816:	
;LE2.c: 160: {
;LE2.c: 161: if (rowCount == 20)
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@rowCount),w
	iorwf	(main@rowCount+1),w
	skipz
	goto	u311
	goto	u310
u311:
	goto	l820
u310:
	line	162
	
l818:	
;LE2.c: 162: instCtrl(0xC0);
	movlw	low(0C0h)
	movwf	(instCtrl@dataIn)
	movlw	high(0C0h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	goto	l828
	line	163
	
l57:	
	
l820:	
;LE2.c: 163: else if (rowCount == 40)
	movlw	028h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@rowCount),w
	iorwf	(main@rowCount+1),w
	skipz
	goto	u321
	goto	u320
u321:
	goto	l824
u320:
	line	164
	
l822:	
;LE2.c: 164: instCtrl(0x94);
	movlw	low(094h)
	movwf	(instCtrl@dataIn)
	movlw	high(094h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	goto	l828
	line	165
	
l59:	
	
l824:	
;LE2.c: 165: else if (rowCount == 60)
	movlw	03Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@rowCount),w
	iorwf	(main@rowCount+1),w
	skipz
	goto	u331
	goto	u330
u331:
	goto	l828
u330:
	line	166
	
l826:	
;LE2.c: 166: instCtrl(0xD4);
	movlw	low(0D4h)
	movwf	(instCtrl@dataIn)
	movlw	high(0D4h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	goto	l828
	
l61:	
	goto	l828
	line	167
	
l60:	
	goto	l828
	
l58:	
	goto	l828
	
l56:	
	line	168
	
l828:	
;LE2.c: 167: }
;LE2.c: 168: if (rowCount > 80)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@rowCount+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(051h))^80h
	subwf	btemp+1,w
	skipz
	goto	u345
	movlw	low(051h)
	subwf	(main@rowCount),w
u345:

	skipc
	goto	u341
	goto	u340
u341:
	goto	l806
u340:
	line	170
	
l830:	
;LE2.c: 169: {
;LE2.c: 170: instCtrl(0x01);
	movlw	low(01h)
	movwf	(instCtrl@dataIn)
	movlw	high(01h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	line	171
	
l832:	
;LE2.c: 171: rowCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@rowCount)
	clrf	(main@rowCount+1)
	goto	l806
	line	172
	
l62:	
	goto	l806
	line	173
	
l55:	
	goto	l806
	line	174
	
l54:	
	goto	l806
	line	175
	
l63:	
	line	151
	goto	l806
	
l64:	
	line	176
	
l65:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_readKey

;; *************** function _readKey *****************
;; Defined at:
;;		line 85 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  rowCount        1    wreg     PTR int 
;;		 -> main@rowCount(2), 
;; Auto vars:     Size  Location     Type
;;  rowCount        1    0[BANK0 ] PTR int 
;;		 -> main@rowCount(2), 
;;  isValidKey      2    3[BANK0 ] int 
;;  bits            2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       5       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	85
global __ptext1
__ptext1:	;psect for function _readKey
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	85
	global	__size_of_readKey
	__size_of_readKey	equ	__end_of_readKey-_readKey
	
_readKey:	
;incstack = 0
	opt	stack 5
; Regs used in _readKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	87
	
l716:	
;LE2.c: 87: int isValidKey = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readKey@isValidKey)
	movlw	high(01h)
	movwf	((readKey@isValidKey))+1
	line	88
;LE2.c: 88: int bits = PORTD;
	movf	(8),w	;volatile
	movwf	(??_readKey+0)+0
	clrf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	movwf	(readKey@bits)
	movf	1+(??_readKey+0)+0,w
	movwf	(readKey@bits+1)
	line	89
;LE2.c: 89: switch (bits)
	goto	l752
	line	91
;LE2.c: 90: {
;LE2.c: 91: case KEY_0:
	
l33:	
	line	92
	
l718:	
;LE2.c: 92: dataCtrl('0');
	movlw	low(030h)
	movwf	(dataCtrl@dataIn)
	movlw	high(030h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	93
;LE2.c: 93: break;
	goto	l754
	line	94
;LE2.c: 94: case KEY_1:
	
l35:	
	line	95
	
l720:	
;LE2.c: 95: dataCtrl('1');
	movlw	low(031h)
	movwf	(dataCtrl@dataIn)
	movlw	high(031h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	96
;LE2.c: 96: break;
	goto	l754
	line	97
;LE2.c: 97: case KEY_2:
	
l36:	
	line	98
	
l722:	
;LE2.c: 98: dataCtrl('2');
	movlw	low(032h)
	movwf	(dataCtrl@dataIn)
	movlw	high(032h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	99
;LE2.c: 99: break;
	goto	l754
	line	100
;LE2.c: 100: case KEY_3:
	
l37:	
	line	101
	
l724:	
;LE2.c: 101: dataCtrl('3');
	movlw	low(033h)
	movwf	(dataCtrl@dataIn)
	movlw	high(033h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	102
;LE2.c: 102: break;
	goto	l754
	line	103
;LE2.c: 103: case KEY_4:
	
l38:	
	line	104
	
l726:	
;LE2.c: 104: dataCtrl('4');
	movlw	low(034h)
	movwf	(dataCtrl@dataIn)
	movlw	high(034h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	105
;LE2.c: 105: break;
	goto	l754
	line	106
;LE2.c: 106: case KEY_5:
	
l39:	
	line	107
	
l728:	
;LE2.c: 107: dataCtrl('5');
	movlw	low(035h)
	movwf	(dataCtrl@dataIn)
	movlw	high(035h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	108
;LE2.c: 108: break;
	goto	l754
	line	109
;LE2.c: 109: case KEY_6:
	
l40:	
	line	110
	
l730:	
;LE2.c: 110: dataCtrl('6');
	movlw	low(036h)
	movwf	(dataCtrl@dataIn)
	movlw	high(036h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	111
;LE2.c: 111: break;
	goto	l754
	line	112
;LE2.c: 112: case KEY_7:
	
l41:	
	line	113
	
l732:	
;LE2.c: 113: dataCtrl('7');
	movlw	low(037h)
	movwf	(dataCtrl@dataIn)
	movlw	high(037h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	114
;LE2.c: 114: break;
	goto	l754
	line	115
;LE2.c: 115: case KEY_8:
	
l42:	
	line	116
	
l734:	
;LE2.c: 116: dataCtrl('8');
	movlw	low(038h)
	movwf	(dataCtrl@dataIn)
	movlw	high(038h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	117
;LE2.c: 117: break;
	goto	l754
	line	118
;LE2.c: 118: case KEY_9:
	
l43:	
	line	119
	
l736:	
;LE2.c: 119: dataCtrl('9');
	movlw	low(039h)
	movwf	(dataCtrl@dataIn)
	movlw	high(039h)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	120
;LE2.c: 120: break;
	goto	l754
	line	121
;LE2.c: 121: case KEY_PLUS:
	
l44:	
	line	122
	
l738:	
;LE2.c: 122: dataCtrl('+');
	movlw	low(02Bh)
	movwf	(dataCtrl@dataIn)
	movlw	high(02Bh)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	123
;LE2.c: 123: break;
	goto	l754
	line	124
;LE2.c: 124: case KEY_MINUS:
	
l45:	
	line	125
	
l740:	
;LE2.c: 125: dataCtrl('-');
	movlw	low(02Dh)
	movwf	(dataCtrl@dataIn)
	movlw	high(02Dh)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	126
;LE2.c: 126: break;
	goto	l754
	line	127
;LE2.c: 127: case KEY_MULTIPLY:
	
l46:	
	line	128
	
l742:	
;LE2.c: 128: dataCtrl('*');
	movlw	low(02Ah)
	movwf	(dataCtrl@dataIn)
	movlw	high(02Ah)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	129
;LE2.c: 129: break;
	goto	l754
	line	130
;LE2.c: 130: case KEY_DIVIDE:
	
l47:	
	line	131
	
l744:	
;LE2.c: 131: dataCtrl('/');
	movlw	low(02Fh)
	movwf	(dataCtrl@dataIn)
	movlw	high(02Fh)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	132
;LE2.c: 132: break;
	goto	l754
	line	133
;LE2.c: 133: case KEY_EQUALS:
	
l48:	
	line	134
	
l746:	
;LE2.c: 134: dataCtrl('=');
	movlw	low(03Dh)
	movwf	(dataCtrl@dataIn)
	movlw	high(03Dh)
	movwf	((dataCtrl@dataIn))+1
	fcall	_dataCtrl
	line	135
;LE2.c: 135: break;
	goto	l754
	line	136
;LE2.c: 136: default:
	
l49:	
	line	137
	
l748:	
;LE2.c: 137: isValidKey = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(readKey@isValidKey)
	clrf	(readKey@isValidKey+1)
	line	138
;LE2.c: 138: break;
	goto	l754
	line	139
	
l750:	
;LE2.c: 139: }
	goto	l754
	line	89
	
l32:	
	
l752:	
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
	goto	l854
	goto	l748
	opt asmopt_on
	
l854:	
; Switch size 1, requested type "space"
; Number of cases is 15, Range of values is 16 to 31
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           46    24 (average)
; direct_byte           59    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (readKey@bits),w
	opt asmopt_off
	xorlw	16^0	; case 16
	skipnz
	goto	l732
	xorlw	17^16	; case 17
	skipnz
	goto	l734
	xorlw	18^17	; case 18
	skipnz
	goto	l736
	xorlw	19^18	; case 19
	skipnz
	goto	l744
	xorlw	20^19	; case 20
	skipnz
	goto	l726
	xorlw	21^20	; case 21
	skipnz
	goto	l728
	xorlw	22^21	; case 22
	skipnz
	goto	l730
	xorlw	23^22	; case 23
	skipnz
	goto	l742
	xorlw	24^23	; case 24
	skipnz
	goto	l720
	xorlw	25^24	; case 25
	skipnz
	goto	l722
	xorlw	26^25	; case 26
	skipnz
	goto	l724
	xorlw	27^26	; case 27
	skipnz
	goto	l740
	xorlw	29^27	; case 29
	skipnz
	goto	l718
	xorlw	30^29	; case 30
	skipnz
	goto	l746
	xorlw	31^30	; case 31
	skipnz
	goto	l738
	goto	l748
	opt asmopt_on

	line	139
	
l34:	
	line	140
	
l754:	
;LE2.c: 140: return isValidKey;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readKey@isValidKey+1),w
	clrf	(?_readKey+1)
	addwf	(?_readKey+1)
	movf	(readKey@isValidKey),w
	clrf	(?_readKey)
	addwf	(?_readKey)

	goto	l50
	
l756:	
	line	141
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_readKey
	__end_of_readKey:
	signat	_readKey,4218
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 60 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  dataIn          2    5[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	60
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	60
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l702:	
;LE2.c: 63: PORTB = dataIn;
	movf	(dataCtrl@dataIn),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	64
	
l704:	
;LE2.c: 64: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	66
	
l706:	
;LE2.c: 66: PORTC = 0x06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	67
;LE2.c: 67: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	69
	
l708:	
;LE2.c: 69: PORTC = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	70
	
l710:	
;LE2.c: 70: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	72
	
l712:	
;LE2.c: 72: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	73
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 75 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	75
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	75
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	77
	
l714:	
;LE2.c: 77: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	78
;LE2.c: 78: instCtrl(0x38);
	movlw	low(038h)
	movwf	(instCtrl@dataIn)
	movlw	high(038h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	line	79
;LE2.c: 79: instCtrl(0x08);
	movlw	low(08h)
	movwf	(instCtrl@dataIn)
	movlw	high(08h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	line	80
;LE2.c: 80: instCtrl(0x01);
	movlw	low(01h)
	movwf	(instCtrl@dataIn)
	movlw	high(01h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	line	81
;LE2.c: 81: instCtrl(0x06);
	movlw	low(06h)
	movwf	(instCtrl@dataIn)
	movlw	high(06h)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	line	82
;LE2.c: 82: instCtrl(0x0C);
	movlw	low(0Ch)
	movwf	(instCtrl@dataIn)
	movlw	high(0Ch)
	movwf	((instCtrl@dataIn))+1
	fcall	_instCtrl
	line	83
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 45 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  dataIn          2    5[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	45
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	45
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l692:	
;LE2.c: 48: PORTB = dataIn;
	movf	(instCtrl@dataIn),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	49
	
l694:	
;LE2.c: 49: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	51
	
l696:	
;LE2.c: 51: PORTC = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	52
;LE2.c: 52: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	54
	
l698:	
;LE2.c: 54: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	55
	
l700:	
;LE2.c: 55: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@timeIn)
	movlw	high(03E8h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	57
;LE2.c: 57: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 40 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
;;		_instCtrl
;;		_dataCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	40
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	40
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	42
	
l688:	
;LE2.c: 42: for (int j = 0; j < timeIn; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	goto	l17
	
l18:	
	
l690:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l17:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@timeIn+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u185
	movf	(delay@timeIn),w
	subwf	(delay@j),w
u185:

	skipc
	goto	u181
	goto	u180
u181:
	goto	l690
u180:
	goto	l20
	
l19:	
	line	43
	
l20:	
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
	
l762:	
	clrf	(___awmod@sign)
	line	14
	
l764:	
	btfss	(___awmod@dividend+1),7
	goto	u191
	goto	u190
u191:
	goto	l770
u190:
	line	15
	
l766:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l768:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l770
	line	17
	
l284:	
	line	18
	
l770:	
	btfss	(___awmod@divisor+1),7
	goto	u201
	goto	u200
u201:
	goto	l774
u200:
	line	19
	
l772:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l774
	
l285:	
	line	20
	
l774:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u211
	goto	u210
u211:
	goto	l792
u210:
	line	21
	
l776:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l782
	
l288:	
	line	23
	
l778:	
	movlw	01h
	
u225:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u225
	line	24
	
l780:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l782
	line	25
	
l287:	
	line	22
	
l782:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u231
	goto	u230
u231:
	goto	l778
u230:
	goto	l784
	
l289:	
	goto	l784
	line	26
	
l290:	
	line	27
	
l784:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u245
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u245:
	skipc
	goto	u241
	goto	u240
u241:
	goto	l788
u240:
	line	28
	
l786:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l788
	
l291:	
	line	29
	
l788:	
	movlw	01h
	
u255:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u255
	line	30
	
l790:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u261
	goto	u260
u261:
	goto	l784
u260:
	goto	l792
	
l292:	
	goto	l792
	line	31
	
l286:	
	line	32
	
l792:	
	movf	(___awmod@sign),w
	skipz
	goto	u270
	goto	l796
u270:
	line	33
	
l794:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l796
	
l293:	
	line	34
	
l796:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l294
	
l798:	
	line	35
	
l294:	
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
