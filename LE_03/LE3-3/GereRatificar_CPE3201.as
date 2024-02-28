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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count_flag
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
	line	17

;initializer for _count_flag
	retlw	01h
	retlw	0

	global	_count
	global	_countIsUpdating
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_PEIE
_PEIE	set	0x5E
	global	_RBIE
_RBIE	set	0x5B
	global	_RBIF
_RBIF	set	0x58
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
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
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
	line	17
_count_flag:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count:
       ds      2

_countIsUpdating:
       ds      2

	file	"GereRatificar_CPE3201.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
?_delay:	; 0 bytes @ 0x4
	global	delay@timeIn
delay@timeIn:	; 3 bytes @ 0x4
	ds	3
??_delay:	; 0 bytes @ 0x7
??_main:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	delay@localClock
delay@localClock:	; 2 bytes @ 0x0
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       9
;!    BANK0            80      4       8
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
;!    _main->_delay
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0     204
;!                                              2 BANK0      2     2      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     2      3     102
;!                                              4 COMMON     3     0      3
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
;!   _delay
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
;!BANK0               50      4       8       5       10.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       9       1       64.3%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      11      12        0.0%
;!ABS                  0      0      11       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 111 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
	line	111
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
	line	111
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	113
	
l727:	
;LE3-3.c: 113: OPTION_REG = 0x44;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	115
	
l729:	
;LE3-3.c: 115: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	116
	
l731:	
;LE3-3.c: 116: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	117
	
l733:	
;LE3-3.c: 117: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	118
	
l735:	
;LE3-3.c: 118: RBIE = 0;
	bcf	(91/8),(91)&7	;volatile
	line	119
	
l737:	
;LE3-3.c: 119: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	120
	
l739:	
;LE3-3.c: 120: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	121
	
l741:	
;LE3-3.c: 121: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	122
	
l743:	
;LE3-3.c: 122: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	125
;LE3-3.c: 125: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	126
	
l745:	
;LE3-3.c: 126: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	127
	
l747:	
;LE3-3.c: 127: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	130
;LE3-3.c: 130: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	132
;LE3-3.c: 132: while (1)
	
l65:	
	line	134
;LE3-3.c: 133: {
;LE3-3.c: 134: for(int i = 0; i <= 9; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l749:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(0Ah)
	subwf	(main@i),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l753
u170:
	goto	l65
	
l751:	
	goto	l65
	line	135
	
l66:	
	line	136
	
l753:	
;LE3-3.c: 135: {
;LE3-3.c: 136: if(countIsUpdating)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_countIsUpdating+1),w
	iorwf	(_countIsUpdating),w
	skipnz
	goto	u181
	goto	u180
u181:
	goto	l761
u180:
	line	138
	
l755:	
;LE3-3.c: 137: {
;LE3-3.c: 138: countIsUpdating = 0;
	clrf	(_countIsUpdating)
	clrf	(_countIsUpdating+1)
	line	140
	
l757:	
;LE3-3.c: 140: PORTC = count;
	movf	(_count),w
	movwf	(7)	;volatile
	line	141
	
l759:	
;LE3-3.c: 141: i = count;
	movf	(_count+1),w
	clrf	(main@i+1)
	addwf	(main@i+1)
	movf	(_count),w
	clrf	(main@i)
	addwf	(main@i)

	line	142
;LE3-3.c: 142: }
	goto	l763
	line	143
	
l68:	
	line	145
	
l761:	
;LE3-3.c: 143: else
;LE3-3.c: 144: {
;LE3-3.c: 145: PORTC = i;
	movf	(main@i),w
	movwf	(7)	;volatile
	goto	l763
	line	146
	
l69:	
	line	147
	
l763:	
;LE3-3.c: 146: }
;LE3-3.c: 147: delay(0.8);
	movlw	0xcd
	movwf	(delay@timeIn)
	movlw	0x4c
	movwf	(delay@timeIn+1)
	movlw	0x3f
	movwf	(delay@timeIn+2)
	fcall	_delay
	line	134
	
l765:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l767:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u195
	movlw	low(0Ah)
	subwf	(main@i),w
u195:

	skipc
	goto	u191
	goto	u190
u191:
	goto	l753
u190:
	goto	l65
	
l67:	
	goto	l65
	line	149
	
l70:	
	line	132
	goto	l65
	
l71:	
	line	150
	
l72:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 38 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;  timeIn          3    4[COMMON] float 
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
;;      Params:         3       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	38
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
	line	38
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	43
	
l717:	
;LE3-3.c: 43: int localClock = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@localClock)
	clrf	(delay@localClock+1)
	line	44
;LE3-3.c: 44: while(localClock < 98)
	goto	l725
	
l38:	
	line	46
	
l719:	
;LE3-3.c: 45: {
;LE3-3.c: 46: if(count_flag == 1)
	movlw	01h
	xorwf	(_count_flag),w
	iorwf	(_count_flag+1),w
	skipz
	goto	u151
	goto	u150
u151:
	goto	l725
u150:
	line	48
	
l721:	
;LE3-3.c: 47: {
;LE3-3.c: 48: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	49
	
l723:	
;LE3-3.c: 49: localClock++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@localClock),f
	skipnc
	incf	(delay@localClock+1),f
	movlw	high(01h)
	addwf	(delay@localClock+1),f
	goto	l725
	line	50
	
l39:	
	goto	l725
	line	51
	
l37:	
	line	44
	
l725:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@localClock+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(062h))^80h
	subwf	btemp+1,w
	skipz
	goto	u165
	movlw	low(062h)
	subwf	(delay@localClock),w
u165:

	skipc
	goto	u161
	goto	u160
u161:
	goto	l719
u160:
	goto	l41
	
l40:	
	line	52
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 54 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	54
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_03\LE3-3\LE3-3.c"
	line	54
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0]
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
psect	text2
	line	56
	
