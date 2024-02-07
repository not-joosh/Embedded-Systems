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
	FNCALL	_readKey,___awdiv
	FNCALL	_readKey,___awmod
	FNCALL	_readKey,___wmul
	FNCALL	_readKey,_dataCtrl
	FNCALL	_readKey,_instCtrl
	FNCALL	_dataCtrl,_delay
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	global	_keyCodes
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	10
_keyCodes:
	retlw	01Dh
	retlw	0

	retlw	018h
	retlw	0

	retlw	019h
	retlw	0

	retlw	01Ah
	retlw	0

	retlw	014h
	retlw	0

	retlw	015h
	retlw	0

	retlw	016h
	retlw	0

	retlw	010h
	retlw	0

	retlw	011h
	retlw	0

	retlw	012h
	retlw	0

	retlw	01Fh
	retlw	0

	retlw	01Bh
	retlw	0

	retlw	017h
	retlw	0

	retlw	013h
	retlw	0

	retlw	01Eh
	retlw	0

	global __end_of_keyCodes
__end_of_keyCodes:
	global	_keyMap
psect	strings
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	5
_keyMap:
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	02Bh
	retlw	02Dh
	retlw	02Ah
	retlw	02Fh
	retlw	03Dh
	global __end_of_keyMap
__end_of_keyMap:
	global	_keyCodes
	global	_keyMap
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
; #config settings
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@timeIn
delay@timeIn:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	delay@j
delay@j:	; 2 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	ds	1
??_dataCtrl:	; 0 bytes @ 0x5
	global	dataCtrl@data_inst_in
dataCtrl@data_inst_in:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x9
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x9
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0xB
	ds	2
??_instCtrl:	; 0 bytes @ 0xD
??_initLCD:	; 0 bytes @ 0xD
??_main:	; 0 bytes @ 0xD
??___wmul:	; 0 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	2
?_instCtrl:	; 0 bytes @ 0x2
	global	instCtrl@instruction_in
instCtrl@instruction_in:	; 2 bytes @ 0x2
	ds	2
??_readKey:	; 0 bytes @ 0x4
	ds	3
	global	readKey@bits
readKey@bits:	; 2 bytes @ 0x7
	ds	2
	global	readKey@i
readKey@i:	; 2 bytes @ 0x9
	ds	2
	global	readKey@rowCount
readKey@rowCount:	; 1 bytes @ 0xB
	ds	1
	global	main@rowCount
