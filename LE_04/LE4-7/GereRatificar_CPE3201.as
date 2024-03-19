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
	FNCALL	_main,___bmul
	FNCALL	_main,_delay
	FNCALL	_main,_displayMode
	FNCALL	_main,_incDutyCycle
	FNCALL	_main,_incFrequency
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_timerMaxCount
	global	_PR2Values
	global	_flag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	44

;initializer for _timerMaxCount
	retlw	053h
	retlw	0

	retlw	0D0h
	retlw	0

	retlw	0A1h
	retlw	01h

	retlw	071h
	retlw	02h

	retlw	018h
	retlw	03h

	retlw	032h
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	0FAh
	retlw	0

	retlw	077h
	retlw	01h

	retlw	0DBh
	retlw	01h

	retlw	019h
	retlw	0

	retlw	03Fh
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	0BCh
	retlw	0

	retlw	0EEh
	retlw	0

	line	35

;initializer for _PR2Values
	retlw	0CFh
	retlw	0

	retlw	07Ch
	retlw	0

	retlw	03Eh
	retlw	0

	line	30

;initializer for _flag
	retlw	01h
	retlw	0

	global	_count_flag
	global	_dutyCycleIndex
	global	_frequencyIndex
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTB
_PORTB	set	0x6
	global	_T2CON
_T2CON	set	0x12
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_PEIE
_PEIE	set	0x5E
	global	_RC2
_RC2	set	0x3A
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
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
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count_flag:
       ds      2

_dutyCycleIndex:
       ds      2

_frequencyIndex:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	44
_timerMaxCount:
       ds      30

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	35
_PR2Values:
       ds      6

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	30
_flag:
       ds      2

	file	"GereRatificar_CPE3201.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
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
	movlw low(__pdataBANK0+38)
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
?_displayMode:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_incDutyCycle:	; 0 bytes @ 0x0
?_incFrequency:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
??_displayMode:	; 0 bytes @ 0x4
??_delay:	; 0 bytes @ 0x4
??_incDutyCycle:	; 0 bytes @ 0x4
??_incFrequency:	; 0 bytes @ 0x4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?___bmul:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	displayMode@temp
displayMode@temp:	; 2 bytes @ 0x0
	global	delay@localClock
delay@localClock:	; 2 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	displayMode@temp2
displayMode@temp2:	; 2 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
??_main:	; 0 bytes @ 0x4
	ds	5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        38
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4      10
;!    BANK0            80      9      47
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
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___bmul
;!    _main->_displayMode
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0     475
;!                                              4 BANK0      5     5      0
;!                             ___bmul
;!                              _delay
;!                        _displayMode
;!                       _incDutyCycle
;!                       _incFrequency
;! ---------------------------------------------------------------------------------
;! (1) _incFrequency                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _incDutyCycle                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _displayMode                                          4     4      0      92
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                2     2      0      37
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               4     3      1     346
;!                                              0 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___bmul
;!   _delay
;!   _displayMode
;!   _incDutyCycle
;!   _incFrequency
;!
;! _ISR (ROOT)
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
;!BANK0               50      9      2F       5       58.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      4       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      39      12        0.0%
;!ABS                  0      0      39       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 71 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		_delay
;;		_displayMode
;;		_incDutyCycle
;;		_incFrequency
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	71
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l968:	
;LE4-7.c: 74: PR2 = PR2Values[frequencyIndex];
	movf	(_frequencyIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_PR2Values&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	75
	
l970:	
;LE4-7.c: 75: CCPR1L = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
	movf	(_dutyCycleIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	01h
u385:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u385
	movlw	(0Ah)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_frequencyIndex),w
	fcall	___bmul
	addlw	_timerMaxCount&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+3)+0+1
	clrc
	rrf	(??_main+3)+1,f
	rrf	(??_main+3)+0,f
	clrc
	rrf	(??_main+3)+1,f
	rrf	(??_main+3)+0,f
	movf	0+(??_main+3)+0,w
	movwf	(21)	;volatile
	line	76
	
l972:	
;LE4-7.c: 76: CCP1CON = ((timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003) << 4) + 0x0C;
	movf	(_dutyCycleIndex),w
	movwf	(??_main+0)+0
	movlw	01h
