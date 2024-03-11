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
	FNCALL	_main,_debounce
	FNCALL	_debounce,_incrementDutyCycle
	FNCALL	_debounce,_incrementFrequency
	FNCALL	_debounce,_pseudocode
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_maxCountDC1
	global	_maxCountDC2
	global	_dutyCycles
	global	_frequencies
	global	_flag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	34

;initializer for _maxCountDC1
	retlw	01Dh
	retlw	0FBh

	retlw	082h
	retlw	0FFh

	retlw	0F2h
	retlw	0FFh

	retlw	0CAh
	retlw	0F3h

	retlw	0C6h
	retlw	0FEh

	retlw	0DFh
	retlw	0FFh

	retlw	095h
	retlw	0E7h

	retlw	08Eh
	retlw	0FDh

	retlw	0C0h
	retlw	0FFh

	retlw	060h
	retlw	0DBh

	retlw	055h
	retlw	0FCh

	retlw	0A1h
	retlw	0FFh

	retlw	09Ch
	retlw	0D1h

	retlw	05Bh
	retlw	0FBh

	retlw	088h
	retlw	0FFh

	line	43

;initializer for _maxCountDC2
	retlw	0Dh
	retlw	0D4h

	retlw	09Ah
	retlw	0FBh

	retlw	08Eh
	retlw	0FFh

	retlw	060h
	retlw	0DBh

	retlw	055h
	retlw	0FCh

	retlw	0A1h
	retlw	0FFh

	retlw	095h
	retlw	0E7h

	retlw	08Eh
	retlw	0FDh

	retlw	0C0h
	retlw	0FFh

	retlw	0CAh
	retlw	0F3h

	retlw	0C6h
	retlw	0FEh

	retlw	0DFh
	retlw	0FFh

	retlw	08Eh
	retlw	0FDh

	retlw	0C0h
	retlw	0FFh

	retlw	0F8h
	retlw	0FFh

	line	29

;initializer for _dutyCycles
	retlw	0Ah
	retlw	0

	retlw	019h
	retlw	0

	retlw	032h
	retlw	0

	retlw	04Bh
	retlw	0

	retlw	05Fh
	retlw	0

	line	28

;initializer for _frequencies
	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	line	32

;initializer for _flag
	retlw	01h
	retlw	0

	global	_dutyCycleIndex
	global	_frequencyIndex
	global	_maxCountIndex1
	global	_TMR1
_TMR1	set	0xE
	global	_T1CON
_T1CON	set	0x10
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x28
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISA
_TRISA	set	0x85
	global	_TRISD
_TRISD	set	0x88
	global	_TMR1IE
_TMR1IE	set	0x460
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

_maxCountIndex1:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	34
_maxCountDC1:
       ds      30

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	43
_maxCountDC2:
       ds      30

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	29
_dutyCycles:
       ds      10

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	28
_frequencies:
       ds      6

psect	dataBANK0
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	32
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
	movlw low(__pdataBANK0+78)
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_main:	; 0 bytes @ 0x0
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_incrementDutyCycle:	; 0 bytes @ 0x0
?_pseudocode:	; 0 bytes @ 0x0
?_incrementFrequency:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_debounce:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_incrementDutyCycle:	; 0 bytes @ 0x0
??_pseudocode:	; 0 bytes @ 0x0
??_incrementFrequency:	; 0 bytes @ 0x0
??_debounce:	; 0 bytes @ 0x0
	global	debounce@i
debounce@i:	; 2 bytes @ 0x0
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        78
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      12
;!    BANK0            80      2      80
;!    BANK1            80      1       1
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
;!    _main->_debounce
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0      46
;!                                              0 BANK1      1     1      0
;!                           _debounce
;! ---------------------------------------------------------------------------------
;! (1) _debounce                                             2     2      0      46
;!                                              0 BANK0      2     2      0
;!                 _incrementDutyCycle
;!                 _incrementFrequency
;!                         _pseudocode
;! ---------------------------------------------------------------------------------
;! (2) _pseudocode                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _incrementFrequency                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _incrementDutyCycle                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _debounce
;!     _incrementDutyCycle
;!     _incrementFrequency
;!     _pseudocode
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
;!BANK1               50      1       1       7        1.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      2      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      5D      12        0.0%
;!ABS                  0      0      5D       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 104 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_debounce
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	104
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	104
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	106
	
