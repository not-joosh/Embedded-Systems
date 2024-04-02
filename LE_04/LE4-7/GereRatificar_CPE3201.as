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
	line	59

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

	line	45

;initializer for _PR2Values
	retlw	0CFh
	retlw	0

	retlw	07Ch
	retlw	0

	retlw	03Eh
	retlw	0

	line	39

;initializer for _flag
	retlw	01h
	retlw	0

	global	_dutyCycleIndex
	global	_frequencyIndex
	global	_count_flag
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
	global	_RC2
_RC2	set	0x3A
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
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
_dutyCycleIndex:
       ds      2

_frequencyIndex:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count_flag:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	59
_timerMaxCount:
       ds      30

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	45
_PR2Values:
       ds      6

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	39
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	delay@localClock
delay@localClock:	; 2 bytes @ 0x4
	ds	1
??___bmul:	; 0 bytes @ 0x5
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x0
	global	displayMode@displayBits
displayMode@displayBits:	; 2 bytes @ 0x0
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x1
	ds	1
	global	displayMode@temp
displayMode@temp:	; 2 bytes @ 0x2
	ds	2
	global	displayMode@temp2
displayMode@temp2:	; 2 bytes @ 0x4
	ds	2
??_main:	; 0 bytes @ 0x6
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
;!    COMMON           14      6      10
;!    BANK0            80     11      51
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
;!    _main->___bmul
;!    _main->_delay
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
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
;! (0) _main                                                 5     5      0     465
;!                                              6 BANK0      5     5      0
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
;! (1) _displayMode                                          6     6      0      95
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                2     2      0      24
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               4     3      1     346
;!                                              4 COMMON     2     1      1
;!                                              0 BANK0      2     2      0
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
;!BANK0               50      B      33       5       63.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3D      12        0.0%
;!ABS                  0      0      3D       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 101 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
	line	101
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	101
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	111
	
l956:	
;LE4-7.c: 111: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	112
	
l958:	
;LE4-7.c: 112: OPTION_REG = 0x43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	113
	
l960:	
;LE4-7.c: 113: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	114
	
l962:	
;LE4-7.c: 114: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	116
;LE4-7.c: 116: TRISD = 0x03;
	movlw	(03h)
	movwf	(136)^080h	;volatile
	line	117
	
l964:	
;LE4-7.c: 117: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	118
	
l966:	
;LE4-7.c: 118: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	119
	
l968:	
;LE4-7.c: 119: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	120
	
l970:	
;LE4-7.c: 120: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	122
	
l972:	
;LE4-7.c: 122: PR2 = PR2Values[frequencyIndex];
	movf	(_frequencyIndex),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_PR2Values&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	124
	