u395:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u395
	movlw	(0Ah)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_frequencyIndex),w
	fcall	___bmul
	addlw	_timerMaxCount&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	03h
	movwf	(??_main+3)+0
	movlw	(04h)-1
u405:
	clrc
	rlf	(??_main+3)+0,f
	addlw	-1
	skipz
	goto	u405
	clrc
	rlf	(??_main+3)+0,w
	addlw	0Ch
	movwf	(23)	;volatile
	line	77
	
l974:	
;LE4-7.c: 77: T2CON = 0x06;
	movlw	(06h)
	movwf	(18)	;volatile
	line	80
	
l976:	
;LE4-7.c: 80: OPTION_REG = 0x44;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	82
	
l978:	
;LE4-7.c: 82: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	83
	
l980:	
;LE4-7.c: 83: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	84
	
l982:	
;LE4-7.c: 84: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	85
	
l984:	
;LE4-7.c: 85: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	86
	
l986:	
;LE4-7.c: 86: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	89
	
l988:	
;LE4-7.c: 89: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	90
	
l990:	
;LE4-7.c: 90: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	91
	
l992:	
;LE4-7.c: 91: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	92
	
l994:	
;LE4-7.c: 92: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	95
	
l996:	
;LE4-7.c: 95: displayMode();
	fcall	_displayMode
	goto	l998
	line	98
;LE4-7.c: 97: for(;;)
	
l61:	
	line	100
	
l998:	
;LE4-7.c: 98: {
;LE4-7.c: 100: if(RD0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7	;volatile
	goto	u411
	goto	u410
u411:
	goto	l1012
u410:
	line	102
	
l1000:	
;LE4-7.c: 101: {
;LE4-7.c: 102: delay();
	fcall	_delay
	line	103
	
l1002:	
;LE4-7.c: 103: incDutyCycle();
	fcall	_incDutyCycle
	line	104
	
l1004:	
;LE4-7.c: 104: PR2 = PR2Values[frequencyIndex];
	movf	(_frequencyIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_PR2Values&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	105
	
l1006:	
;LE4-7.c: 105: CCPR1L = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
	movf	(_dutyCycleIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	01h
u425:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u425
	movlw	(0Ah)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_frequencyIndex),w
	fcall	___bmul
	addlw	_timerMaxCount&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+3)+0+1
	clrc
	rrf	(??_main+3)+1,f
	rrf	(??_main+3)+0,f
	clrc
	rrf	(??_main+3)+1,f
	rrf	(??_main+3)+0,f
	movf	0+(??_main+3)+0,w
	movwf	(21)	;volatile
	line	106
	
l1008:	
;LE4-7.c: 106: CCP1CON = ((timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003) << 4) + 0x0C;
	movf	(_dutyCycleIndex),w
	movwf	(??_main+0)+0
	movlw	01h
u435:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u435
	movlw	(0Ah)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_frequencyIndex),w
	fcall	___bmul
	addlw	_timerMaxCount&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	03h
	movwf	(??_main+3)+0
	movlw	(04h)-1
u445:
	clrc
	rlf	(??_main+3)+0,f
	addlw	-1
	skipz
	goto	u445
	clrc
	rlf	(??_main+3)+0,w
	addlw	0Ch
	movwf	(23)	;volatile
	line	107
	
l1010:	
;LE4-7.c: 107: displayMode();
	fcall	_displayMode
	goto	l1012
	line	108
	
l62:	
	line	109
	
l1012:	
;LE4-7.c: 108: }
;LE4-7.c: 109: if(RD1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7	;volatile
	goto	u451
	goto	u450
u451:
	goto	l998
u450:
	line	111
	
l1014:	
;LE4-7.c: 110: {
;LE4-7.c: 111: delay();
	fcall	_delay
	line	112
	
l1016:	
;LE4-7.c: 112: incFrequency();
	fcall	_incFrequency
	line	113
	
l1018:	
;LE4-7.c: 113: PR2 = PR2Values[frequencyIndex];
	movf	(_frequencyIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_PR2Values&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	114
	
l1020:	
;LE4-7.c: 114: CCPR1L = timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003;
	movf	(_dutyCycleIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	01h
u465:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u465
	movlw	(0Ah)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_frequencyIndex),w
	fcall	___bmul
	addlw	_timerMaxCount&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	03h
	movwf	(21)	;volatile
	line	115
	
l1022:	
;LE4-7.c: 115: CCP1CON = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
	movf	(_dutyCycleIndex),w
	movwf	(??_main+0)+0
	movlw	01h
u475:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u475
	movlw	(0Ah)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_frequencyIndex),w
	fcall	___bmul
	addlw	_timerMaxCount&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+3)+0+1
	clrc
	rrf	(??_main+3)+1,f
	rrf	(??_main+3)+0,f
	clrc
	rrf	(??_main+3)+1,f
	rrf	(??_main+3)+0,f
	movf	0+(??_main+3)+0,w
	movwf	(23)	;volatile
	line	116
	
l1024:	
;LE4-7.c: 116: displayMode();
	fcall	_displayMode
	goto	l998
	line	117
	
l63:	
	line	118
;LE4-7.c: 117: }
;LE4-7.c: 118: }
	goto	l998
	