main@rowCount:	; 2 bytes @ 0xC
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    45
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80     14      14
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
;!    _readKey->___wmul
;!    _dataCtrl->_delay
;!    ___wmul->___awdiv
;!    _instCtrl->___wmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_readKey
;!    _readKey->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->___wmul
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
;! (0) _main                                                 2     2      0    3867
;!                                             12 BANK0      2     2      0
;!                            _initLCD
;!                            _readKey
;! ---------------------------------------------------------------------------------
;! (1) _readKey                                              8     8      0    2611
;!                                              4 BANK0      8     8      0
;!                            ___awdiv
;!                            ___awmod
;!                             ___wmul
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     439
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     198
;!                                              9 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;!                            ___awdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     508
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     406
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0    1227
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             2     0      2     810
;!                                              2 BANK0      2     0      2
;!                            ___awdiv (ARG)
;!                             ___wmul (ARG)
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                5     3      2     417
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
;!       ___awdiv (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!       _delay (ARG)
;!   _readKey
;!     ___awdiv
;!     ___awmod
;!     ___wmul
;!       ___awdiv (ARG)
;!     _dataCtrl
;!       _delay
;!     _instCtrl
;!       ___awdiv (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!       _delay (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      E       E       5       17.5%
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
;;		line 69 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowCount        2   12[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
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
	line	69
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	69
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	71
	
l817:	
;LE2.c: 71: int rowCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@rowCount)
	clrf	(main@rowCount+1)
	line	72
	
l819:	
;LE2.c: 72: OPTION_REG = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	73
	
l821:	
;LE2.c: 73: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	74
	
l823:	
;LE2.c: 74: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	75
	
l825:	
;LE2.c: 75: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	76
	
l827:	
;LE2.c: 76: PORTC = 0x00;
	clrf	(7)	;volatile
	line	78
	
l829:	
;LE2.c: 78: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	79
	
l831:	
;LE2.c: 79: PORTD = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	80
	
l833:	
;LE2.c: 80: initLCD();
	fcall	_initLCD
	goto	l835
	line	81
;LE2.c: 81: while (1)
	
l46:	
	line	83
	
l835:	
;LE2.c: 82: {
;LE2.c: 83: if (RD4 == 1) readKey(&rowCount);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u601
	goto	u600
u601:
	goto	l835
u600:
	
l837:	
	movlw	(main@rowCount)&0ffh
	fcall	_readKey
	goto	l835
	
l47:	
	goto	l835
	line	84
	
l48:	
	line	81
	goto	l835
	
l49:	
	line	85
	
l50:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_readKey

;; *************** function _readKey *****************
;; Defined at:
;;		line 52 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  rowCount        1    wreg     PTR int 
;;		 -> main@rowCount(2), 
;; Auto vars:     Size  Location     Type
;;  rowCount        1   11[BANK0 ] PTR int 
;;		 -> main@rowCount(2), 
;;  i               2    9[BANK0 ] int 
;;  bits            2    7[BANK0 ] int 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___wmul
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	52
global __ptext1
__ptext1:	;psect for function _readKey
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	52
	global	__size_of_readKey
	__size_of_readKey	equ	__end_of_readKey-_readKey
	
_readKey:	
;incstack = 0
	opt	stack 5
; Regs used in _readKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;readKey@rowCount stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readKey@rowCount)
	line	54
	
l795:	
;LE2.c: 54: int bits = PORTD;
	movf	(8),w	;volatile
	movwf	(??_readKey+0)+0
	clrf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	movwf	(readKey@bits)
	movf	1+(??_readKey+0)+0,w
	movwf	(readKey@bits+1)
	line	55
	
l797:	
;LE2.c: 55: for (int i = 0; i < sizeof(keyCodes) / sizeof(keyCodes[0]); i++)
	clrf	(readKey@i)
	clrf	(readKey@i+1)
	
l799:	
	movlw	high(0Fh)
	subwf	(readKey@i+1),w
	movlw	low(0Fh)
	skipnz
	subwf	(readKey@i),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l803
u550:
	goto	l809
	
l801:	
	goto	l809
	line	56
	
l38:	
	line	57
	
l803:	
;LE2.c: 56: {
;LE2.c: 57: if (bits == keyCodes[i])
	movf	(readKey@i),w
	movwf	(??_readKey+0)+0
	addwf	(??_readKey+0)+0,w
	addlw	low((_keyCodes)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_readKey+1)+0
	fcall	stringdir
	movwf	(??_readKey+1)+0+1
	movf	(readKey@bits+1),w
	xorwf	1+(??_readKey+1)+0,w
	skipz
	goto	u565
	movf	(readKey@bits),w
	xorwf	0+(??_readKey+1)+0,w
u565:

	skipz
	goto	u561
	goto	u560
u561:
	goto	l807
u560:
	line	59
	
l805:	
;LE2.c: 58: {
;LE2.c: 59: dataCtrl(keyMap[i]);
	movf	(readKey@i),w
	addlw	low((_keyMap)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	60
;LE2.c: 60: break;
	goto	l809
	line	61
	
l40:	
	line	55
	
l807:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(readKey@i),f
	skipnc
	incf	(readKey@i+1),f
	movlw	high(01h)
	addwf	(readKey@i+1),f
	movlw	high(0Fh)
	subwf	(readKey@i+1),w
	movlw	low(0Fh)
	skipnz
	subwf	(readKey@i),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l803
u570:
	goto	l809
	
l39:	
	line	63
	
l809:	
;LE2.c: 61: }
;LE2.c: 62: }
;LE2.c: 63: *rowCount = (*rowCount + 1) % 80;
	movlw	low(050h)
	movwf	(___awmod@divisor)
	movlw	high(050h)
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readKey@rowCount),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	addlw	low(01h)
	movwf	(___awmod@dividend)
	movf	1+(??_readKey+0)+0,w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(___awmod@dividend)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readKey@rowCount),w
	movwf	fsr0
	movf	(0+(?___awmod)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___awmod)),w
	movwf	indf
	line	64
;LE2.c: 64: if (*rowCount % 20 == 0) instCtrl((0xC0 + (*rowCount / 20 - 1) * 0x34));
	movlw	low(014h)
	movwf	(___awmod@divisor)
	movlw	high(014h)
	movwf	((___awmod@divisor))+1
	movf	(readKey@rowCount),w
	movwf	fsr0
	movf	indf,w
	movwf	(___awmod@dividend)
	incf	fsr0,f
	movf	indf,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	((1+(?___awmod))),w
	iorwf	((0+(?___awmod))),w
	skipz
	goto	u581
	goto	u580
u581:
	goto	l813
u580:
	
l811:	
	movlw	low(014h)
	movwf	(___awdiv@divisor)
	movlw	high(014h)
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readKey@rowCount),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(___awdiv@dividend)
	incf	fsr0,f
	movf	indf,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(-1)
	movwf	(___wmul@multiplier)
	movf	(1+(?___awdiv)),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(___wmul@multiplier)
	movlw	low(034h)
	movwf	(___wmul@multiplicand)
	movlw	high(034h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@instruction_in)
	movf	(1+(?___wmul)),w
	skipnc
	addlw	1
	addlw	high(0C0h)
	movwf	1+(instCtrl@instruction_in)
	fcall	_instCtrl
	goto	l813
	