i1l633:	
;LE3-3.c: 56: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	57
;LE3-3.c: 57: if(INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l44
u10_20:
	goto	i1l663
	line	59
	
i1l635:	
;LE3-3.c: 58: {
;LE3-3.c: 59: switch(PORTD)
	goto	i1l663
	line	61
;LE3-3.c: 60: {
;LE3-3.c: 61: case KEY_0:
	
i1l46:	
	line	62
	
i1l637:	
;LE3-3.c: 62: count = 0;
	clrf	(_count)
	clrf	(_count+1)
	line	63
;LE3-3.c: 63: break;
	goto	i1l665
	line	64
;LE3-3.c: 64: case KEY_1:
	
i1l48:	
	line	65
	
i1l639:	
;LE3-3.c: 65: count = 1;
	movlw	low(01h)
	movwf	(_count)
	movlw	high(01h)
	movwf	((_count))+1
	line	66
;LE3-3.c: 66: break;
	goto	i1l665
	line	67
;LE3-3.c: 67: case KEY_2:
	
i1l49:	
	line	68
	
i1l641:	
;LE3-3.c: 68: count = 2;
	movlw	low(02h)
	movwf	(_count)
	movlw	high(02h)
	movwf	((_count))+1
	line	69
;LE3-3.c: 69: break;
	goto	i1l665
	line	70
;LE3-3.c: 70: case KEY_3:
	
i1l50:	
	line	71
	
i1l643:	
;LE3-3.c: 71: count = 3;
	movlw	low(03h)
	movwf	(_count)
	movlw	high(03h)
	movwf	((_count))+1
	line	72
;LE3-3.c: 72: break;
	goto	i1l665
	line	73
;LE3-3.c: 73: case KEY_4:
	
i1l51:	
	line	74
	
i1l645:	
;LE3-3.c: 74: count = 4;
	movlw	low(04h)
	movwf	(_count)
	movlw	high(04h)
	movwf	((_count))+1
	line	75
;LE3-3.c: 75: break;
	goto	i1l665
	line	76
;LE3-3.c: 76: case KEY_5:
	
i1l52:	
	line	77
	
i1l647:	
;LE3-3.c: 77: count = 5;
	movlw	low(05h)
	movwf	(_count)
	movlw	high(05h)
	movwf	((_count))+1
	line	78
;LE3-3.c: 78: break;
	goto	i1l665
	line	79
;LE3-3.c: 79: case KEY_6:
	
i1l53:	
	line	80
	
i1l649:	
;LE3-3.c: 80: count = 6;
	movlw	low(06h)
	movwf	(_count)
	movlw	high(06h)
	movwf	((_count))+1
	line	81
;LE3-3.c: 81: break;
	goto	i1l665
	line	82
;LE3-3.c: 82: case KEY_7:
	
i1l54:	
	line	83
	
i1l651:	
;LE3-3.c: 83: count = 7;
	movlw	low(07h)
	movwf	(_count)
	movlw	high(07h)
	movwf	((_count))+1
	line	84
;LE3-3.c: 84: break;
	goto	i1l665
	line	85
;LE3-3.c: 85: case KEY_8:
	
i1l55:	
	line	86
	
i1l653:	
;LE3-3.c: 86: count = 8;
	movlw	low(08h)
	movwf	(_count)
	movlw	high(08h)
	movwf	((_count))+1
	line	87
;LE3-3.c: 87: break;
	goto	i1l665
	line	88
;LE3-3.c: 88: case KEY_9:
	
i1l56:	
	line	89
	
i1l655:	
;LE3-3.c: 89: count = 9;
	movlw	low(09h)
	movwf	(_count)
	movlw	high(09h)
	movwf	((_count))+1
	line	90
;LE3-3.c: 90: break;
	goto	i1l665
	line	91
;LE3-3.c: 91: case KEY_MULTIPLY:
	
i1l57:	
	line	92
	
i1l657:	
;LE3-3.c: 92: count = 0;
	clrf	(_count)
	clrf	(_count+1)
	line	93
;LE3-3.c: 93: break;
	goto	i1l665
	line	94
;LE3-3.c: 94: case KEY_HASH:
	
i1l58:	
	line	95
	
i1l659:	
;LE3-3.c: 95: count = 0;
	clrf	(_count)
	clrf	(_count+1)
	line	96
;LE3-3.c: 96: break;
	goto	i1l665
	line	97
;LE3-3.c: 97: default:
	
i1l59:	
	line	98
;LE3-3.c: 98: break;
	goto	i1l665
	line	99
	
i1l661:	
;LE3-3.c: 99: }
	goto	i1l665
	line	59
	
i1l45:	
	
i1l663:	
	movf	(8),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l639
	xorlw	1^0	; case 1
	skipnz
	goto	i1l641
	xorlw	2^1	; case 2
	skipnz
	goto	i1l643
	xorlw	4^2	; case 4
	skipnz
	goto	i1l645
	xorlw	5^4	; case 5
	skipnz
	goto	i1l647
	xorlw	6^5	; case 6
	skipnz
	goto	i1l649
	xorlw	8^6	; case 8
	skipnz
	goto	i1l651
	xorlw	9^8	; case 9
	skipnz
	goto	i1l653
	xorlw	10^9	; case 10
	skipnz
	goto	i1l655
	xorlw	12^10	; case 12
	skipnz
	goto	i1l657
	xorlw	13^12	; case 13
	skipnz
	goto	i1l637
	xorlw	14^13	; case 14
	skipnz
	goto	i1l659
	goto	i1l665
	opt asmopt_on

	line	99
	
i1l47:	
	line	100
	
i1l665:	
;LE3-3.c: 100: countIsUpdating = 1;
	movlw	low(01h)
	movwf	(_countIsUpdating)
	movlw	high(01h)
	movwf	((_countIsUpdating))+1
	line	101
	
i1l667:	
;LE3-3.c: 101: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	102
;LE3-3.c: 102: }
	goto	i1l673
	line	103
	
i1l44:	
;LE3-3.c: 103: else if(TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l673
u11_20:
	line	105
	
i1l669:	
;LE3-3.c: 104: {
;LE3-3.c: 105: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	106
	
i1l671:	
;LE3-3.c: 106: count_flag = 1;
	movlw	low(01h)
	movwf	(_count_flag)
	movlw	high(01h)
	movwf	((_count_flag))+1
	goto	i1l673
	line	107
	
i1l61:	
	goto	i1l673
	line	108
	
i1l60:	
	
i1l673:	
;LE3-3.c: 107: }
;LE3-3.c: 108: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	109
	
i1l62:	
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