l1153:	
;LE4-7.c: 106: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	107
	
l1155:	
;LE4-7.c: 107: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	108
	
l1157:	
;LE4-7.c: 108: T1CON = 0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	109
	
l1159:	
;LE4-7.c: 109: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	110
	
l1161:	
;LE4-7.c: 110: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7	;volatile
	line	111
	
l1163:	
;LE4-7.c: 111: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	112
	
l1165:	
;LE4-7.c: 112: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	114
	
l1167:	
;LE4-7.c: 114: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	115
	
l1169:	
;LE4-7.c: 115: TMR1 = maxCountDC1[maxCountIndex1];
	movf	(_maxCountIndex1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	addwf	(??_main+0)^080h+0,w
	addlw	_maxCountDC1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	incf	fsr0,f
	movf	indf,w
	movwf	(14+1)	;volatile
	line	116
	
l1171:	
;LE4-7.c: 116: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	line	119
	
l1173:	
;LE4-7.c: 119: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	goto	l1175
	line	121
;LE4-7.c: 120: for(;;)
	
l67:	
	line	122
	
l1175:	
;LE4-7.c: 121: {
;LE4-7.c: 122: debounce();
	fcall	_debounce
	line	123
;LE4-7.c: 123: }
	goto	l1175
	
l68:	
	line	124
	
l69:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_debounce

;; *************** function _debounce *****************
;; Defined at:
;;		line 85 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_incrementDutyCycle
;;		_incrementFrequency
;;		_pseudocode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	85
global __ptext1
__ptext1:	;psect for function _debounce
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	85
	global	__size_of_debounce
	__size_of_debounce	equ	__end_of_debounce-_debounce
	
_debounce:	
;incstack = 0
	opt	stack 5
; Regs used in _debounce: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	87
	
l1129:	
;LE4-7.c: 87: while(RD0 == 1 || RD1 == 1)
	goto	l57
	
l58:	
	line	89
;LE4-7.c: 88: {
;LE4-7.c: 89: if(RD0 == 1)
	btfss	(64/8),(64)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l1135
u150:
	line	91
	
l1131:	
;LE4-7.c: 90: {
;LE4-7.c: 91: incrementDutyCycle();
	fcall	_incrementDutyCycle
	line	92
	
l1133:	
;LE4-7.c: 92: pseudocode();
	fcall	_pseudocode
	goto	l1135
	line	93
	
l59:	
	line	94
	
l1135:	
;LE4-7.c: 93: }
;LE4-7.c: 94: if(RD1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l1141
u160:
	line	96
	
l1137:	
;LE4-7.c: 95: {
;LE4-7.c: 96: incrementFrequency();
	fcall	_incrementFrequency
	line	97
	
l1139:	
;LE4-7.c: 97: pseudocode();
	fcall	_pseudocode
	goto	l1141
	line	98
	
l60:	
	line	99
	
l1141:	
;LE4-7.c: 98: }
;LE4-7.c: 99: for(int i = 0; i < 10000; i++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(debounce@i)
	clrf	(debounce@i+1)
	
l1143:	
	movf	(debounce@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(02710h)
	subwf	(debounce@i),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l1147
u170:
	goto	l57
	
l1145:	
	goto	l57
	
l61:	
	
l1147:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(debounce@i),f
	skipnc
	incf	(debounce@i+1),f
	movlw	high(01h)
	addwf	(debounce@i+1),f
	
l1149:	
	movf	(debounce@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u185
	movlw	low(02710h)
	subwf	(debounce@i),w
u185:

	skipc
	goto	u181
	goto	u180
u181:
	goto	l1147
u180:
	goto	l57
	
l62:	
	line	100
	
l57:	
	line	87
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(64/8),(64)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l58
u190:
	
l1151:	
	btfsc	(65/8),(65)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l58
u200:
	goto	l64
	
l63:	
	line	101
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_debounce
	__end_of_debounce:
	signat	_debounce,88
	global	_pseudocode

;; *************** function _pseudocode *****************
;; Defined at:
;;		line 128 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_debounce
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	128
global __ptext2
__ptext2:	;psect for function _pseudocode
psect	text2
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	128
	global	__size_of_pseudocode
	__size_of_pseudocode	equ	__end_of_pseudocode-_pseudocode
	
_pseudocode:	
;incstack = 0
	opt	stack 5
; Regs used in _pseudocode: [wreg-fsr0h+status,2+status,0]
	line	130
	
l1031:	
;LE4-7.c: 130: switch(dutyCycleIndex)
	goto	l1097
	line	132
;LE4-7.c: 131: {
;LE4-7.c: 132: case 0:
	
l73:	
	line	133
;LE4-7.c: 133: switch(frequencyIndex)
	goto	l1043
	line	135
;LE4-7.c: 134: {
;LE4-7.c: 135: case 0:
	
l75:	
	line	136
	
l1033:	
;LE4-7.c: 136: maxCountIndex1 = 0;
	clrf	(_maxCountIndex1)
	clrf	(_maxCountIndex1+1)
	line	137
;LE4-7.c: 137: break;
	goto	l80
	line	138
;LE4-7.c: 138: case 1:
	
l77:	
	line	139
	
l1035:	
;LE4-7.c: 139: maxCountIndex1 = 1;
	movlw	low(01h)
	movwf	(_maxCountIndex1)
	movlw	high(01h)
	movwf	((_maxCountIndex1))+1
	line	140
;LE4-7.c: 140: break;
	goto	l80
	line	141
;LE4-7.c: 141: case 2:
	
l78:	
	line	142
	
l1037:	
;LE4-7.c: 142: maxCountIndex1 = 2;
	movlw	low(02h)
	movwf	(_maxCountIndex1)
	movlw	high(02h)
	movwf	((_maxCountIndex1))+1
	line	143
;LE4-7.c: 143: break;
	goto	l80
	line	144
;LE4-7.c: 144: default:
	
l79:	
	line	145
;LE4-7.c: 145: return;
	goto	l80
	line	146
	
l1039:	
;LE4-7.c: 146: break;
	goto	l80
	line	147
	
l1041:	
;LE4-7.c: 147: }
	goto	l80
	line	133
	
l74:	
	
l1043:	
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
	goto	l1297
	goto	l80
	opt asmopt_on
	
l1297:	
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
	goto	l1033
	xorlw	1^0	; case 1
	skipnz
	goto	l1035
	xorlw	2^1	; case 2
	skipnz
	goto	l1037
	goto	l80
	opt asmopt_on

	line	147
	
l76:	
	line	148
;LE4-7.c: 148: break;
	goto	l80
	line	149
;LE4-7.c: 149: case 1:
	
l82:	
	line	150
;LE4-7.c: 150: switch(frequencyIndex)
	goto	l1055
	line	152
;LE4-7.c: 151: {
;LE4-7.c: 152: case 0:
	
l84:	
	line	153
	
l1045:	
;LE4-7.c: 153: maxCountIndex1 = 3;
	movlw	low(03h)
	movwf	(_maxCountIndex1)
	movlw	high(03h)
	movwf	((_maxCountIndex1))+1
	line	154
;LE4-7.c: 154: break;
	goto	l80
	line	155
;LE4-7.c: 155: case 1:
	
l86:	
	line	156
	
l1047:	
;LE4-7.c: 156: maxCountIndex1 = 4;
	movlw	low(04h)
	movwf	(_maxCountIndex1)
	movlw	high(04h)
	movwf	((_maxCountIndex1))+1
	line	157
;LE4-7.c: 157: break;
	goto	l80
	line	158
;LE4-7.c: 158: case 2:
	
l87:	
	line	159
	
l1049:	
;LE4-7.c: 159: maxCountIndex1 = 5;
	movlw	low(05h)
	movwf	(_maxCountIndex1)
	movlw	high(05h)
	movwf	((_maxCountIndex1))+1
	line	160
;LE4-7.c: 160: break;
	goto	l80
	line	161
;LE4-7.c: 161: default:
	
l88:	
	line	162
;LE4-7.c: 162: return;
	goto	l80
	line	163
	
l1051:	
;LE4-7.c: 163: break;
	goto	l80
	line	164
	
l1053:	
;LE4-7.c: 164: }
	goto	l80
	line	150
	
l83:	
	
l1055:	
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
	goto	l1299
	goto	l80
	opt asmopt_on
	
l1299:	
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
	goto	l1045
	xorlw	1^0	; case 1
	skipnz
	goto	l1047
	xorlw	2^1	; case 2
	skipnz
	goto	l1049
	goto	l80
	opt asmopt_on

	line	164
	
l85:	
	line	165
;LE4-7.c: 165: break;
	goto	l80
	line	166
;LE4-7.c: 166: case 2:
	
l89:	
	line	167
;LE4-7.c: 167: switch(frequencyIndex)
	goto	l1067
	line	169
;LE4-7.c: 168: {
;LE4-7.c: 169: case 0:
	
l91:	
	line	170
	
l1057:	
;LE4-7.c: 170: maxCountIndex1 = 6;
	movlw	low(06h)
	movwf	(_maxCountIndex1)
	movlw	high(06h)
	movwf	((_maxCountIndex1))+1
	line	171
;LE4-7.c: 171: break;
	goto	l80
	line	172
;LE4-7.c: 172: case 1:
	
l93:	
	line	173
	
l1059:	
;LE4-7.c: 173: maxCountIndex1 = 7;
	movlw	low(07h)
	movwf	(_maxCountIndex1)
	movlw	high(07h)
	movwf	((_maxCountIndex1))+1
	line	174
;LE4-7.c: 174: break;
	goto	l80
	line	175
;LE4-7.c: 175: case 2:
	
l94:	
	line	176
	
l1061:	
;LE4-7.c: 176: maxCountIndex1 = 8;
	movlw	low(08h)
	movwf	(_maxCountIndex1)
	movlw	high(08h)
	movwf	((_maxCountIndex1))+1
	line	177
;LE4-7.c: 177: break;
	goto	l80
	line	178
;LE4-7.c: 178: default:
	
l95:	
	line	179
;LE4-7.c: 179: return;
	goto	l80
	line	180
	
l1063:	
;LE4-7.c: 180: break;
	goto	l80
	line	181
	
l1065:	
;LE4-7.c: 181: }
	goto	l80
	line	167
	
l90:	
	
l1067:	
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
	goto	l1301
	goto	l80
	opt asmopt_on
	
l1301:	
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
	goto	l1057
	xorlw	1^0	; case 1
	skipnz
	goto	l1059
	xorlw	2^1	; case 2
	skipnz
	goto	l1061
	goto	l80
	opt asmopt_on

	line	181
	
l92:	
	line	182
;LE4-7.c: 182: break;
	goto	l80
	line	183
;LE4-7.c: 183: case 3:
	
l96:	
	line	184
;LE4-7.c: 184: switch(frequencyIndex)
	goto	l1079
	line	186
;LE4-7.c: 185: {
;LE4-7.c: 186: case 0:
	
l98:	
	line	187
	
l1069:	
;LE4-7.c: 187: maxCountIndex1 = 9;
	movlw	low(09h)
	movwf	(_maxCountIndex1)
	movlw	high(09h)
	movwf	((_maxCountIndex1))+1
	line	188
;LE4-7.c: 188: break;
	goto	l80
	line	189
;LE4-7.c: 189: case 1:
	
l100:	
	line	190
	
l1071:	
;LE4-7.c: 190: maxCountIndex1 = 10;
	movlw	low(0Ah)
	movwf	(_maxCountIndex1)
	movlw	high(0Ah)
	movwf	((_maxCountIndex1))+1
	line	191
;LE4-7.c: 191: break;
	goto	l80
	line	192
;LE4-7.c: 192: case 2:
	
l101:	
	line	193
	
l1073:	
;LE4-7.c: 193: maxCountIndex1 = 11;
	movlw	low(0Bh)
	movwf	(_maxCountIndex1)
	movlw	high(0Bh)
	movwf	((_maxCountIndex1))+1
	line	194
;LE4-7.c: 194: break;
	goto	l80
	line	195
;LE4-7.c: 195: default:
	
l102:	
	line	196
;LE4-7.c: 196: return;
	goto	l80
	line	197
	
l1075:	
;LE4-7.c: 197: break;
	goto	l80
	line	198
	
l1077:	
;LE4-7.c: 198: }
	goto	l80
	line	184
	
l97:	
	
l1079:	
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
	goto	l1303
	goto	l80
	opt asmopt_on
	
l1303:	
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
	goto	l1069
	xorlw	1^0	; case 1
	skipnz
	goto	l1071
	xorlw	2^1	; case 2
	skipnz
	goto	l1073
	goto	l80
	opt asmopt_on

	line	198
	
l99:	
	line	199
;LE4-7.c: 199: break;
	goto	l80
	line	200
;LE4-7.c: 200: case 4:
	
l103:	
	line	201
;LE4-7.c: 201: switch(frequencyIndex)
	goto	l1091
	line	203
;LE4-7.c: 202: {
;LE4-7.c: 203: case 0:
	
l105:	
	line	204
	
l1081:	
;LE4-7.c: 204: maxCountIndex1 = 12;
	movlw	low(0Ch)
	movwf	(_maxCountIndex1)
	movlw	high(0Ch)
	movwf	((_maxCountIndex1))+1
	line	205
;LE4-7.c: 205: break;
	goto	l80
	line	206
;LE4-7.c: 206: case 1:
	
l107:	
	line	207
	
l1083:	
;LE4-7.c: 207: maxCountIndex1 = 13;
	movlw	low(0Dh)
	movwf	(_maxCountIndex1)
	movlw	high(0Dh)
	movwf	((_maxCountIndex1))+1
	line	208
;LE4-7.c: 208: break;
	goto	l80
	line	209
;LE4-7.c: 209: case 2:
	
l108:	
	line	210
	
l1085:	
;LE4-7.c: 210: maxCountIndex1 = 14;
	movlw	low(0Eh)
	movwf	(_maxCountIndex1)
	movlw	high(0Eh)
	movwf	((_maxCountIndex1))+1
	line	211
;LE4-7.c: 211: break;
	goto	l80
	line	212
;LE4-7.c: 212: default:
	
l109:	
	line	213
;LE4-7.c: 213: return;
	goto	l80
	line	214
	
l1087:	
;LE4-7.c: 214: break;
	goto	l80
	line	215
	
l1089:	
;LE4-7.c: 215: }
	goto	l80
	line	201
	
l104:	
	
l1091:	
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
	goto	l1305
	goto	l80
	opt asmopt_on
	
l1305:	
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
	goto	l1081
	xorlw	1^0	; case 1
	skipnz
	goto	l1083
	xorlw	2^1	; case 2
	skipnz
	goto	l1085
	goto	l80
	opt asmopt_on

	line	215
	
l106:	
	line	216
;LE4-7.c: 216: break;
	goto	l80
	line	217
;LE4-7.c: 217: default:
	
l110:	
	line	218
;LE4-7.c: 218: return;
	goto	l80
	line	219
	
l1093:	
;LE4-7.c: 219: break;
	goto	l80
	line	220
	
l1095:	
;LE4-7.c: 220: }
	goto	l80
	line	130
	
l72:	
	
l1097:	
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
	goto	l1307
	goto	l80
	opt asmopt_on
	
l1307:	
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
	goto	l1043
	xorlw	1^0	; case 1
	skipnz
	goto	l1055
	xorlw	2^1	; case 2
	skipnz
	goto	l1067
	xorlw	3^2	; case 3
	skipnz
	goto	l1079
	xorlw	4^3	; case 4
	skipnz
	goto	l1091
	goto	l80
	opt asmopt_on

	line	220
	
l81:	
	line	221
	
l80:	
	return
	opt stack 0
GLOBAL	__end_of_pseudocode
	__end_of_pseudocode:
	signat	_pseudocode,88
	global	_incrementFrequency

;; *************** function _incrementFrequency *****************
;; Defined at:
;;		line 230 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;;		_debounce
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	230
global __ptext3
__ptext3:	;psect for function _incrementFrequency
psect	text3
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	230
	global	__size_of_incrementFrequency
	__size_of_incrementFrequency	equ	__end_of_incrementFrequency-_incrementFrequency
	
_incrementFrequency:	
;incstack = 0
	opt	stack 5
; Regs used in _incrementFrequency: [wreg+status,2]
	line	232
	
l1123:	
;LE4-7.c: 232: if(frequencyIndex == 2)
	movlw	02h
	xorwf	(_frequencyIndex),w
	iorwf	(_frequencyIndex+1),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l1127
u140:
	line	233
	
l1125:	
;LE4-7.c: 233: frequencyIndex = 0;
	clrf	(_frequencyIndex)
	clrf	(_frequencyIndex+1)
	goto	l120
	line	234
	
l118:	
	line	235
	
l1127:	
;LE4-7.c: 234: else
;LE4-7.c: 235: frequencyIndex += 1;
	movlw	low(01h)
	addwf	(_frequencyIndex),f
	skipnc
	incf	(_frequencyIndex+1),f
	movlw	high(01h)
	addwf	(_frequencyIndex+1),f
	goto	l120
	
l119:	
	line	236
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_incrementFrequency
	__end_of_incrementFrequency:
	signat	_incrementFrequency,88
	global	_incrementDutyCycle

;; *************** function _incrementDutyCycle *****************
;; Defined at:
;;		line 222 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;;		_debounce
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	222
global __ptext4
__ptext4:	;psect for function _incrementDutyCycle
psect	text4
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	222
	global	__size_of_incrementDutyCycle
	__size_of_incrementDutyCycle	equ	__end_of_incrementDutyCycle-_incrementDutyCycle
	
_incrementDutyCycle:	
;incstack = 0
	opt	stack 5
; Regs used in _incrementDutyCycle: [wreg+status,2]
	line	224
	
l1025:	
;LE4-7.c: 224: if(dutyCycleIndex == 4)
	movlw	04h
	xorwf	(_dutyCycleIndex),w
	iorwf	(_dutyCycleIndex+1),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l1029
u130:
	line	225
	
l1027:	
;LE4-7.c: 225: dutyCycleIndex = 0;
	clrf	(_dutyCycleIndex)
	clrf	(_dutyCycleIndex+1)
	goto	l115
	line	226
	
l113:	
	line	227
	
l1029:	
;LE4-7.c: 226: else
;LE4-7.c: 227: dutyCycleIndex += 1;
	movlw	low(01h)
	addwf	(_dutyCycleIndex),f
	skipnc
	incf	(_dutyCycleIndex+1),f
	movlw	high(01h)
	addwf	(_dutyCycleIndex+1),f
	goto	l115
	
l114:	
	line	228
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_incrementDutyCycle
	__end_of_incrementDutyCycle:
	signat	_incrementDutyCycle,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 64 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
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
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	64
global __ptext5
__ptext5:	;psect for function _ISR
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_04\LE4-7\LE4-7.c"
	line	64
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
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
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text5
	line	66
	
i1l865:	
;LE4-7.c: 66: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	67
;LE4-7.c: 67: if(TMR1IF==1)
	btfss	(96/8),(96)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l879
u11_20:
	line	69
	
i1l867:	
;LE4-7.c: 68: {
;LE4-7.c: 69: TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	70
	
i1l869:	
;LE4-7.c: 70: if(flag != 1)
	movlw	01h
	xorwf	(_flag),w
	iorwf	(_flag+1),w
	skipnz
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l873
u12_20:
	line	72
	
i1l871:	
;LE4-7.c: 71: {
;LE4-7.c: 72: TMR1 = maxCountDC2[maxCountIndex1];
	movf	(_maxCountIndex1),w
	movwf	(??_ISR+0)+0
	addwf	(??_ISR+0)+0,w
	addlw	_maxCountDC2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(14)	;volatile
	incf	fsr0,f
	movf	indf,w
	movwf	(14+1)	;volatile
	line	73
;LE4-7.c: 73: }
	goto	i1l875
	line	74
	
i1l52:	
	line	76
	
i1l873:	
;LE4-7.c: 74: else
;LE4-7.c: 75: {
;LE4-7.c: 76: TMR1 = maxCountDC1[maxCountIndex1];
	movf	(_maxCountIndex1),w
	movwf	(??_ISR+0)+0
	addwf	(??_ISR+0)+0,w
	addlw	_maxCountDC1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(14)	;volatile
	incf	fsr0,f
	movf	indf,w
	movwf	(14+1)	;volatile
	goto	i1l875
	line	77
	
i1l53:	
	line	78
	
i1l875:	
;LE4-7.c: 77: }
;LE4-7.c: 78: RA0 = RA0^1;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	line	79
	
i1l877:	
;LE4-7.c: 79: flag = !flag;
	movf	(_flag+1),w
	iorwf	(_flag),w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(_flag)
	movf	1+(??_ISR+0)+0,w
	movwf	(_flag+1)
	goto	i1l879
	line	81
	
i1l51:	
	line	82
	
i1l879:	
;LE4-7.c: 81: }
;LE4-7.c: 82: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	83
	
i1l54:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
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
