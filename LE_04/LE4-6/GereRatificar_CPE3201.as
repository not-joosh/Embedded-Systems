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
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_delay
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_printStr
	FNCALL	_printStr,_dataCtrl
	FNCALL	_dataCtrl,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	FNCALL	_ISR,___lwdiv
	FNCALL	_ISR,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_intrStall
	global	_period
	global	_periodStr
	global	_CCPR1
_CCPR1	set	0x15
	global	_TMR1
_TMR1	set	0xE
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_T1CON
_T1CON	set	0x10
	global	_CCP1IF
_CCP1IF	set	0x62
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_CCP1IE
_CCP1IE	set	0x462
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	109	;'m'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"GereRatificar_CPE3201.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_intrStall:
       ds      2

_period:
       ds      2

_periodStr:
       ds      20

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initLCD:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_printStr:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	3
??_sprintf:	; 0 bytes @ 0x3
	ds	3
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x8
	ds	4
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xE
	ds	1
??_ISR:	; 0 bytes @ 0xF
	ds	5
??_delay:	; 0 bytes @ 0x14
	global	delay@i
delay@i:	; 2 bytes @ 0x14
	ds	2
??_instCtrl:	; 0 bytes @ 0x16
??_dataCtrl:	; 0 bytes @ 0x16
	global	instCtrl@cmd
instCtrl@cmd:	; 1 bytes @ 0x16
	global	dataCtrl@dat
dataCtrl@dat:	; 1 bytes @ 0x16
	ds	1
??_initLCD:	; 0 bytes @ 0x17
??_printStr:	; 0 bytes @ 0x17
	ds	1
	global	printStr@stringIn
printStr@stringIn:	; 1 bytes @ 0x18
	ds	1
??_main:	; 0 bytes @ 0x19
	global	main@i
main@i:	; 2 bytes @ 0x19
	ds	2
