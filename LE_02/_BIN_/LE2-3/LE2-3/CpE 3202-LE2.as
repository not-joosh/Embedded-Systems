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
	file	"CpE 3202-LE2.as"
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
?_readKey:	; 0 bytes @ 0x7
	global	readKey@currentRow
readKey@currentRow:	; 1 bytes @ 0x7
	ds	1
??_readKey:	; 0 bytes @ 0x8
	ds	2
	global	readKey@bits
readKey@bits:	; 2 bytes @ 0xA
	ds	2
	global	readKey@rowCountIN
readKey@rowCountIN:	; 1 bytes @ 0xC
	ds	1
??_main:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@currentRow
main@currentRow:	; 2 bytes @ 0x0
	ds	2
	global	main@rowCountIN
main@rowCountIN:	; 2 bytes @ 0x2
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
;!    BANK0            80      4       4
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    readKey@currentRow	PTR int  size(1) Largest target is 2
;!		 -> main@currentRow(BANK0[2]), 
;!
;!    readKey@rowCountIN	PTR int  size(1) Largest target is 2
;!		 -> main@rowCountIN(BANK0[2]), 
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0    2977
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0      4     4      0
;!                            _initLCD
;!                            _readKey
;! ---------------------------------------------------------------------------------
;! (1) _readKey                                              6     5      1    1590
;!                                              7 COMMON     6     5      1
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     439
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0    1333
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             2     0      2     916
;!                                              5 COMMON     2     0      2
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
;;		line 152 in file "C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowCountIN      2    2[BANK0 ] int 
;;  currentRow      2    0[BANK0 ] int 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initLCD
;;		_readKey
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	152
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	152
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	158
	
l734:	
;LE2-3.c: 158: int rowCountIN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@rowCountIN)
	clrf	(main@rowCountIN+1)
	line	159
	
l736:	
;LE2-3.c: 159: int currentRow = 1;
	movlw	low(01h)
	movwf	(main@currentRow)
	movlw	high(01h)
	movwf	((main@currentRow))+1
	line	160
	
l738:	
;LE2-3.c: 160: OPTION_REG = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	161
;LE2-3.c: 161: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	162
;LE2-3.c: 162: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	163
;LE2-3.c: 163: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	164
;LE2-3.c: 164: PORTC = 0x00;
	clrf	(7)	;volatile
	line	167
	
l740:	
;LE2-3.c: 167: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	168
	
l742:	
;LE2-3.c: 168: PORTD = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	169
	
l744:	
;LE2-3.c: 169: initLCD();
	fcall	_initLCD
	goto	l746
	line	170
;LE2-3.c: 170: while (1)
	
l61:	
	line	172
	