l64:	
	line	119
	
l65:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_incFrequency

;; *************** function _incFrequency *****************
;; Defined at:
;;		line 191 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	191
global __ptext1
__ptext1:	;psect for function _incFrequency
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	191
	global	__size_of_incFrequency
	__size_of_incFrequency	equ	__end_of_incFrequency-_incFrequency
	
_incFrequency:	
;incstack = 0
	opt	stack 6
; Regs used in _incFrequency: [wreg+status,2]
	line	193
	
l786:	
;LE4-7.c: 193: if(frequencyIndex < 2)
	movlw	high(02h)
	subwf	(_frequencyIndex+1),w
	movlw	low(02h)
	skipnz
	subwf	(_frequencyIndex),w
	skipnc
	goto	u211
	goto	u210
u211:
	goto	l790
u210:
	line	194
	
l788:	
;LE4-7.c: 194: frequencyIndex++;
	movlw	low(01h)
	addwf	(_frequencyIndex),f
	skipnc
	incf	(_frequencyIndex+1),f
	movlw	high(01h)
	addwf	(_frequencyIndex+1),f
	goto	l97
	line	195
	
l95:	
	line	196
	
l790:	
;LE4-7.c: 195: else
;LE4-7.c: 196: frequencyIndex = 0;
	clrf	(_frequencyIndex)
	clrf	(_frequencyIndex+1)
	goto	l97
	
l96:	
	line	197
	
l97:	
	return
	opt stack 0
GLOBAL	__end_of_incFrequency
	__end_of_incFrequency:
	signat	_incFrequency,88
	global	_incDutyCycle

;; *************** function _incDutyCycle *****************
;; Defined at:
;;		line 183 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	183
global __ptext2
__ptext2:	;psect for function _incDutyCycle
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	183
	global	__size_of_incDutyCycle
	__size_of_incDutyCycle	equ	__end_of_incDutyCycle-_incDutyCycle
	
_incDutyCycle:	
;incstack = 0
	opt	stack 6
; Regs used in _incDutyCycle: [wreg+status,2]
	line	185
	
l780:	
;LE4-7.c: 185: if(dutyCycleIndex < 4)
	movlw	high(04h)
	subwf	(_dutyCycleIndex+1),w
	movlw	low(04h)
	skipnz
	subwf	(_dutyCycleIndex),w
	skipnc
	goto	u201
	goto	u200
u201:
	goto	l784
u200:
	line	186
	
l782:	
;LE4-7.c: 186: dutyCycleIndex++;
	movlw	low(01h)
	addwf	(_dutyCycleIndex),f
	skipnc
	incf	(_dutyCycleIndex+1),f
	movlw	high(01h)
	addwf	(_dutyCycleIndex+1),f
	goto	l92
	line	187
	
l90:	
	line	188
	
l784:	
;LE4-7.c: 187: else
;LE4-7.c: 188: dutyCycleIndex = 0;
	clrf	(_dutyCycleIndex)
	clrf	(_dutyCycleIndex+1)
	goto	l92
	
