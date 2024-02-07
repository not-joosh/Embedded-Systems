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
	FNCALL	_main,_initLCD
	FNCALL	_main,_readKey
	FNCALL	_readKey,_dataCtrl
	FNCALL	_readKey,_instCtrl
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
	global	_OPTION_REG
_OPTION_REG	set	0x81
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
?_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
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
?_instCtrl:	; 0 bytes @ 0x5
??_dataCtrl:	; 0 bytes @ 0x5
	global	dataCtrl@data_inst_in
dataCtrl@data_inst_in:	; 1 bytes @ 0x5
	global	instCtrl@instruction_in
instCtrl@instruction_in:	; 2 bytes @ 0x5
	ds	2
??_instCtrl:	; 0 bytes @ 0x7
??_initLCD:	; 0 bytes @ 0x7
??_readKey:	; 0 bytes @ 0x7
	ds	2
	global	readKey@bits
readKey@bits:	; 2 bytes @ 0x9
	ds	2
	global	readKey@rowCountIN
readKey@rowCountIN:	; 1 bytes @ 0xB
	ds	1
??_main:	; 0 bytes @ 0xC
	global	main@rowCountIN
main@rowCountIN:	; 2 bytes @ 0xC
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
;!    COMMON           14     14      14
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    readKey@rowCountIN	PTR int  size(1) Largest target is 2
;!		 -> main@rowCountIN(COMMON[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_readKey
;!    _readKey->_instCtrl
;!    _dataCtrl->_delay
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
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
;! (0) _main                                                 2     2      0    2287
;!                                             12 COMMON     2     2      0
;!                            _initLCD
;!                            _readKey
;! ---------------------------------------------------------------------------------
;! (1) _readKey                                              5     5      0    1208
;!                                              7 COMMON     5     5      0
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     346
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0    1064
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             2     0      2     733
;!                                              5 COMMON     2     0      2
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                5     3      2     331
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _readKey
;!     _dataCtrl
;!       _delay
;!     _instCtrl
;!       _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
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
;;		line 138 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowCountIN      2   12[COMMON] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initLCD
;;		_readKey
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	138
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	138
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	144
	
l610:	
;LE2.c: 144: int rowCountIN = 0;
	clrf	(main@rowCountIN)
	clrf	(main@rowCountIN+1)
	line	146
	
l612:	
;LE2.c: 146: OPTION_REG = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	147
	
l614:	
;LE2.c: 147: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	148
	
l616:	
;LE2.c: 148: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	149
	
l618:	
;LE2.c: 149: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	150
	
l620:	
;LE2.c: 150: PORTC = 0x00;
	clrf	(7)	;volatile
	line	153
	
l622:	
;LE2.c: 153: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	154
	
l624:	
;LE2.c: 154: PORTD = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	155
	
l626:	
;LE2.c: 155: initLCD();
	fcall	_initLCD
	goto	l628
	line	156
;LE2.c: 156: while (1)
	
l61:	
	line	158
	
l628:	
;LE2.c: 157: {
;LE2.c: 158: if(RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l628
u60:
	line	160
	
l630:	
;LE2.c: 159: {
;LE2.c: 160: readKey(&rowCountIN);
	movlw	(main@rowCountIN)&0ffh
	fcall	_readKey
	goto	l628
	line	161
	
l62:	
	goto	l628
	line	162
	
l63:	
	line	156
	goto	l628
	
l64:	
	line	163
	
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
;;		line 70 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  rowCountIN      1    wreg     PTR int 
;;		 -> main@rowCountIN(2), 
;; Auto vars:     Size  Location     Type
;;  rowCountIN      1   11[COMMON] PTR int 
;;		 -> main@rowCountIN(2), 
;;  bits            2    9[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	70
global __ptext1
__ptext1:	;psect for function _readKey
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	70
	global	__size_of_readKey
	__size_of_readKey	equ	__end_of_readKey-_readKey
	
_readKey:	
;incstack = 0
	opt	stack 5
; Regs used in _readKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;readKey@rowCountIN stored from wreg
	movwf	(readKey@rowCountIN)
	line	74
	
l550:	
;LE2.c: 74: int bits = PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_readKey+0)+0
	clrf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	movwf	(readKey@bits)
	movf	1+(??_readKey+0)+0,w
	movwf	(readKey@bits+1)
	line	75
;LE2.c: 75: switch(bits) {
	goto	l584
	line	76
;LE2.c: 76: case 0x1D:
	
l35:	
	line	77
	
l552:	
;LE2.c: 77: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	78
;LE2.c: 78: break;
	goto	l586
	line	79
;LE2.c: 79: case 0x18:
	
l37:	
	line	80
	
l554:	
;LE2.c: 80: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	81
;LE2.c: 81: break;
	goto	l586
	line	82
;LE2.c: 82: case 0x19:
	
l38:	
	line	83
	
l556:	
;LE2.c: 83: dataCtrl('2');
	movlw	(032h)
	fcall	_dataCtrl
	line	84
;LE2.c: 84: break;
	goto	l586
	line	85
;LE2.c: 85: case 0x1A:
	
l39:	
	line	86
	
l558:	
;LE2.c: 86: dataCtrl('3');
	movlw	(033h)
	fcall	_dataCtrl
	line	87
;LE2.c: 87: break;
	goto	l586
	line	88
;LE2.c: 88: case 0x14:
	
l40:	
	line	89
	
l560:	
;LE2.c: 89: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	90
;LE2.c: 90: break;
	goto	l586
	line	91
;LE2.c: 91: case 0x15:
	
l41:	
	line	92
	
l562:	
;LE2.c: 92: dataCtrl('5');
	movlw	(035h)
	fcall	_dataCtrl
	line	93
;LE2.c: 93: break;
	goto	l586
	line	94
;LE2.c: 94: case 0x16:
	
l42:	
	line	95
	
l564:	
;LE2.c: 95: dataCtrl('6');
	movlw	(036h)
	fcall	_dataCtrl
	line	96
;LE2.c: 96: break;
	goto	l586
	line	97
;LE2.c: 97: case 0x10:
	
l43:	
	line	98
	
l566:	
;LE2.c: 98: dataCtrl('7');
	movlw	(037h)
	fcall	_dataCtrl
	line	99
;LE2.c: 99: break;
	goto	l586
	line	100
;LE2.c: 100: case 0x11:
	
l44:	
	line	101
	
l568:	
;LE2.c: 101: dataCtrl('8');
	movlw	(038h)
	fcall	_dataCtrl
	line	102
;LE2.c: 102: break;
	goto	l586
	line	103
;LE2.c: 103: case 0x12:
	
l45:	
	line	104
	
l570:	
;LE2.c: 104: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	105
;LE2.c: 105: break;
	goto	l586
	line	106
;LE2.c: 106: case 0x1F:
	
l46:	
	line	107
	
l572:	
;LE2.c: 107: dataCtrl('+');
	movlw	(02Bh)
	fcall	_dataCtrl
	line	108
;LE2.c: 108: break;
	goto	l586
	line	109
;LE2.c: 109: case 0x1B:
	
l47:	
	line	110
	
l574:	
;LE2.c: 110: dataCtrl('-');
	movlw	(02Dh)
	fcall	_dataCtrl
	line	111
;LE2.c: 111: break;
	goto	l586
	line	112
;LE2.c: 112: case 0x17:
	
l48:	
	line	113
	
l576:	
;LE2.c: 113: dataCtrl('*');
	movlw	(02Ah)
	fcall	_dataCtrl
	line	114
;LE2.c: 114: break;
	goto	l586
	line	115
;LE2.c: 115: case 0x13:
	
l49:	
	line	116
	
l578:	
;LE2.c: 116: dataCtrl('/');
	movlw	(02Fh)
	fcall	_dataCtrl
	line	117
;LE2.c: 117: break;
	goto	l586
	line	118
;LE2.c: 118: case 0x1E:
	
l50:	
	line	119
	
l580:	
;LE2.c: 119: dataCtrl('=');
	movlw	(03Dh)
	fcall	_dataCtrl
	line	120
;LE2.c: 120: break;
	goto	l586
	line	121
;LE2.c: 121: default:
	
l51:	
	line	122
;LE2.c: 122: break;
	goto	l586
	line	123
	
l582:	
;LE2.c: 123: }
	goto	l586
	line	75
	
l34:	
	
l584:	
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
	goto	l652
	goto	l586
	opt asmopt_on
	
l652:	
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
	goto	l566
	xorlw	17^16	; case 17
	skipnz
	goto	l568
	xorlw	18^17	; case 18
	skipnz
	goto	l570
	xorlw	19^18	; case 19
	skipnz
	goto	l578
	xorlw	20^19	; case 20
	skipnz
	goto	l560
	xorlw	21^20	; case 21
	skipnz
	goto	l562
	xorlw	22^21	; case 22
	skipnz
	goto	l564
	xorlw	23^22	; case 23
	skipnz
	goto	l576
	xorlw	24^23	; case 24
	skipnz
	goto	l554
	xorlw	25^24	; case 25
	skipnz
	goto	l556
	xorlw	26^25	; case 26
	skipnz
	goto	l558
	xorlw	27^26	; case 27
	skipnz
	goto	l574
	xorlw	29^27	; case 29
	skipnz
	goto	l552
	xorlw	30^29	; case 30
	skipnz
	goto	l580
	xorlw	31^30	; case 31
	skipnz
	goto	l572
	goto	l586
	opt asmopt_on

	line	123
	
l36:	
	line	124
	
l586:	
;LE2.c: 124: *rowCountIN += 1;
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	125
	
l588:	
;LE2.c: 125: if(*rowCountIN == 20) {
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movlw	014h
	xorwf	0+(??_readKey+0)+0,w
	iorwf	1+(??_readKey+0)+0,w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l592
u20:
	line	126
	
l590:	
;LE2.c: 126: instCtrl(0xC0);
	movlw	low(0C0h)
	movwf	(instCtrl@instruction_in)
	movlw	high(0C0h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	127
;LE2.c: 127: } else if(*rowCountIN == 40) {
	goto	l600
	
l52:	
	
l592:	
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movlw	028h
	xorwf	0+(??_readKey+0)+0,w
	iorwf	1+(??_readKey+0)+0,w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l596
u30:
	line	128
	
l594:	
;LE2.c: 128: instCtrl(0x94);
	movlw	low(094h)
	movwf	(instCtrl@instruction_in)
	movlw	high(094h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	129
;LE2.c: 129: } else if(*rowCountIN == 60) {
	goto	l600
	
l54:	
	
l596:	
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movlw	03Ch
	xorwf	0+(??_readKey+0)+0,w
	iorwf	1+(??_readKey+0)+0,w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l600
u40:
	line	130
	
l598:	
;LE2.c: 130: instCtrl(0xD4);
	movlw	low(0D4h)
	movwf	(instCtrl@instruction_in)
	movlw	high(0D4h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	goto	l600
	line	131
	
l56:	
	goto	l600
	line	132
	
l55:	
	goto	l600
	
l53:	
	
l600:	
;LE2.c: 131: }
;LE2.c: 132: if ( *rowCountIN > 80) {
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movf	1+(??_readKey+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(051h))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(051h)
	subwf	0+(??_readKey+0)+0,w
u55:

	skipc
	goto	u51
	goto	u50
u51:
	goto	l58
u50:
	line	133
	
l602:	
;LE2.c: 133: instCtrl(0x01);
	movlw	low(01h)
	movwf	(instCtrl@instruction_in)
	movlw	high(01h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	134
	
l604:	
;LE2.c: 134: *rowCountIN = 0;
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	goto	l58
	line	135
	
l57:	
	line	136
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_readKey
	__end_of_readKey:
	signat	_readKey,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 46 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  data_inst_in    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_inst_in    1    5[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	46
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	46
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@data_inst_in stored from wreg
	movwf	(dataCtrl@data_inst_in)
	line	48
	
l536:	
;LE2.c: 48: PORTB = data_inst_in;
	movf	(dataCtrl@data_inst_in),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	49
	
l538:	
;LE2.c: 49: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	51
	
l540:	
;LE2.c: 51: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	52
;LE2.c: 52: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	54
	
l542:	
;LE2.c: 54: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	55
	
l544:	
;LE2.c: 55: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	57
	
l546:	
;LE2.c: 57: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 60 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
	line	60
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	60
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l548:	
;LE2.c: 62: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	63
;LE2.c: 63: instCtrl(0x38);
	movlw	low(038h)
	movwf	(instCtrl@instruction_in)
	movlw	high(038h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	64
;LE2.c: 64: instCtrl(0x08);
	movlw	low(08h)
	movwf	(instCtrl@instruction_in)
	movlw	high(08h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	65
;LE2.c: 65: instCtrl(0x01);
	movlw	low(01h)
	movwf	(instCtrl@instruction_in)
	movlw	high(01h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	66
;LE2.c: 66: instCtrl(0x06);
	movlw	low(06h)
	movwf	(instCtrl@instruction_in)
	movlw	high(06h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	67
;LE2.c: 67: instCtrl(0x0C);
	movlw	low(0Ch)
	movwf	(instCtrl@instruction_in)
	movlw	high(0Ch)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	68
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 32 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  instruction_    2    5[COMMON] int 
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
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	32
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	32
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l526:	
;LE2.c: 34: PORTB = instruction_in;
	movf	(instCtrl@instruction_in),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
	
l528:	
;LE2.c: 35: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	37
	
l530:	
;LE2.c: 37: PORTC = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	38
;LE2.c: 38: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	40
	
l532:	
;LE2.c: 40: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	41
	
l534:	
;LE2.c: 41: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	43
;LE2.c: 43: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	44
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 28 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
	line	28
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	28
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	29
	
l522:	
;LE2.c: 29: for(int j = 0; j < timeIn; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	goto	l19
	
l20:	
	
l524:	
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
	goto	u15
	movf	(delay@timeIn),w
	subwf	(delay@j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l524
u10:
	goto	l22
	
l21:	
	line	30
	
l22:	
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