l41:	
	line	66
	
l813:	
;LE2.c: 66: if (*rowCount == 0) instCtrl(0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readKey@rowCount),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	incf	fsr0,f
	iorwf	indf,w
	skipz
	goto	u591
	goto	u590
u591:
	goto	l43
u590:
	
l815:	
	movlw	low(01h)
	movwf	(instCtrl@instruction_in)
	movlw	high(01h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	goto	l43
	
l42:	
	line	67
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_readKey
	__end_of_readKey:
	signat	_readKey,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 31 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
	line	31
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	31
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@data_inst_in stored from wreg
	movwf	(dataCtrl@data_inst_in)
	line	33
	
l687:	
;LE2.c: 33: PORTB = data_inst_in;
	movf	(dataCtrl@data_inst_in),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	34
	
l689:	
;LE2.c: 34: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	35
	
l691:	
;LE2.c: 35: PORTC = 0x06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
;LE2.c: 36: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	37
	
l693:	
;LE2.c: 37: PORTC = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	38
	
l695:	
;LE2.c: 38: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	39
	
l697:	
;LE2.c: 39: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	40
	
l32:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    9[COMMON] unsigned int 
;;  multiplicand    2   11[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext3
__ptext3:	;psect for function ___wmul
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l699:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l701
	line	44
	
l133:	
	line	45
	
l701:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u321
	goto	u320
u321:
	goto	l134
u320:
	line	46
	
l703:	
	movf	(___wmul@multiplicand),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l134:	
	line	47
	movlw	01h
	
u335:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u335
	line	48
	
l705:	
	movlw	01h
	
u345:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u345
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u351
	goto	u350
u351:
	goto	l701
u350:
	goto	l707
	
l135:	
	line	52
	
l707:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l136
	
l709:	
	line	53
	
l136:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l755:	
	clrf	(___awmod@sign)
	line	14
	
l757:	
	btfss	(___awmod@dividend+1),7
	goto	u461
	goto	u460
u461:
	goto	l763
u460:
	line	15
	
l759:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l761:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l763
	line	17
	
l269:	
	line	18
	
l763:	
	btfss	(___awmod@divisor+1),7
	goto	u471
	goto	u470
u471:
	goto	l767
u470:
	line	19
	
l765:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l767
	
l270:	
	line	20
	
l767:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l785
u480:
	line	21
	
l769:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l775
	
l273:	
	line	23
	
l771:	
	movlw	01h
	
u495:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u495
	line	24
	
l773:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l775
	line	25
	
l272:	
	line	22
	
l775:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u501
	goto	u500
u501:
	goto	l771
u500:
	goto	l777
	
l274:	
	goto	l777
	line	26
	
l275:	
	line	27
	
l777:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u515
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l781
u510:
	line	28
	
l779:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l781
	
l276:	
	line	29
	
l781:	
	movlw	01h
	
u525:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u525
	line	30
	
l783:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l777
u530:
	goto	l785
	
l277:	
	goto	l785
	line	31
	
l271:	
	line	32
	
l785:	
	movf	(___awmod@sign),w
	skipz
	goto	u540
	goto	l789
u540:
	line	33
	
l787:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l789
	
l278:	
	line	34
	
l789:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l279
	
l791:	
	line	35
	
l279:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readKey
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___awdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l711:	
	clrf	(___awdiv@sign)
	line	15
	
l713:	
	btfss	(___awdiv@divisor+1),7
	goto	u361
	goto	u360
u361:
	goto	l719
u360:
	line	16
	
l715:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l717:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l719
	line	18
	
l256:	
	line	19
	
l719:	
	btfss	(___awdiv@dividend+1),7
	goto	u371
	goto	u370
u371:
	goto	l725
u370:
	line	20
	
l721:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l723:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l725
	line	22
	
l257:	
	line	23
	
l725:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l727:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u381
	goto	u380
u381:
	goto	l747
u380:
	line	25
	
l729:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l735
	
l260:	
	line	27
	
l731:	
	movlw	01h
	
u395:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u395
	line	28
	
l733:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l735
	line	29
	
l259:	
	line	26
	
l735:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u401
	goto	u400
u401:
	goto	l731
u400:
	goto	l737
	
l261:	
	goto	l737
	line	30
	
l262:	
	line	31
	
l737:	
	movlw	01h
	
u415:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u415
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u425
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u425:
	skipc
	goto	u421
	goto	u420
u421:
	goto	l743
u420:
	line	33
	
l739:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l741:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l743
	line	35
	
l263:	
	line	36
	
l743:	
	movlw	01h
	
u435:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u435
	line	37
	
l745:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u441
	goto	u440
u441:
	goto	l737
u440:
	goto	l747
	
l264:	
	goto	l747
	line	38
	
l258:	
	line	39
	
l747:	
	movf	(___awdiv@sign),w
	skipz
	goto	u450
	goto	l751
u450:
	line	40
	
l749:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l751
	
l265:	
	line	41
	
l751:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l266
	
l753:	
	line	42
	
l266:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	42
global __ptext6
__ptext6:	;psect for function _initLCD
psect	text6
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	42
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l793:	
;LE2.c: 44: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	45
;LE2.c: 45: instCtrl(0x38);
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@instruction_in)
	movlw	high(038h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	46
;LE2.c: 46: instCtrl(0x08);
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@instruction_in)
	movlw	high(08h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	47
;LE2.c: 47: instCtrl(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@instruction_in)
	movlw	high(01h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	48
;LE2.c: 48: instCtrl(0x06);
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@instruction_in)
	movlw	high(06h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	49
;LE2.c: 49: instCtrl(0x0C);
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@instruction_in)
	movlw	high(0Ch)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	50
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 20 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
;; Parameters:    Size  Location     Type
;;  instruction_    2    2[BANK0 ] int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
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
psect	text7,local,class=CODE,delta=2,merge=1
	line	20
global __ptext7
__ptext7:	;psect for function _instCtrl
psect	text7
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	20
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l677:	
;LE2.c: 22: PORTB = instruction_in;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(instCtrl@instruction_in),w
	movwf	(6)	;volatile
	line	23
	
l679:	
;LE2.c: 23: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	24
	
l681:	
;LE2.c: 24: PORTC = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	25
;LE2.c: 25: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	26
	
l683:	
;LE2.c: 26: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	27
	
l685:	
;LE2.c: 27: delay(0x2000);
	movlw	low(02000h)
	movwf	(delay@timeIn)
	movlw	high(02000h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	28
;LE2.c: 28: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	29
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 15 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	15
global __ptext8
__ptext8:	;psect for function _delay
psect	text8
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_02\LE2.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	17
	
l673:	
;LE2.c: 17: for(int j = 0; j < timeIn; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	goto	l23
	
l24:	
	
l675:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l23:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@timeIn+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u315
	movf	(delay@timeIn),w
	subwf	(delay@j),w
u315:

	skipc
	goto	u311
	goto	u310
u311:
	goto	l675
u310:
	goto	l26
	
l25:	
	line	18
	
l26:	
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