;!
;!Data Sizes:
;!    Strings     16
;!    Constant    10
;!    Data        0
;!    BSS         24
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     27      51
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_1(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> periodStr(BANK0[20]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S101$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    printStr@stringIn	PTR const unsigned char  size(1) Largest target is 9
;!		 -> STR_3(CODE[4]), STR_2(CODE[9]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printStr
;!    _printStr->_dataCtrl
;!    _dataCtrl->_delay
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_sprintf
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 2     2      0     507
;!                                             25 BANK0      2     2      0
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;!                           _printStr
;! ---------------------------------------------------------------------------------
;! (1) _printStr                                             2     2      0     167
;!                                             23 BANK0      2     2      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0      68
;!                                             22 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0      68
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0      68
;!                                             22 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                2     2      0      46
;!                                             20 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  5     5      0    1480
;!                                             15 BANK0      5     5      0
;!                            ___lwdiv
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (5) _sprintf                                             15    12      3    1106
;!                                              0 BANK0     15    12      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (6) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___lwdiv                                              8     4      4     374
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay
;!   _delay
;!   _initLCD
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!   _printStr
;!     _dataCtrl
;!       _delay
;!
;! _ISR (ROOT)
;!   ___lwdiv
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
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
;!ABS                  0      0      41       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     1B      33       5       63.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      41      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 80 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   25[BANK0 ] int 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_initLCD
;;		_instCtrl
;;		_printStr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	80
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	80
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l923:	
;LE4-6.c: 82: TRISC = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	83
;LE4-6.c: 83: T1CON = 0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	84
	
l925:	
;LE4-6.c: 84: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	85
	
l927:	
;LE4-6.c: 85: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7	;volatile
	line	86
	
l929:	
;LE4-6.c: 86: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	87
	
l931:	
;LE4-6.c: 87: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	88
	
l933:	
;LE4-6.c: 88: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	line	92
;LE4-6.c: 92: CCP1CON = 0x04;
	movlw	(04h)
	movwf	(23)	;volatile
	line	95
	
l935:	
;LE4-6.c: 95: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	96
	
l937:	
;LE4-6.c: 96: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	97
	
l939:	
;LE4-6.c: 97: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	98
	
l941:	
;LE4-6.c: 98: initLCD();
	fcall	_initLCD
	line	99
	
l943:	
;LE4-6.c: 99: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	100
	
l945:	
;LE4-6.c: 100: printStr("PERIOD: ");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_printStr
	goto	l947
	line	103
;LE4-6.c: 101: for(;;)
	
l60:	
	line	104
	
l947:	
;LE4-6.c: 103: {
;LE4-6.c: 104: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	106
	
l949:	
;LE4-6.c: 106: for(int i = 0; i < 20; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l951:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u525
	movlw	low(014h)
	subwf	(main@i),w
u525:

	skipc
	goto	u521
	goto	u520
u521:
	goto	l955
u520:
	goto	l963
	
l953:	
	goto	l963
	line	107
	
l61:	
	line	108
	
l955:	
;LE4-6.c: 107: {
;LE4-6.c: 108: if (periodStr[i] != '\0')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	_periodStr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l959
u530:
	line	109
	
l957:	
;LE4-6.c: 109: dataCtrl(periodStr[i]);
	movf	(main@i),w
	addlw	_periodStr&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_dataCtrl
	goto	l959
	
l63:	
	line	106
	
l959:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l961:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u545
	movlw	low(014h)
	subwf	(main@i),w
u545:

	skipc
	goto	u541
	goto	u540
u541:
	goto	l955
u540:
	goto	l963
	
l62:	
	line	111
	
l963:	
;LE4-6.c: 110: }
;LE4-6.c: 111: printStr(" ms");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_printStr
	line	112
	
l965:	
;LE4-6.c: 112: delay();
	fcall	_delay
	line	113
;LE4-6.c: 113: }
	goto	l947
	
l64:	
	line	114
	
l65:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_printStr

;; *************** function _printStr *****************
;; Defined at:
;;		line 186 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  stringIn        1    wreg     PTR const unsigned char 
;;		 -> STR_3(4), STR_2(9), 
;; Auto vars:     Size  Location     Type
;;  stringIn        1   24[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(4), STR_2(9), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	186
global __ptext1
__ptext1:	;psect for function _printStr
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	186
	global	__size_of_printStr
	__size_of_printStr	equ	__end_of_printStr-_printStr
	
_printStr:	
;incstack = 0
	opt	stack 2
; Regs used in _printStr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printStr@stringIn stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printStr@stringIn)
	line	188
	
l897:	
;LE4-6.c: 188: while(*stringIn)
	goto	l903
	
l83:	
	line	190
	
l899:	
;LE4-6.c: 189: {
;LE4-6.c: 190: dataCtrl(*stringIn);
	movf	(printStr@stringIn),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	191
	
l901:	
;LE4-6.c: 191: stringIn++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printStr+0)+0
	movf	(??_printStr+0)+0,w
	addwf	(printStr@stringIn),f
	goto	l903
	line	192
	
l82:	
	line	188
	
l903:	
	movf	(printStr@stringIn),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u491
	goto	u490
u491:
	goto	l899
u490:
	goto	l85
	
l84:	
	line	193
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_printStr
	__end_of_printStr:
	signat	_printStr,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 168 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_printStr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	168
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	168
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 2
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@dat stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@dat)
	line	171
	
l787:	
;LE4-6.c: 171: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	172
;LE4-6.c: 172: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	173
	
l789:	
;LE4-6.c: 173: PORTD = dat;
	movf	(dataCtrl@dat),w
	movwf	(8)	;volatile
	line	174
	
l791:	
;LE4-6.c: 174: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	175
	
l793:	
;LE4-6.c: 175: delay();
	fcall	_delay
	line	176
	
l795:	
;LE4-6.c: 176: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	177
	
l79:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 135 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	135
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	135
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	137
	
l895:	
;LE4-6.c: 137: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	138
;LE4-6.c: 138: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	139
;LE4-6.c: 139: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	140
;LE4-6.c: 140: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	141
;LE4-6.c: 141: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	142
	
l73:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 151 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	151
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	151
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@cmd stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@cmd)
	line	153
	
l777:	
;LE4-6.c: 153: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	154
;LE4-6.c: 154: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	155
	
l779:	
;LE4-6.c: 155: PORTD = cmd;
	movf	(instCtrl@cmd),w
	movwf	(8)	;volatile
	line	156
	
l781:	
;LE4-6.c: 156: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	157
	
l783:	
;LE4-6.c: 157: delay();
	fcall	_delay
	line	158
	
l785:	
;LE4-6.c: 158: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	159
	
l76:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 122 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   20[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_instCtrl
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	122
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	122
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 2
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	125
	
l767:	
;LE4-6.c: 124: int i;
;LE4-6.c: 125: for(i=0;i<1000;i++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@i)
	clrf	(delay@i+1)
	
l769:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u285
	movlw	low(03E8h)
	subwf	(delay@i),w
u285:

	skipc
	goto	u281
	goto	u280
u281:
	goto	l773
u280:
	goto	l70
	
l771:	
	goto	l70
	
l68:	
	
l773:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l775:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u295
	movlw	low(03E8h)
	subwf	(delay@i),w
u295:

	skipc
	goto	u291
	goto	u290
u291:
	goto	l773
u290:
	goto	l70
	
l69:	
	line	126
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 53 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		_sprintf
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	53
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-6\LE4-6.c"
	line	53
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text6
	line	55
	
i1l905:	
;LE4-6.c: 55: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	56
;LE4-6.c: 56: if(CCP1IF==1)
	btfss	(98/8),(98)&7	;volatile
	goto	u50_21
	goto	u50_20
u50_21:
	goto	i1l919
u50_20:
	line	58
	
i1l907:	
;LE4-6.c: 57: {
;LE4-6.c: 58: CCP1IF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	59
	
i1l909:	
;LE4-6.c: 59: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	60
	
i1l911:	
;LE4-6.c: 60: period = (CCPR1/125) + 1;
	movlw	low(07Dh)
	movwf	(___lwdiv@divisor)
	movlw	high(07Dh)
	movwf	((___lwdiv@divisor))+1
	movf	(21+1),w	;volatile
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(21),w	;volatile
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_period)
	movf	(1+(?___lwdiv)),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_period)
	line	61
	
i1l913:	
;LE4-6.c: 61: if(intrStall == 10)
	movlw	0Ah
	xorwf	(_intrStall),w
	iorwf	(_intrStall+1),w
	skipz
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l919
u51_20:
	line	63
	
i1l915:	
;LE4-6.c: 62: {
;LE4-6.c: 63: sprintf(periodStr, "%u", period);
	movlw	((STR_1)-__stringbase)&0ffh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(sprintf@f)
	movf	(_period+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_period),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_periodStr)&0ffh
	fcall	_sprintf
	line	64
	
i1l917:	
;LE4-6.c: 64: intrStall = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_intrStall)
	clrf	(_intrStall+1)
	goto	i1l919
	line	65
	
i1l56:	
	goto	i1l919
	line	66
	
i1l55:	
	line	67
	
i1l919:	
;LE4-6.c: 65: }
;LE4-6.c: 66: }
;LE4-6.c: 67: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	68
	