l91:	
	line	189
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_incDutyCycle
	__end_of_incDutyCycle:
	signat	_incDutyCycle,88
	global	_displayMode

;; *************** function _displayMode *****************
;; Defined at:
;;		line 121 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp2           2    2[BANK0 ] unsigned int 
;;  temp            2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	121
global __ptext3
__ptext3:	;psect for function _displayMode
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	121
	global	__size_of_displayMode
	__size_of_displayMode	equ	__end_of_displayMode-_displayMode
	
_displayMode:	
;incstack = 0
	opt	stack 6
; Regs used in _displayMode: [wreg-fsr0h+status,2+status,0]
	line	130
	
l906:	
;LE4-7.c: 130: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	131
;LE4-7.c: 131: unsigned int temp = 0x00;
	clrf	(displayMode@temp)
	clrf	(displayMode@temp+1)
	line	132
;LE4-7.c: 132: unsigned int temp2 = 0x00;
	clrf	(displayMode@temp2)
	clrf	(displayMode@temp2+1)
	line	133
;LE4-7.c: 133: switch(frequencyIndex)
	goto	l916
	line	135
;LE4-7.c: 134: {
;LE4-7.c: 135: case 0:
	
l69:	
	line	136
	
l908:	
;LE4-7.c: 136: temp = 0x01;
	movlw	low(01h)
	movwf	(displayMode@temp)
	movlw	high(01h)
	movwf	((displayMode@temp))+1
	line	137
;LE4-7.c: 137: break;
	goto	l930
	line	138
;LE4-7.c: 138: case 1:
	
l71:	
	line	139
	
l910:	
;LE4-7.c: 139: temp = 0x02;
	movlw	low(02h)
	movwf	(displayMode@temp)
	movlw	high(02h)
	movwf	((displayMode@temp))+1
	line	140
;LE4-7.c: 140: break;
	goto	l930
	line	141
;LE4-7.c: 141: case 2:
	
l72:	
	line	142
	
l912:	
;LE4-7.c: 142: temp = 0x03;
	movlw	low(03h)
	movwf	(displayMode@temp)
	movlw	high(03h)
	movwf	((displayMode@temp))+1
	line	143
;LE4-7.c: 143: break;
	goto	l930
	line	144
	
l914:	
;LE4-7.c: 144: }
	goto	l930
	line	133
	
l68:	
	
l916:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_frequencyIndex+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1066
	goto	l930
	opt asmopt_on
	
l1066:	
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_frequencyIndex),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l908
	xorlw	1^0	; case 1
	skipnz
	goto	l910
	xorlw	2^1	; case 2
	skipnz
	goto	l912
	goto	l930
	opt asmopt_on

	line	144
	
l70:	
	line	145
;LE4-7.c: 145: switch(dutyCycleIndex)
	goto	l930
	line	147
;LE4-7.c: 146: {
;LE4-7.c: 147: case 0:
	
l74:	
	line	148
	
l918:	
;LE4-7.c: 148: temp2 = 0x01 << 2;
	movlw	low(04h)
	movwf	(displayMode@temp2)
	movlw	high(04h)
	movwf	((displayMode@temp2))+1
	line	149
;LE4-7.c: 149: break;
	goto	l932
	line	150
;LE4-7.c: 150: case 1:
	
l76:	
	line	151
	
l920:	
;LE4-7.c: 151: temp2 = 0x02 << 2;
	movlw	low(08h)
	movwf	(displayMode@temp2)
	movlw	high(08h)
	movwf	((displayMode@temp2))+1
	line	152
;LE4-7.c: 152: break;
	goto	l932
	line	153
;LE4-7.c: 153: case 2:
	
l77:	
	line	154
	
l922:	
;LE4-7.c: 154: temp2 = 0x03 << 2;
	movlw	low(0Ch)
	movwf	(displayMode@temp2)
	movlw	high(0Ch)
	movwf	((displayMode@temp2))+1
	line	155
;LE4-7.c: 155: break;
	goto	l932
	line	156
;LE4-7.c: 156: case 3:
	
l78:	
	line	157
	
l924:	
;LE4-7.c: 157: temp2 = 0x04 << 2;
	movlw	low(010h)
	movwf	(displayMode@temp2)
	movlw	high(010h)
	movwf	((displayMode@temp2))+1
	line	158
;LE4-7.c: 158: break;
	goto	l932
	line	159
;LE4-7.c: 159: case 4:
	
l79:	
	line	160
	
l926:	
;LE4-7.c: 160: temp2 = 0x05 << 2;
	movlw	low(014h)
	movwf	(displayMode@temp2)
	movlw	high(014h)
	movwf	((displayMode@temp2))+1
	line	161
;LE4-7.c: 161: break;
	goto	l932
	line	162
	
l928:	
;LE4-7.c: 162: }
	goto	l932
	line	145
	