l746:	
;LE2-3.c: 171: {
;LE2-3.c: 172: if(RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l746
u120:
	line	174
	
l748:	
;LE2-3.c: 173: {
;LE2-3.c: 174: readKey(&rowCountIN, &currentRow);
	movlw	(main@currentRow)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(readKey@currentRow)
	movlw	(main@rowCountIN)&0ffh
	fcall	_readKey
	goto	l746
	line	175
	
l62:	
	goto	l746
	line	176
	
l63:	
	line	170
	goto	l746
	
l64:	
	line	177
	
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
;;		line 85 in file "C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  rowCountIN      1    wreg     PTR int 
;;		 -> main@rowCountIN(2), 
;;  currentRow      1    7[COMMON] PTR int 
;;		 -> main@currentRow(2), 
;; Auto vars:     Size  Location     Type
;;  rowCountIN      1   12[COMMON] PTR int 
;;		 -> main@rowCountIN(2), 
;;  bits            2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
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
	line	85
global __ptext1
__ptext1:	;psect for function _readKey
psect	text1
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	85
	global	__size_of_readKey
	__size_of_readKey	equ	__end_of_readKey-_readKey
	
_readKey:	
;incstack = 0
	opt	stack 5
; Regs used in _readKey: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;readKey@rowCountIN stored from wreg
	movwf	(readKey@rowCountIN)
	line	89
	
l674:	
;LE2-3.c: 89: int bits = PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_readKey+0)+0
	clrf	(??_readKey+0)+0+1
	movf	0+(??_readKey+0)+0,w
	movwf	(readKey@bits)
	movf	1+(??_readKey+0)+0,w
	movwf	(readKey@bits+1)
	line	90
;LE2-3.c: 90: switch(bits) {
	goto	l708
	line	91
;LE2-3.c: 91: case 0x1D:
	
l35:	
	line	92
	
l676:	
;LE2-3.c: 92: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	93
;LE2-3.c: 93: break;
	goto	l710
	line	94
;LE2-3.c: 94: case 0x18:
	
l37:	
	line	95
	
l678:	
;LE2-3.c: 95: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	96
;LE2-3.c: 96: break;
	goto	l710
	line	97
;LE2-3.c: 97: case 0x19:
	
l38:	
	line	98
	
l680:	
;LE2-3.c: 98: dataCtrl('2');
	movlw	(032h)
	fcall	_dataCtrl
	line	99
;LE2-3.c: 99: break;
	goto	l710
	line	100
;LE2-3.c: 100: case 0x1A:
	
l39:	
	line	101
	
l682:	
;LE2-3.c: 101: dataCtrl('3');
	movlw	(033h)
	fcall	_dataCtrl
	line	102
;LE2-3.c: 102: break;
	goto	l710
	line	103
;LE2-3.c: 103: case 0x14:
	
l40:	
	line	104
	
l684:	
;LE2-3.c: 104: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	105
;LE2-3.c: 105: break;
	goto	l710
	line	106
;LE2-3.c: 106: case 0x15:
	
l41:	
	line	107
	
l686:	
;LE2-3.c: 107: dataCtrl('5');
	movlw	(035h)
	fcall	_dataCtrl
	line	108
;LE2-3.c: 108: break;
	goto	l710
	line	109
;LE2-3.c: 109: case 0x16:
	
l42:	
	line	110
	
l688:	
;LE2-3.c: 110: dataCtrl('6');
	movlw	(036h)
	fcall	_dataCtrl
	line	111
;LE2-3.c: 111: break;
	goto	l710
	line	112
;LE2-3.c: 112: case 0x10:
	
l43:	
	line	113
	
l690:	
;LE2-3.c: 113: dataCtrl('7');
	movlw	(037h)
	fcall	_dataCtrl
	line	114
;LE2-3.c: 114: break;
	goto	l710
	line	115
;LE2-3.c: 115: case 0x11:
	
l44:	
	line	116
	
l692:	
;LE2-3.c: 116: dataCtrl('8');
	movlw	(038h)
	fcall	_dataCtrl
	line	117
;LE2-3.c: 117: break;
	goto	l710
	line	118
;LE2-3.c: 118: case 0x12:
	
l45:	
	line	119
	
l694:	
;LE2-3.c: 119: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	120
;LE2-3.c: 120: break;
	goto	l710
	line	121
;LE2-3.c: 121: case 0x1F:
	
l46:	
	line	122
	
l696:	
;LE2-3.c: 122: dataCtrl('+');
	movlw	(02Bh)
	fcall	_dataCtrl
	line	123
;LE2-3.c: 123: break;
	goto	l710
	line	124
;LE2-3.c: 124: case 0x1B:
	
l47:	
	line	125
	
l698:	
;LE2-3.c: 125: dataCtrl('-');
	movlw	(02Dh)
	fcall	_dataCtrl
	line	126
;LE2-3.c: 126: break;
	goto	l710
	line	127
;LE2-3.c: 127: case 0x17:
	
l48:	
	line	128
	
l700:	
;LE2-3.c: 128: dataCtrl('*');
	movlw	(02Ah)
	fcall	_dataCtrl
	line	129
;LE2-3.c: 129: break;
	goto	l710
	line	130
;LE2-3.c: 130: case 0x13:
	
l49:	
	line	131
	
l702:	
;LE2-3.c: 131: dataCtrl('/');
	movlw	(02Fh)
	fcall	_dataCtrl
	line	132
;LE2-3.c: 132: break;
	goto	l710
	line	133
;LE2-3.c: 133: case 0x1E:
	
l50:	
	line	134
	
l704:	
;LE2-3.c: 134: dataCtrl('=');
	movlw	(03Dh)
	fcall	_dataCtrl
	line	135
;LE2-3.c: 135: break;
	goto	l710
	line	136
;LE2-3.c: 136: default:
	
l51:	
	line	137
;LE2-3.c: 137: break;
	goto	l710
	line	138
	
l706:	
;LE2-3.c: 138: }
	goto	l710
	line	90
	
l34:	
	
l708:	
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
	goto	l770
	goto	l710
	opt asmopt_on
	
l770:	
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
	goto	l690
	xorlw	17^16	; case 17
	skipnz
	goto	l692
	xorlw	18^17	; case 18
	skipnz
	goto	l694
	xorlw	19^18	; case 19
	skipnz
	goto	l702
	xorlw	20^19	; case 20
	skipnz
	goto	l684
	xorlw	21^20	; case 21
	skipnz
	goto	l686
	xorlw	22^21	; case 22
	skipnz
	goto	l688
	xorlw	23^22	; case 23
	skipnz
	goto	l700
	xorlw	24^23	; case 24
	skipnz
	goto	l678
	xorlw	25^24	; case 25
	skipnz
	goto	l680
	xorlw	26^25	; case 26
	skipnz
	goto	l682
	xorlw	27^26	; case 27
	skipnz
	goto	l698
	xorlw	29^27	; case 29
	skipnz
	goto	l676
	xorlw	30^29	; case 30
	skipnz
	goto	l704
	xorlw	31^30	; case 31
	skipnz
	goto	l696
	goto	l710
	opt asmopt_on

	line	138
	
l36:	
	line	139
	
l710:	
;LE2-3.c: 139: *rowCountIN += 1;
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	140
	
l712:	
;LE2-3.c: 140: if(*rowCountIN == 20) {
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
	goto	u81
	goto	u80
u81:
	goto	l716
u80:
	line	141
	
l714:	
;LE2-3.c: 141: instCtrl(0xC0);
	movlw	low(0C0h)
	movwf	(instCtrl@instruction_in)
	movlw	high(0C0h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	142
;LE2-3.c: 142: } else if(*rowCountIN == 40) {
	goto	l724
	
l52:	
	
l716:	
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movlw	028h
	xorwf	0+(??_readKey+0)+0,w
	iorwf	1+(??_readKey+0)+0,w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l720
u90:
	line	143
	
l718:	
;LE2-3.c: 143: instCtrl(0x94);
	movlw	low(094h)
	movwf	(instCtrl@instruction_in)
	movlw	high(094h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	144
;LE2-3.c: 144: } else if(*rowCountIN == 60) {
	goto	l724
	
l54:	
	
l720:	
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_readKey+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_readKey+0)+0+1
	movlw	03Ch
	xorwf	0+(??_readKey+0)+0,w
	iorwf	1+(??_readKey+0)+0,w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l724
u100:
	line	145
	
l722:	
;LE2-3.c: 145: instCtrl(0xD4);
	movlw	low(0D4h)
	movwf	(instCtrl@instruction_in)
	movlw	high(0D4h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	goto	l724
	line	146
	
l56:	
	goto	l724
	
l55:	
	goto	l724
	
l53:	
	
l724:	
;LE2-3.c: 146: } if (*rowCountIN > 80) {
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
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
	goto	u115
	movlw	low(051h)
	subwf	0+(??_readKey+0)+0,w
u115:

	skipc
	goto	u111
	goto	u110
u111:
	goto	l58
u110:
	line	147
	
l726:	
;LE2-3.c: 147: instCtrl(0x01);
	movlw	low(01h)
	movwf	(instCtrl@instruction_in)
	movlw	high(01h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	148
	
l728:	
;LE2-3.c: 148: *rowCountIN = 0;
	movf	(readKey@rowCountIN),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	goto	l58
	line	149
	
l57:	
	line	150
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_readKey
	__end_of_readKey:
	signat	_readKey,8312
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 61 in file "C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
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
	line	61
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	61
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@data_inst_in stored from wreg
	movwf	(dataCtrl@data_inst_in)
	line	63
	
l660:	
;LE2-3.c: 63: PORTB = data_inst_in;
	movf	(dataCtrl@data_inst_in),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	64
	
l662:	
;LE2-3.c: 64: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	66
	
l664:	
;LE2-3.c: 66: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	67
;LE2-3.c: 67: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	69
	
l666:	
;LE2-3.c: 69: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	70
	
l668:	
;LE2-3.c: 70: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	72
	
l670:	
;LE2-3.c: 72: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	73
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 75 in file "C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
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
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	75
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	77
	
l672:	
;LE2-3.c: 77: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	78
;LE2-3.c: 78: instCtrl(0x38);
	movlw	low(038h)
	movwf	(instCtrl@instruction_in)
	movlw	high(038h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	79
;LE2-3.c: 79: instCtrl(0x08);
	movlw	low(08h)
	movwf	(instCtrl@instruction_in)
	movlw	high(08h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	80
;LE2-3.c: 80: instCtrl(0x01);
	movlw	low(01h)
	movwf	(instCtrl@instruction_in)
	movlw	high(01h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	81
;LE2-3.c: 81: instCtrl(0x06);
	movlw	low(06h)
	movwf	(instCtrl@instruction_in)
	movlw	high(06h)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	82
;LE2-3.c: 82: instCtrl(0x0C);
	movlw	low(0Ch)
	movwf	(instCtrl@instruction_in)
	movlw	high(0Ch)
	movwf	((instCtrl@instruction_in))+1
	fcall	_instCtrl
	line	83
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 47 in file "C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
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
	line	47
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	47
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l650:	
;LE2-3.c: 49: PORTB = instruction_in;
	movf	(instCtrl@instruction_in),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
	
l652:	
;LE2-3.c: 50: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	52
	
l654:	
;LE2-3.c: 52: PORTC = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	53
;LE2-3.c: 53: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	55
	
l656:	
;LE2-3.c: 55: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	56
	
l658:	
;LE2-3.c: 56: delay(2000);
	movlw	low(07D0h)
	movwf	(delay@timeIn)
	movlw	high(07D0h)
	movwf	((delay@timeIn))+1
	fcall	_delay
	line	58
;LE2-3.c: 58: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	59
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 43 in file "C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
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
	line	43
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\admin\Documents\School\CompEng Subs\3201\LE2\LE2-3\LE2-3.c"
	line	43
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	44
	
l646:	
;LE2-3.c: 44: for(int j = 0; j < timeIn; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	goto	l19
	
l20:	
	
l648:	
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
	goto	u75
	movf	(delay@timeIn),w
	subwf	(delay@j),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l648
u70:
	goto	l22
	
l21:	
	line	45
	
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