i1l921:	
;LE4-6.c: 68: intrStall += 1;
	movlw	low(01h)
	addwf	(_intrStall),f
	skipnc
	incf	(_intrStall+1),f
	movlw	high(01h)
	addwf	(_intrStall+1),f
	line	69
	
i1l57:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> periodStr(20), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   13[BANK0 ] PTR unsigned char 
;;		 -> periodStr(20), 
;;  _val            4    8[BANK0 ] struct .
;;  c               1   14[BANK0 ] char 
;;  prec            1   12[BANK0 ] char 
;;  ap              1    7[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  flag            1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext7
__ptext7:	;psect for function _sprintf
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 2
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
i1l845:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	i1l889
	
i1l95:	
	line	547
	
i1l847:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l853
u43_20:
	line	550
	
i1l849:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l851:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	i1l889
	line	552
	
i1l96:	
	line	557
	
i1l853:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	i1l859
	line	646
;doprnt.c: 646: case 0:
	
i1l98:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	i1l891
	line	811
;doprnt.c: 811: default:
	
i1l100:	
	line	822
;doprnt.c: 822: continue;
	goto	i1l889
	line	826
;doprnt.c: 826: case 'u':
	
i1l101:	
	line	827
	
i1l855:	
;doprnt.c: 827: flag |= 0xC0;
	movlw	(0C0h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	828
;doprnt.c: 828: break;
	goto	i1l861
	line	831
	
i1l857:	
;doprnt.c: 831: }
	goto	i1l861
	line	644
	
i1l97:	
	
i1l859:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l891
	xorlw	117^0	; case 117
	skipnz
	goto	i1l855
	goto	i1l889
	opt asmopt_on

	line	831
	
i1l102:	
	line	1295
	
i1l861:	
;doprnt.c: 1282: {
;doprnt.c: 1295: _val._val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
i1l863:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1314
	
i1l865:	
;doprnt.c: 1296: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	
i1l867:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l871
u44_20:
	goto	i1l879
	
i1l869:	
	goto	i1l879
	line	1315
	
i1l103:	
	
i1l871:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u45_25
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u45_25:
	skipnc
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l875
u45_20:
	goto	i1l879
	line	1316
	
i1l873:	
;doprnt.c: 1316: break;
	goto	i1l879
	
i1l105:	
	line	1314
	
i1l875:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
i1l877:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l871
u46_20:
	goto	i1l879
	
i1l104:	
	line	1481
	
i1l879:	
;doprnt.c: 1431: {
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	i1l887
	
i1l107:	
	line	1498
	
i1l881:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
i1l883:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l885:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	i1l887
	line	1534
	
i1l106:	
	line	1483
	
i1l887:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u47_21
	goto	u47_20
u47_21:
	goto	i1l881
u47_20:
	goto	i1l889
	
i1l108:	
	goto	i1l889
	line	1542
	
i1l94:	
	line	545
	
i1l889:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l847
u48_20:
	goto	i1l891
	
i1l109:	
	goto	i1l891
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
i1l99:	
	line	1547
	
i1l891:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	i1l110
	line	1549
	
i1l893:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
i1l110:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwmod
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
i1l823:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l841
u37_20:
	line	14
	
i1l825:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	i1l831
	
i1l535:	
	line	16
	
i1l827:	
	movlw	01h
	
u38_25:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u38_25
	line	17
	
i1l829:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	i1l831
	line	18
	
i1l534:	
	line	15
	
i1l831:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l827
u39_20:
	goto	i1l833
	
i1l536:	
	goto	i1l833
	line	19
	
i1l537:	
	line	20
	
i1l833:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u40_25
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u40_25:
	skipc
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l837
u40_20:
	line	21
	
i1l835:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	i1l837
	
i1l538:	
	line	22
	
i1l837:	
	movlw	01h
	
u41_25:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u41_25
	line	23
	
i1l839:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l833
u42_20:
	goto	i1l841
	
i1l539:	
	goto	i1l841
	line	24
	
i1l533:	
	line	25
	
i1l841:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	i1l540
	
i1l843:	
	line	26
	
i1l540:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext9
__ptext9:	;psect for function ___lwdiv
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l797:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
i1l799:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l819
u30_20:
	line	16
	
i1l801:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	i1l807
	
i1l525:	
	line	18
	
i1l803:	
	movlw	01h
	
u31_25:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u31_25
	line	19
	
i1l805:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	i1l807
	line	20
	
i1l524:	
	line	17
	
i1l807:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l803
u32_20:
	goto	i1l809
	
i1l526:	
	goto	i1l809
	line	21
	
i1l527:	
	line	22
	
i1l809:	
	movlw	01h
	
u33_25:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u33_25
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u34_25
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u34_25:
	skipc
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l815
u34_20:
	line	24
	
i1l811:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
i1l813:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l815
	line	26
	
i1l528:	
	line	27
	
i1l815:	
	movlw	01h
	
u35_25:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u35_25
	line	28
	
i1l817:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l809
u36_20:
	goto	i1l819
	
i1l529:	
	goto	i1l819
	line	29
	
i1l523:	
	line	30
	
i1l819:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	i1l530
	
i1l821:	
	line	31
	
i1l530:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