l974:	
;LE4-7.c: 124: CCPR1L = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
	movf	(_dutyCycleIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	01h
u375:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u375
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
	line	127
	
l976:	
;LE4-7.c: 127: CCP1CON = ((timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003) << 4) + 0x0C;
	movf	(_dutyCycleIndex),w
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
	andlw	03h
	movwf	(??_main+3)+0
	movlw	(04h)-1
u395:
	clrc
	rlf	(??_main+3)+0,f
	addlw	-1
	skipz
	goto	u395
	clrc
	rlf	(??_main+3)+0,w
	addlw	0Ch
	movwf	(23)	;volatile
	line	128
	
l978:	
;LE4-7.c: 128: T2CON = 0x06;
	movlw	(06h)
	movwf	(18)	;volatile
	line	144
	
l980:	
;LE4-7.c: 144: displayMode();
	fcall	_displayMode
	goto	l982
	line	149
;LE4-7.c: 148: for(;;)
	
l59:	
	line	151
	
l982:	
;LE4-7.c: 149: {
;LE4-7.c: 151: if(RD0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7	;volatile
	goto	u401
	goto	u400
u401:
	goto	l996
u400:
	line	153
	
l984:	
;LE4-7.c: 152: {
;LE4-7.c: 153: delay();
	fcall	_delay
	line	154
	
l986:	
;LE4-7.c: 154: incDutyCycle();
	fcall	_incDutyCycle
	line	155
	
l988:	
;LE4-7.c: 155: PR2 = PR2Values[frequencyIndex];
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
	line	156
	
l990:	
;LE4-7.c: 156: CCPR1L = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
	movf	(_dutyCycleIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	01h
u415:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u415
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
	line	157
	
l992:	
;LE4-7.c: 157: CCP1CON = ((timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003) << 4) + 0x0C;
	movf	(_dutyCycleIndex),w
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
	andlw	03h
	movwf	(??_main+3)+0
	movlw	(04h)-1
u435:
	clrc
	rlf	(??_main+3)+0,f
	addlw	-1
	skipz
	goto	u435
	clrc
	rlf	(??_main+3)+0,w
	addlw	0Ch
	movwf	(23)	;volatile
	line	158
	
l994:	
;LE4-7.c: 158: displayMode();
	fcall	_displayMode
	goto	l996
	line	159
	
l60:	
	line	160
	
l996:	
;LE4-7.c: 159: }
;LE4-7.c: 160: if(RD1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7	;volatile
	goto	u441
	goto	u440
u441:
	goto	l982
u440:
	line	162
	
l998:	
;LE4-7.c: 161: {
;LE4-7.c: 162: delay();
	fcall	_delay
	line	163
	
l1000:	
;LE4-7.c: 163: incFrequency();
	fcall	_incFrequency
	line	164
	
l1002:	
;LE4-7.c: 164: PR2 = PR2Values[frequencyIndex];
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
	line	165
	
l1004:	
;LE4-7.c: 165: CCPR1L = timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003;
	movf	(_dutyCycleIndex),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	01h
u455:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u455
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
	line	166
	
l1006:	
;LE4-7.c: 166: CCP1CON = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
	movf	(_dutyCycleIndex),w
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
	line	167
	
l1008:	
;LE4-7.c: 167: displayMode();
	fcall	_displayMode
	goto	l982
	line	168
	
l61:	
	line	169
;LE4-7.c: 168: }
;LE4-7.c: 169: }
	goto	l982
	
l62:	
	line	170
	
l63:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_incFrequency

;; *************** function _incFrequency *****************
;; Defined at:
;;		line 266 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
	line	266
global __ptext1
__ptext1:	;psect for function _incFrequency
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	266
	global	__size_of_incFrequency
	__size_of_incFrequency	equ	__end_of_incFrequency-_incFrequency
	
_incFrequency:	
;incstack = 0
	opt	stack 6
; Regs used in _incFrequency: [wreg+status,2]
	line	268
	
l780:	
;LE4-7.c: 268: if(frequencyIndex < 2)
	movlw	high(02h)
	subwf	(_frequencyIndex+1),w
	movlw	low(02h)
	skipnz
	subwf	(_frequencyIndex),w
	skipnc
	goto	u211
	goto	u210
u211:
	goto	l784
u210:
	line	269
	
l782:	
;LE4-7.c: 269: frequencyIndex++;
	movlw	low(01h)
	addwf	(_frequencyIndex),f
	skipnc
	incf	(_frequencyIndex+1),f
	movlw	high(01h)
	addwf	(_frequencyIndex+1),f
	goto	l95
	line	270
	
l93:	
	line	271
	
l784:	
;LE4-7.c: 270: else
;LE4-7.c: 271: frequencyIndex = 0;
	clrf	(_frequencyIndex)
	clrf	(_frequencyIndex+1)
	goto	l95
	
l94:	
	line	272
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_incFrequency
	__end_of_incFrequency:
	signat	_incFrequency,88
	global	_incDutyCycle

;; *************** function _incDutyCycle *****************
;; Defined at:
;;		line 252 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
	line	252
global __ptext2
__ptext2:	;psect for function _incDutyCycle
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	252
	global	__size_of_incDutyCycle
	__size_of_incDutyCycle	equ	__end_of_incDutyCycle-_incDutyCycle
	
_incDutyCycle:	
;incstack = 0
	opt	stack 6
; Regs used in _incDutyCycle: [wreg+status,2]
	line	254
	
l774:	
;LE4-7.c: 254: if(dutyCycleIndex < 4)
	movlw	high(04h)
	subwf	(_dutyCycleIndex+1),w
	movlw	low(04h)
	skipnz
	subwf	(_dutyCycleIndex),w
	skipnc
	goto	u201
	goto	u200
u201:
	goto	l778
u200:
	line	255
	
l776:	
;LE4-7.c: 255: dutyCycleIndex++;
	movlw	low(01h)
	addwf	(_dutyCycleIndex),f
	skipnc
	incf	(_dutyCycleIndex+1),f
	movlw	high(01h)
	addwf	(_dutyCycleIndex+1),f
	goto	l90
	line	256
	
l88:	
	line	257
	
l778:	
;LE4-7.c: 256: else
;LE4-7.c: 257: dutyCycleIndex = 0;
	clrf	(_dutyCycleIndex)
	clrf	(_dutyCycleIndex+1)
	goto	l90
	
l89:	
	line	258
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_incDutyCycle
	__end_of_incDutyCycle:
	signat	_incDutyCycle,88
	global	_displayMode

;; *************** function _displayMode *****************
;; Defined at:
;;		line 181 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp2           2    4[BANK0 ] unsigned int 
;;  temp            2    2[BANK0 ] unsigned int 
;;  displayBits     2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	181
global __ptext3
__ptext3:	;psect for function _displayMode
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	181
	global	__size_of_displayMode
	__size_of_displayMode	equ	__end_of_displayMode-_displayMode
	
_displayMode:	
;incstack = 0
	opt	stack 6
; Regs used in _displayMode: [wreg-fsr0h+status,2+status,0]
	line	183
	
l904:	
;LE4-7.c: 183: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	184
;LE4-7.c: 184: unsigned int temp = 0x00;
	clrf	(displayMode@temp)
	clrf	(displayMode@temp+1)
	line	185
;LE4-7.c: 185: unsigned int temp2 = 0x00;
	clrf	(displayMode@temp2)
	clrf	(displayMode@temp2+1)
	line	186
;LE4-7.c: 186: unsigned int displayBits = 0x00;
	clrf	(displayMode@displayBits)
	clrf	(displayMode@displayBits+1)
	line	187
;LE4-7.c: 187: switch(frequencyIndex)
	goto	l914
	line	189
;LE4-7.c: 188: {
;LE4-7.c: 189: case 0:
	
l67:	
	line	190
	
l906:	
;LE4-7.c: 190: temp = 0x01;
	movlw	low(01h)
	movwf	(displayMode@temp)
	movlw	high(01h)
	movwf	((displayMode@temp))+1
	line	191
;LE4-7.c: 191: break;
	goto	l928
	line	192
;LE4-7.c: 192: case 1:
	
l69:	
	line	193
	
l908:	
;LE4-7.c: 193: temp = 0x02;
	movlw	low(02h)
	movwf	(displayMode@temp)
	movlw	high(02h)
	movwf	((displayMode@temp))+1
	line	194
;LE4-7.c: 194: break;
	goto	l928
	line	195
;LE4-7.c: 195: case 2:
	
l70:	
	line	196
	
l910:	
;LE4-7.c: 196: temp = 0x03;
	movlw	low(03h)
	movwf	(displayMode@temp)
	movlw	high(03h)
	movwf	((displayMode@temp))+1
	line	197
;LE4-7.c: 197: break;
	goto	l928
	line	198
	
l912:	
;LE4-7.c: 198: }
	goto	l928
	line	187
	
l66:	
	
l914:	
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
	goto	l1050
	goto	l928
	opt asmopt_on
	
l1050:	
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
	goto	l906
	xorlw	1^0	; case 1
	skipnz
	goto	l908
	xorlw	2^1	; case 2
	skipnz
	goto	l910
	goto	l928
	opt asmopt_on

	line	198
	
l68:	
	line	199
;LE4-7.c: 199: switch(dutyCycleIndex)
	goto	l928
	line	201
;LE4-7.c: 200: {
;LE4-7.c: 201: case 0:
	
l72:	
	line	202
	
l916:	
;LE4-7.c: 202: temp2 = 0x01 << 2;
	movlw	low(04h)
	movwf	(displayMode@temp2)
	movlw	high(04h)
	movwf	((displayMode@temp2))+1
	line	203
;LE4-7.c: 203: break;
	goto	l930
	line	204
;LE4-7.c: 204: case 1:
	
l74:	
	line	205
	
l918:	
;LE4-7.c: 205: temp2 = 0x02 << 2;
	movlw	low(08h)
	movwf	(displayMode@temp2)
	movlw	high(08h)
	movwf	((displayMode@temp2))+1
	line	206
;LE4-7.c: 206: break;
	goto	l930
	line	207
;LE4-7.c: 207: case 2:
	
l75:	
	line	208
	
l920:	
;LE4-7.c: 208: temp2 = 0x03 << 2;
	movlw	low(0Ch)
	movwf	(displayMode@temp2)
	movlw	high(0Ch)
	movwf	((displayMode@temp2))+1
	line	209
;LE4-7.c: 209: break;
	goto	l930
	line	210
;LE4-7.c: 210: case 3:
	
l76:	
	line	211
	
l922:	
;LE4-7.c: 211: temp2 = 0x04 << 2;
	movlw	low(010h)
	movwf	(displayMode@temp2)
	movlw	high(010h)
	movwf	((displayMode@temp2))+1
	line	212
;LE4-7.c: 212: break;
	goto	l930
	line	213
;LE4-7.c: 213: case 4:
	
l77:	
	line	214
	
l924:	
;LE4-7.c: 214: temp2 = 0x05 << 2;
	movlw	low(014h)
	movwf	(displayMode@temp2)
	movlw	high(014h)
	movwf	((displayMode@temp2))+1
	line	215
;LE4-7.c: 215: break;
	goto	l930
	line	216
	
l926:	
;LE4-7.c: 216: }
	goto	l930
	line	199
	
l71:	
	
l928:	
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
	goto	l1052
	goto	l930
	opt asmopt_on
	
l1052:	
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
	goto	l916
	xorlw	1^0	; case 1
	skipnz
	goto	l918
	xorlw	2^1	; case 2
	skipnz
	goto	l920
	xorlw	3^2	; case 3
	skipnz
	goto	l922
	xorlw	4^3	; case 4
	skipnz
	goto	l924
	goto	l930
	opt asmopt_on

	line	216
	
l73:	
	line	217
	
l930:	
;LE4-7.c: 217: PORTB = temp + temp2;
	movf	(displayMode@temp2),w
	addwf	(displayMode@temp),w
	movwf	(6)	;volatile
	line	218
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_displayMode
	__end_of_displayMode:
	signat	_displayMode,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 229 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  localClock      2    4[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
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
	line	229
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	229
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	234
	
l764:	
;LE4-7.c: 234: int localClock = 0;
	clrf	(delay@localClock)
	clrf	(delay@localClock+1)
	line	235
;LE4-7.c: 235: while(localClock < 98)
	goto	l772
	
l82:	
	line	237
	
l766:	
;LE4-7.c: 236: {
;LE4-7.c: 237: if(count_flag == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_count_flag),w
	iorwf	(_count_flag+1),w
	skipz
	goto	u181
	goto	u180
u181:
	goto	l772
u180:
	line	239
	
l768:	
;LE4-7.c: 238: {
;LE4-7.c: 239: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	240
	
l770:	
;LE4-7.c: 240: localClock++;
	movlw	low(01h)
	addwf	(delay@localClock),f
	skipnc
	incf	(delay@localClock+1),f
	movlw	high(01h)
	addwf	(delay@localClock+1),f
	goto	l772
	line	241
	
l83:	
	goto	l772
	line	242
	
l81:	
	line	235
	
l772:	
	movf	(delay@localClock+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(062h))^80h
	subwf	btemp+1,w
	skipz
	goto	u195
	movlw	low(062h)
	subwf	(delay@localClock),w
u195:

	skipc
	goto	u191
	goto	u190
u191:
	goto	l766
u190:
	goto	l85
	
l84:	
	line	243
	
l85:	
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
;;  multiplicand    1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    1[BANK0 ] unsigned char 
;;  product         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       2       0       0       0
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
	
l940:	
	clrf	(___bmul@product)
	goto	l942
	line	42
	
l196:	
	line	43
	
l942:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u351
	goto	u350
u351:
	goto	l946
u350:
	line	44
	
l944:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l946
	
l197:	
	line	45
	
l946:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l948:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l950:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u361
	goto	u360
u361:
	goto	l942
u360:
	goto	l952
	
l198:	
	line	50
	
l952:	
	movf	(___bmul@product),w
	goto	l199
	
l954:	
	line	51
	
l199:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 81 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
	line	81
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	81
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
	line	83
	
i1l802:	
;LE4-7.c: 83: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	84
;LE4-7.c: 84: if(TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l808
u24_20:
	line	86
	
i1l804:	
;LE4-7.c: 85: {
;LE4-7.c: 86: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	87
	
i1l806:	
;LE4-7.c: 87: count_flag = 1;
	movlw	low(01h)
	movwf	(_count_flag)
	movlw	high(01h)
	movwf	((_count_flag))+1
	goto	i1l808
	line	88
	
i1l55:	
	line	89
	
i1l808:	
;LE4-7.c: 88: }
;LE4-7.c: 89: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	90
	
i1l56:	
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