l73:	
	
l930:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_dutyCycleIndex+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1068
	goto	l932
	opt asmopt_on
	
l1068:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_dutyCycleIndex),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l918
	xorlw	1^0	; case 1
	skipnz
	goto	l920
	xorlw	2^1	; case 2
	skipnz
	goto	l922
	xorlw	3^2	; case 3
	skipnz
	goto	l924
	xorlw	4^3	; case 4
	skipnz
	goto	l926
	goto	l932
	opt asmopt_on

	line	162
	
l75:	
	line	163
	
l932:	
;LE4-7.c: 163: PORTB = temp + temp2;
	movf	(displayMode@temp2),w
	addwf	(displayMode@temp),w
	movwf	(6)	;volatile
	line	164
	
l80:	
	return
	opt stack 0
GLOBAL	__end_of_displayMode
	__end_of_displayMode:
	signat	_displayMode,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 166 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  localClock      2    0[BANK0 ] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	166
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	166
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	171
	
l942:	
;LE4-7.c: 171: int localClock = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@localClock)
	clrf	(delay@localClock+1)
	line	172
;LE4-7.c: 172: while(localClock < 98)
	goto	l950
	
l84:	
	line	174
	
l944:	
;LE4-7.c: 173: {
;LE4-7.c: 174: if(count_flag == 1)
	movlw	01h
	xorwf	(_count_flag),w
	iorwf	(_count_flag+1),w
	skipz
	goto	u341
	goto	u340
u341:
	goto	l950
u340:
	line	176
	
l946:	
;LE4-7.c: 175: {
;LE4-7.c: 176: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	177
	
l948:	
;LE4-7.c: 177: localClock++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@localClock),f
	skipnc
	incf	(delay@localClock+1),f
	movlw	high(01h)
	addwf	(delay@localClock+1),f
	goto	l950
	line	178
	
l85:	
	goto	l950
	line	179
	
l83:	
	line	172
	
l950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@localClock+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(062h))^80h
	subwf	btemp+1,w
	skipz
	goto	u355
	movlw	low(062h)
	subwf	(delay@localClock),w
u355:

	skipc
	goto	u351
	goto	u350
u351:
	goto	l944
u350:
	goto	l87
	
l86:	
	line	180
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,88
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[BANK0 ] unsigned char 
;;  product         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___bmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l952:	
	clrf	(___bmul@product)
	goto	l954
	line	42
	
l198:	
	line	43
	
l954:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u361
	goto	u360
u361:
	goto	l958
u360:
	line	44
	
l956:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l958
	
l199:	
	line	45
	
l958:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l960:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l962:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u371
	goto	u370
u371:
	goto	l954
u370:
	goto	l964
	
l200:	
	line	50
	
l964:	
	movf	(___bmul@product),w
	goto	l201
	
l966:	
	line	51
	
l201:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 59 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	59
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	59
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text6
	line	61
	
i1l628:	
;LE4-7.c: 61: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	62
;LE4-7.c: 62: if(TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l634
u7_20:
	line	64
	
i1l630:	
;LE4-7.c: 63: {
;LE4-7.c: 64: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	65
	
i1l632:	
;LE4-7.c: 65: count_flag = 1;
	movlw	low(01h)
	movwf	(_count_flag)
	movlw	high(01h)
	movwf	((_count_flag))+1
	goto	i1l634
	line	66
	
i1l57:	
	line	67
	
i1l634:	
;LE4-7.c: 66: }
;LE4-7.c: 67: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	68
	
i1l58:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
