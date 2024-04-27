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
	FNCALL	_main,_I2C_Receive
	FNCALL	_main,_I2C_RepeatedStart
	FNCALL	_main,_I2C_Send
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,_initLCD
	FNCALL	_main,_init_I2C_Master
	FNCALL	_main,_pow
	FNCALL	_main,_updateDisplay
	FNCALL	_updateDisplay,_dataCtrl
	FNCALL	_updateDisplay,_instCtrl
	FNCALL	_updateDisplay,_printString
	FNCALL	_updateDisplay,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_printString,_dataCtrl
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftge
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_initLCD,_instCtrl
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNCALL	_I2C_RepeatedStart,_I2C_Wait
	FNCALL	_I2C_Receive,_I2C_Wait
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	global	exp@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xf0
	retlw	0xff
	retlw	0xbe

	retlw	0xe2
	retlw	0xa9
	retlw	0x3e

	retlw	0x83
	retlw	0x76
	retlw	0xbe

	retlw	0xae
	retlw	0x2b
	retlw	0x3e

	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0xd2
	retlw	0x13
	retlw	0x3d

	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global __end_oflog@coeff
__end_oflog@coeff:
	global	_dpowers
	global	exp@coeff
	global	log@coeff
	global	_errno
	global	_relative_humidity
	global	_temperature
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_RD0
_RD0	set	0x40
	global	_RD2
_RD2	set	0x42
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_ACKDT
_ACKDT	set	0x48D
	global	_ACKEN
_ACKEN	set	0x48C
	global	_PEN
_PEN	set	0x48A
	global	_RCEN
_RCEN	set	0x48B
	global	_RSEN
_RSEN	set	0x489
	global	_SEN
_SEN	set	0x488
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
	global __stringdata
__stringdata:
	
STR_5:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_6	equ	STR_4+0
STR_2	equ	STR_1+0
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
	file	"LE7-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_errno:
       ds      2

_relative_humidity:
       ds      2

_temperature:
       ds      2

	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_exp$653
_exp$653:	; 3 bytes @ 0x0
	ds	3
	global	_exp$446
_exp$446:	; 3 bytes @ 0x3
	ds	3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x6
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x8
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0x9
	global	pow@x
pow@x:	; 3 bytes @ 0x9
	ds	3
	global	pow@y
pow@y:	; 3 bytes @ 0xC
	ds	3
??_pow:	; 0 bytes @ 0xF
	ds	1
	global	_pow$651
_pow$651:	; 3 bytes @ 0x10
	ds	3
	global	_pow$652
_pow$652:	; 3 bytes @ 0x13
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x16
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x17
	ds	4
??_main:	; 0 bytes @ 0x1B
	ds	3
	global	_main$650
_main$650:	; 3 bytes @ 0x1E
	ds	3
	global	main@temp_humidity
main@temp_humidity:	; 2 bytes @ 0x21
	ds	2
	global	main@temp_temperature
main@temp_temperature:	; 2 bytes @ 0x23
	ds	2
	global	main@resolution
main@resolution:	; 2 bytes @ 0x25
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x27
	ds	2
	global	main@MSB
main@MSB:	; 2 bytes @ 0x29
	ds	2
	global	main@LSB
main@LSB:	; 2 bytes @ 0x2B
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
?_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_Receive:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_updateDisplay:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
??_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
??_dataCtrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_I2C_Receive:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	dataCtrl@data
dataCtrl@data:	; 1 bytes @ 0x0
	global	instCtrl@inst
instCtrl@inst:	; 1 bytes @ 0x0
	global	I2C_Send@data
I2C_Send@data:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	global	I2C_Receive@ack
I2C_Receive@ack:	; 1 bytes @ 0x1
	global	dataCtrl@i
dataCtrl@i:	; 2 bytes @ 0x1
	global	instCtrl@i
instCtrl@i:	; 2 bytes @ 0x1
	ds	1
	global	I2C_Receive@temp
I2C_Receive@temp:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_initLCD:	; 0 bytes @ 0x3
?_printString:	; 0 bytes @ 0x3
??___ftneg:	; 0 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	printString@string
printString@string:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_frexp:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??_printString:	; 0 bytes @ 0x5
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	ds	1
??___lltoft:	; 0 bytes @ 0xC
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
??_sprintf:	; 0 bytes @ 0x3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	3
??___ftdiv:	; 0 bytes @ 0x6
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x8
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x9
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xE
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
??_updateDisplay:	; 0 bytes @ 0xF
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	global	updateDisplay@humidity
updateDisplay@humidity:	; 10 bytes @ 0x10
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	global	updateDisplay@temp
updateDisplay@temp:	; 10 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x20
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x20
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x23
	ds	1
	global	updateDisplay@i
updateDisplay@i:	; 2 bytes @ 0x24
	ds	2
??___ftadd:	; 0 bytes @ 0x26
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2C
	ds	1
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x2D
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2D
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2D
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2D
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2D
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x2D
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x30
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x30
	ds	1
??___fttol:	; 0 bytes @ 0x31
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x31
	ds	2
??_eval_poly:	; 0 bytes @ 0x33
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x34
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x35
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x36
	ds	1
	global	?_log
?_log:	; 3 bytes @ 0x37
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x37
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x37
	global	log@x
log@x:	; 3 bytes @ 0x37
	ds	3
??_log:	; 0 bytes @ 0x3A
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3A
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x3A
	ds	1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x3B
	global	log@exponent
log@exponent:	; 2 bytes @ 0x3B
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x3B
	ds	1
??_ldexp:	; 0 bytes @ 0x3C
	ds	2
	global	_ldexp$483
_ldexp$483:	; 3 bytes @ 0x3E
	ds	1
??___altoft:	; 0 bytes @ 0x3F
	ds	2
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x41
	ds	1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x42
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x43
	global	floor@x
floor@x:	; 3 bytes @ 0x43
	ds	3
??_floor:	; 0 bytes @ 0x46
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x47
	ds	3
	global	floor@expon
floor@expon:	; 2 bytes @ 0x4A
	ds	2
	global	?_exp
?_exp:	; 3 bytes @ 0x4C
	global	exp@x
exp@x:	; 3 bytes @ 0x4C
	ds	3
??_exp:	; 0 bytes @ 0x4F
	ds	1
;!
;!Data Sizes:
;!    Strings     33
;!    Constant    67
;!    Data        0
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     80      80
;!    BANK1            80     45      51
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_6(CODE[3]), STR_4(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> updateDisplay@temp(BANK0[10]), updateDisplay@humidity(BANK0[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S161$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    printString@string	PTR unsigned char  size(2) Largest target is 14
;!		 -> updateDisplay@temp(BANK0[10]), STR_5(CODE[14]), updateDisplay@humidity(BANK0[10]), STR_3(CODE[11]), 
;!		 -> STR_2(CODE[5]), STR_1(CODE[5]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___awtoft
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _printString->_dataCtrl
;!    _pow->___lltoft
;!    _log->___awtoft
;!    _exp->___awtoft
;!    ___fttol->___awtoft
;!    ___ftmul->___awtoft
;!    ___ftsub->___awtoft
;!    ___ftadd->___awtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    ___lltoft->___ftpack
;!    _initLCD->_instCtrl
;!
;!Critical Paths under _main in BANK0
;!
;!    _updateDisplay->_sprintf
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___altoft
;!    ___fttol->___ftadd
;!    ___altoft->___fttol
;!    _eval_poly->___ftadd
;!    ___ftmul->___ftdiv
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftmul
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_pow
;!    _pow->_exp
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                18    18      0   67686
;!                                             27 BANK1     18    18      0
;!                        _I2C_Receive
;!                  _I2C_RepeatedStart
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                            _initLCD
;!                    _init_I2C_Master
;!                                _pow
;!                      _updateDisplay
;! ---------------------------------------------------------------------------------
;! (1) _updateDisplay                                       23    23      0    1891
;!                                             15 BANK0     23    23      0
;!                           _dataCtrl
;!                           _instCtrl
;!                        _printString
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             15    12      3    1170
;!                                              0 BANK0     15    12      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _printString                                          2     0      2     431
;!                                              3 COMMON     2     0      2
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (3) _dataCtrl                                             3     3      0      68
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _pow                                                 18    12      6   53953
;!                                              9 BANK1     18    12      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (2) _log                                                  6     3      3   17124
;!                                             55 BANK0      6     3      3
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) _exp                                                 13    10      3   29651
;!                                             76 BANK0      4     1      3
;!                                              0 BANK1      9     9      0
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _ldexp                                               10     5      5    1725
;!                                             55 BANK0     10     5      5
;!                             ___ftge
;!                            ___ftneg
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     257
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _floor                                                9     6      3    7699
;!                                             67 BANK0      9     6      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _frexp                                                6     2      4     436
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___fttol                                             14    10      4     570
;!                                             45 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                              12     6      6    1090
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (4) ___altoft                                             8     4      4    1954
;!                                             59 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _eval_poly                                           10     4      6    6912
;!                                             45 BANK0     10     4      6
;!                             ___bmul
;!                            ___ftadd
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    2911
;!                                             16 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___bmul                                               4     3      1     160
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    3496
;!                                             45 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    3345
;!                                             32 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2361
;!                                              0 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    2172
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1885
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    1763
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0      68
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             3     3      0      68
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Start                                            0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Send                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_RepeatedStart                                    0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Receive                                          3     3      0      45
;!                                              0 COMMON     3     3      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Receive
;!     _I2C_Wait
;!   _I2C_RepeatedStart
;!     _I2C_Wait
;!   _I2C_Send
;!     _I2C_Wait
;!   _I2C_Start
;!     _I2C_Wait
;!   _I2C_Stop
;!     _I2C_Wait
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___bmul (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftpack (ARG)
;!     _frexp (ARG)
;!   ___ftdiv
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!     _frexp (ARG)
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!   _initLCD
;!     _instCtrl
;!   _init_I2C_Master
;!   _pow
;!     ___ftge
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!     ___lltoft
;!       ___ftpack
;!     _exp
;!       ___awtoft
;!         ___ftpack
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       ___fttol
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       _floor
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftge
;!         ___fttol
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         _frexp
;!       _ldexp
;!         ___ftge
;!         ___ftneg
;!         _eval_poly (ARG)
;!           ___bmul
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       _log (ARG)
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftge
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___bmul
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         _frexp
;!     _log
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       _frexp
;!   _updateDisplay
;!     _dataCtrl
;!     _instCtrl
;!     _printString
;!       _dataCtrl
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
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
;!ABS                  0      0      91       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     2D      33       7       63.8%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      91      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   39[BANK1 ] int 
;;  temp_tempera    2   35[BANK1 ] int 
;;  temp_humidit    2   33[BANK1 ] int 
;;  LSB             2   43[BANK1 ] int 
;;  MSB             2   41[BANK1 ] int 
;;  resolution      2   37[BANK1 ] int 
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
;;      Locals:         0       0      15       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Receive
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		_initLCD
;;		_init_I2C_Master
;;		_pow
;;		_updateDisplay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	73
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	78
	
l2355:	
;LE7-3.c: 78: int resolution = pow(2, 14);
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x60
	movwf	(pow@y+1)^080h
	movlw	0x41
	movwf	(pow@y+2)^080h
	movlw	0x0
	movwf	(pow@x)^080h
	movlw	0x0
	movwf	(pow@x+1)^080h
	movlw	0x40
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	movwf	(_main$650)^080h
	movf	(1+(?_pow))^080h,w
	movwf	(_main$650+1)^080h
	movf	(2+(?_pow))^080h,w
	movwf	(_main$650+2)^080h
	
l2357:	
;LE7-3.c: 78: int resolution = pow(2, 14);
	movf	(_main$650)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$650+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$650+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@resolution+1)^080h
	addwf	(main@resolution+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@resolution)^080h
	addwf	(main@resolution)^080h

	line	79
	
l2359:	
;LE7-3.c: 79: int MSB = 0x00; int LSB = 0x00;
	clrf	(main@MSB)^080h
	clrf	(main@MSB+1)^080h
	
l2361:	
	clrf	(main@LSB)^080h
	clrf	(main@LSB+1)^080h
	line	82
	
l2363:	
;LE7-3.c: 82: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	83
	
l2365:	
;LE7-3.c: 83: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	84
	
l2367:	
;LE7-3.c: 84: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	85
	
l2369:	
;LE7-3.c: 85: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	87
	
l2371:	
;LE7-3.c: 87: init_I2C_Master();
	fcall	_init_I2C_Master
	line	88
	
l2373:	
;LE7-3.c: 88: initLCD();
	fcall	_initLCD
	goto	l2375
	line	90
;LE7-3.c: 89: for(;;)
	
l73:	
	line	92
	
l2375:	
;LE7-3.c: 90: {
;LE7-3.c: 92: I2C_Start();
	fcall	_I2C_Start
	line	93
	
l2377:	
;LE7-3.c: 93: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	94
	
l2379:	
;LE7-3.c: 94: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	95
	
l2381:	
;LE7-3.c: 95: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	96
	
l2383:	
;LE7-3.c: 96: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	97
	
l2385:	
;LE7-3.c: 97: MSB = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@MSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@MSB+1)^080h
	line	98
	
l2387:	
;LE7-3.c: 98: LSB = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@LSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@LSB+1)^080h
	line	99
	
l2389:	
;LE7-3.c: 99: I2C_Stop();
	fcall	_I2C_Stop
	line	100
	
l2391:	
;LE7-3.c: 100: _delay((unsigned long)((200)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	4
movwf	((??_main+0)^080h+0+1),f
	movlw	186
movwf	((??_main+0)^080h+0),f
u2837:
	decfsz	((??_main+0)^080h+0),f
	goto	u2837
	decfsz	((??_main+0)^080h+0+1),f
	goto	u2837
	decfsz	((??_main+0)^080h+0+2),f
	goto	u2837
	nop
opt asmopt_on

	line	101
	
l2393:	
;LE7-3.c: 101: MSB = MSB << 6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@MSB+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@MSB)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	06h
	movwf	btemp+1
u2795:
	clrc
	rlf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,f
	decfsz	btemp+1,f
	goto	u2795
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@MSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@MSB+1)^080h
	line	102
	
l2395:	
;LE7-3.c: 102: LSB = LSB >> 2;
	movf	(main@LSB+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@LSB)^080h,w
	movwf	(??_main+0)^080h+0
	rlf	(??_main+0)^080h+1,w
	rrf	(??_main+0)^080h+1,f
	rrf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,w
	rrf	(??_main+0)^080h+1,f
	rrf	(??_main+0)^080h+0,f
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@LSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@LSB+1)^080h
	line	103
	
l2397:	
;LE7-3.c: 103: int temp_humidity = MSB | LSB;
	movf	(main@LSB)^080h,w
	iorwf	(main@MSB)^080h,w
	movwf	(main@temp_humidity)^080h
	movf	(main@LSB+1)^080h,w
	iorwf	(main@MSB+1)^080h,w
	movwf	1+(main@temp_humidity)^080h
	line	104
	
l2399:	
;LE7-3.c: 104: relative_humidity = (int)(-6 + (125 * ((float)temp_humidity / (float)resolution)));
	movf	(main@temp_humidity+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@temp_humidity)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@resolution+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@resolution)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_relative_humidity+1)^080h
	addwf	(_relative_humidity+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_relative_humidity)^080h
	addwf	(_relative_humidity)^080h

	line	105
	
l2401:	
;LE7-3.c: 105: MSB = 0x00; LSB = 0x00;
	clrf	(main@MSB)^080h
	clrf	(main@MSB+1)^080h
	
l2403:	
	clrf	(main@LSB)^080h
	clrf	(main@LSB+1)^080h
	line	106
	
l2405:	
;LE7-3.c: 106: _delay((unsigned long)((200)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)^080h+0+2),f
movlw	4
movwf	((??_main+0)^080h+0+1),f
	movlw	186
movwf	((??_main+0)^080h+0),f
u2847:
	decfsz	((??_main+0)^080h+0),f
	goto	u2847
	decfsz	((??_main+0)^080h+0+1),f
	goto	u2847
	decfsz	((??_main+0)^080h+0+2),f
	goto	u2847
	nop
opt asmopt_on

	line	109
	
l2407:	
;LE7-3.c: 109: I2C_Start();
	fcall	_I2C_Start
	line	110
	
l2409:	
;LE7-3.c: 110: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	111
	
l2411:	
;LE7-3.c: 111: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	112
	
l2413:	
;LE7-3.c: 112: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	113
	
l2415:	
;LE7-3.c: 113: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	114
	
l2417:	
;LE7-3.c: 114: MSB = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@MSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@MSB+1)^080h
	line	115
	
l2419:	
;LE7-3.c: 115: LSB = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@LSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@LSB+1)^080h
	line	116
	
l2421:	
;LE7-3.c: 116: I2C_Stop();
	fcall	_I2C_Stop
	line	117
	
l2423:	
;LE7-3.c: 117: MSB = MSB << 6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@MSB+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@MSB)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	06h
	movwf	btemp+1
u2805:
	clrc
	rlf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,f
	decfsz	btemp+1,f
	goto	u2805
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@MSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@MSB+1)^080h
	line	118
	
l2425:	
;LE7-3.c: 118: LSB = LSB >> 2;
	movf	(main@LSB+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@LSB)^080h,w
	movwf	(??_main+0)^080h+0
	rlf	(??_main+0)^080h+1,w
	rrf	(??_main+0)^080h+1,f
	rrf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,w
	rrf	(??_main+0)^080h+1,f
	rrf	(??_main+0)^080h+0,f
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@LSB)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@LSB+1)^080h
	line	119
	
l2427:	
;LE7-3.c: 119: int temp_temperature = MSB | LSB;
	movf	(main@LSB)^080h,w
	iorwf	(main@MSB)^080h,w
	movwf	(main@temp_temperature)^080h
	movf	(main@LSB+1)^080h,w
	iorwf	(main@MSB+1)^080h,w
	movwf	1+(main@temp_temperature)^080h
	line	120
	
l2429:	
;LE7-3.c: 120: temperature = (int)(-46.85 + (175.72 * ((float)temp_temperature / (float)resolution)));
	movf	(main@temp_temperature+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@temp_temperature)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@resolution+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@resolution)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	movlw	0xb8
	movwf	(___ftmul@f1)
	movlw	0x2f
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x66
	movwf	(___ftadd@f1)
	movlw	0x3b
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_temperature+1)^080h
	addwf	(_temperature+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_temperature)^080h
	addwf	(_temperature)^080h

	line	123
	
l2431:	
;LE7-3.c: 123: updateDisplay();
	fcall	_updateDisplay
	line	124
	
l2433:	
;LE7-3.c: 124: _delay((unsigned long)((200)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	4
movwf	((??_main+0)^080h+0+1),f
	movlw	186
movwf	((??_main+0)^080h+0),f
u2857:
	decfsz	((??_main+0)^080h+0),f
	goto	u2857
	decfsz	((??_main+0)^080h+0+1),f
	goto	u2857
	decfsz	((??_main+0)^080h+0+2),f
	goto	u2857
	nop
opt asmopt_on

	line	125
	
l2435:	
;LE7-3.c: 125: for(int i = 0; i < 1000; i++);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l2437:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2815
	movlw	low(03E8h)
	subwf	(main@i)^080h,w
u2815:

	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l2441
u2810:
	goto	l2375
	
l2439:	
	goto	l2375
	
l74:	
	
l2441:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l2443:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2825
	movlw	low(03E8h)
	subwf	(main@i)^080h,w
u2825:

	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l2441
u2820:
	goto	l2375
	
l75:	
	line	126
;LE7-3.c: 126: }
	goto	l2375
	
l76:	
	line	127
	
l77:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateDisplay

;; *************** function _updateDisplay *****************
;; Defined at:
;;		line 138 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   36[BANK0 ] int 
;;  temp           10   26[BANK0 ] unsigned char [10]
;;  humidity       10   16[BANK0 ] unsigned char [10]
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
;;      Locals:         0      22       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      23       0       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;;		_printString
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	138
global __ptext1
__ptext1:	;psect for function _updateDisplay
psect	text1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	138
	global	__size_of_updateDisplay
	__size_of_updateDisplay	equ	__end_of_updateDisplay-_updateDisplay
	
_updateDisplay:	
;incstack = 0
	opt	stack 5
; Regs used in _updateDisplay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	141
	
l2323:	
;LE7-3.c: 141: instCtrl(0x8A);
	movlw	(08Ah)
	fcall	_instCtrl
	line	142
	
l2325:	
;LE7-3.c: 142: printString("    ");
	movlw	low((STR_1)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	143
	
l2327:	
;LE7-3.c: 143: instCtrl(0xCC);
	movlw	(0CCh)
	fcall	_instCtrl
	line	144
;LE7-3.c: 144: printString("    ");
	movlw	low((STR_2)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	147
	
l2329:	
;LE7-3.c: 147: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	148
	
l2331:	
;LE7-3.c: 148: printString("Humidity: ");
	movlw	low((STR_3)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	150
	
l2333:	
;LE7-3.c: 149: char humidity[10];
;LE7-3.c: 150: sprintf(humidity, "%d", relative_humidity);
	movlw	((STR_4)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateDisplay+0)+0
	movf	(??_updateDisplay+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_relative_humidity+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_relative_humidity)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(updateDisplay@humidity)&0ffh
	fcall	_sprintf
	line	151
	
l2335:	
;LE7-3.c: 151: printString(humidity);
	movlw	(updateDisplay@humidity&0ffh)
	movwf	(printString@string)
	movlw	(0x0)
	movwf	(printString@string+1)
	fcall	_printString
	line	152
;LE7-3.c: 152: dataCtrl('%');
	movlw	(025h)
	fcall	_dataCtrl
	line	155
;LE7-3.c: 155: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	156
	
l2337:	
;LE7-3.c: 156: printString("Temperature: ");
	movlw	low((STR_5)-__stringbase)
	movwf	(printString@string)
	movlw	80h
	movwf	(printString@string+1)
	fcall	_printString
	line	158
	
l2339:	
;LE7-3.c: 157: char temp[10];
;LE7-3.c: 158: sprintf(temp, "%d", temperature);
	movlw	((STR_6)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateDisplay+0)+0
	movf	(??_updateDisplay+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_temperature+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_temperature)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(updateDisplay@temp)&0ffh
	fcall	_sprintf
	line	159
	
l2341:	
;LE7-3.c: 159: printString(temp);
	movlw	(updateDisplay@temp&0ffh)
	movwf	(printString@string)
	movlw	(0x0)
	movwf	(printString@string+1)
	fcall	_printString
	line	160
	
l2343:	
;LE7-3.c: 160: dataCtrl('C');
	movlw	(043h)
	fcall	_dataCtrl
	line	161
	
l2345:	
;LE7-3.c: 161: for(int i = 0; i < 1000; i++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(updateDisplay@i)
	clrf	(updateDisplay@i+1)
	
l2347:	
	movf	(updateDisplay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2775
	movlw	low(03E8h)
	subwf	(updateDisplay@i),w
u2775:

	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2351
u2770:
	goto	l82
	
l2349:	
	goto	l82
	
l80:	
	
l2351:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(updateDisplay@i),f
	skipnc
	incf	(updateDisplay@i+1),f
	movlw	high(01h)
	addwf	(updateDisplay@i+1),f
	
l2353:	
	movf	(updateDisplay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2785
	movlw	low(03E8h)
	subwf	(updateDisplay@i),w
u2785:

	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l2351
u2780:
	goto	l82
	
l81:	
	line	162
	
l82:	
	return
	opt stack 0
GLOBAL	__end_of_updateDisplay
	__end_of_updateDisplay:
	signat	_updateDisplay,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> updateDisplay@temp(10), updateDisplay@humidity(10), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(3), STR_4(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   13[BANK0 ] PTR unsigned char 
;;		 -> updateDisplay@temp(10), updateDisplay@humidity(10), 
;;  _val            4    9[BANK0 ] struct .
;;  c               1   14[BANK0 ] char 
;;  prec            1    8[BANK0 ] char 
;;  flag            1    7[BANK0 ] unsigned char 
;;  ap              1    6[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
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
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext2
__ptext2:	;psect for function _sprintf
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l2093:	
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
	goto	l2145
	
l135:	
	line	547
	
l2095:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2491
	goto	u2490
u2491:
	goto	l2101
u2490:
	line	550
	
l2097:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2099:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l2145
	line	552
	
l136:	
	line	557
	
l2101:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2105
	line	646
;doprnt.c: 646: case 0:
	
l138:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2147
	line	706
;doprnt.c: 706: case 'd':
	
l140:	
	goto	l2107
	line	707
	
l141:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2107
	line	811
;doprnt.c: 811: default:
	
l143:	
	line	822
;doprnt.c: 822: continue;
	goto	l2145
	line	831
	
l2103:	
;doprnt.c: 831: }
	goto	l2107
	line	644
	
l137:	
	
l2105:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2147
	xorlw	100^0	; case 100
	skipnz
	goto	l2107
	xorlw	105^100	; case 105
	skipnz
	goto	l2107
	goto	l2145
	opt asmopt_on

	line	831
	
l142:	
	line	1268
	
l2107:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2109:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l2111:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l2117
u2500:
	line	1271
	
l2113:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l2115:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2117
	line	1273
	
l144:	
	line	1314
	
l2117:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2121
u2510:
	goto	l2129
	
l2119:	
	goto	l2129
	line	1315
	
l145:	
	
l2121:	
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
	goto	u2525
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2525:
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l2125
u2520:
	goto	l2129
	line	1316
	
l2123:	
;doprnt.c: 1316: break;
	goto	l2129
	
l147:	
	line	1314
	
l2125:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2127:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l2121
u2530:
	goto	l2129
	
l146:	
	line	1447
	
l2129:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2135
u2540:
	line	1448
	
l2131:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2133:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2135
	
l148:	
	line	1481
	
l2135:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2143
	
l150:	
	line	1498
	
l2137:	
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
	
l2139:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2141:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2143
	line	1534
	
l149:	
	line	1483
	
l2143:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l2137
u2550:
	goto	l2145
	
l151:	
	goto	l2145
	line	1542
	
l134:	
	line	545
	
l2145:	
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
	goto	u2561
	goto	u2560
u2561:
	goto	l2095
u2560:
	goto	l2147
	
l152:	
	goto	l2147
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l139:	
	line	1547
	
l2147:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l153
	line	1549
	
l2149:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l153:	
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
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1963:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l1981
u2310:
	line	14
	
l1965:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1971
	
l578:	
	line	16
	
l1967:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2325
	line	17
	
l1969:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1971
	line	18
	
l577:	
	line	15
	
l1971:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l1967
u2330:
	goto	l1973
	
l579:	
	goto	l1973
	line	19
	
l580:	
	line	20
	
l1973:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2345
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1977
u2340:
	line	21
	
l1975:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1977
	
l581:	
	line	22
	
l1977:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	23
	
l1979:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l1973
u2360:
	goto	l1981
	
l582:	
	goto	l1981
	line	24
	
l576:	
	line	25
	
l1981:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l583
	
l1983:	
	line	26
	
l583:	
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1937:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1939:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l1959
u2240:
	line	16
	
l1941:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1947
	
l568:	
	line	18
	
l1943:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2255
	line	19
	
l1945:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1947
	line	20
	
l567:	
	line	17
	
l1947:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l1943
u2260:
	goto	l1949
	
l569:	
	goto	l1949
	line	21
	
l570:	
	line	22
	
l1949:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2275
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2285
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2285:
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1955
u2280:
	line	24
	
l1951:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1953:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1955
	line	26
	
l571:	
	line	27
	
l1955:	
	movlw	01h
	
u2295:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2295
	line	28
	
l1957:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l1949
u2300:
	goto	l1959
	
l572:	
	goto	l1959
	line	29
	
l566:	
	line	30
	
l1959:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l573
	
l1961:	
	line	31
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_printString

;; *************** function _printString *****************
;; Defined at:
;;		line 218 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  string          2    3[COMMON] PTR unsigned char 
;;		 -> updateDisplay@temp(10), STR_5(14), updateDisplay@humidity(10), STR_3(11), 
;;		 -> STR_2(5), STR_1(5), 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	218
global __ptext5
__ptext5:	;psect for function _printString
psect	text5
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	218
	global	__size_of_printString
	__size_of_printString	equ	__end_of_printString-_printString
	
_printString:	
;incstack = 0
	opt	stack 5
; Regs used in _printString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	220
	
l2085:	
;LE7-3.c: 220: while(*string)
	goto	l2091
	
l99:	
	line	222
	
l2087:	
;LE7-3.c: 221: {
;LE7-3.c: 222: dataCtrl(*string++);
	movf	(printString@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printString@string),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCtrl
	
l2089:	
	movlw	01h
	addwf	(printString@string),f
	skipnc
	incf	(printString@string+1),f
	goto	l2091
	line	223
	
l98:	
	line	220
	
l2091:	
	movf	(printString@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printString@string),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2087
u2480:
	goto	l101
	
l100:	
	line	224
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_printString
	__end_of_printString:
	signat	_printString,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 188 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;;  i               2    1[COMMON] int 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updateDisplay
;;		_printString
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	188
global __ptext6
__ptext6:	;psect for function _dataCtrl
psect	text6
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	188
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+btemp+1]
;dataCtrl@data stored from wreg
	movwf	(dataCtrl@data)
	line	190
	
l1861:	
;LE7-3.c: 190: RD0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7	;volatile
	line	191
	
l1863:	
;LE7-3.c: 191: PORTB = data;
	movf	(dataCtrl@data),w
	movwf	(6)	;volatile
	line	192
	
l1865:	
;LE7-3.c: 192: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	193
	
l1867:	
;LE7-3.c: 193: for(int i = 0; i < 1000; i++);
	clrf	(dataCtrl@i)
	clrf	(dataCtrl@i+1)
	
l1869:	
	movf	(dataCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2135
	movlw	low(03E8h)
	subwf	(dataCtrl@i),w
u2135:

	skipc
	goto	u2131
	goto	u2130
u2131:
	goto	l1873
u2130:
	goto	l89
	
l1871:	
	goto	l89
	
l88:	
	
l1873:	
	movlw	low(01h)
	addwf	(dataCtrl@i),f
	skipnc
	incf	(dataCtrl@i+1),f
	movlw	high(01h)
	addwf	(dataCtrl@i+1),f
	
l1875:	
	movf	(dataCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2145
	movlw	low(03E8h)
	subwf	(dataCtrl@i),w
u2145:

	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1873
u2140:
	
l89:	
	line	194
;LE7-3.c: 194: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	195
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    9[BANK1 ] int 
;;  y               3   12[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  yi              4   23[BANK1 ] unsigned long 
;;  sign            1   22[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    9[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
global __ptext7
__ptext7:	;psect for function _pow
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
;incstack = 0
	opt	stack 3
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l2243:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l2245:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2253
u2690:
	line	11
	
l2247:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(pow@y)^080h,w
	movwf	(___ftge@ff2)
	movf	(pow@y+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(pow@y+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2701
	goto	u2700
u2701:
	goto	l598
u2700:
	line	12
	
l2249:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	13
	
l598:	
	line	14
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l599
	
l2251:	
	goto	l599
	line	15
	
l597:	
	line	16
	
l2253:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2259
u2710:
	line	17
	
l2255:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l599
	
l2257:	
	goto	l599
	
l600:	
	line	18
	
l2259:	
	movf	(pow@x)^080h,w
	movwf	(___ftge@ff1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2721
	goto	u2720
u2721:
	goto	l2271
u2720:
	line	19
	
l2261:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(pow@yi+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(pow@yi+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(pow@yi)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u2735
	movf	(pow@y+1)^080h,w
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u2735
	movf	(pow@y)^080h,w
	xorwf	(0+(?___lltoft)),w
u2735:
	skipnz
	goto	u2731
	goto	u2730
u2731:
	goto	l2267
u2730:
	line	21
	
l2263:	
	movlw	low(021h)
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	22
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l599
	
l2265:	
	goto	l599
	line	23
	
l602:	
	line	24
	
l2267:	
	movf	(pow@yi)^080h,w
	andlw	01h
	movwf	(??_pow+0)^080h+0
	movf	(??_pow+0)^080h+0,w
	movwf	(pow@sign)^080h
	line	25
	
l2269:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(pow@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(pow@x+2)^080h
	goto	l2271
	line	26
	
l601:	
	line	27
	
l2271:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$651)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$651+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$651+2)^080h
	
l2273:	
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$651)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$651+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$651+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$652)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$652+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$652+2)^080h
	
l2275:	
	movf	(_pow$652)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$652+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$652+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x+2)
	fcall	_exp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	line	28
	
l2277:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u2740
	goto	l603
u2740:
	line	29
	
l2279:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movf	(1+(?___ftneg)),w
	movwf	(?_pow+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(?_pow+2)^080h
	goto	l599
	
l2281:	
	goto	l599
	
l603:	
	line	30
	line	31
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   55[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   59[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
global __ptext8
__ptext8:	;psect for function _log
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
;incstack = 0
	opt	stack 3
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l2167:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x),w
	movwf	(___ftge@ff1)
	movf	(log@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(log@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2611
	goto	u2610
u2611:
	goto	l2173
u2610:
	line	25
	
l2169:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l677
	
l2171:	
	goto	l677
	line	27
	
l676:	
	line	28
	
l2173:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u2621
	goto	u2620
u2621:
	goto	l2179
u2620:
	line	29
	
l2175:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	30
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l677
	
l2177:	
	goto	l677
	line	31
	
l678:	
	line	32
	
l2179:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movlw	(log@exponent)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(frexp@eptr)
	movf	(log@x),w
	movwf	(frexp@value)
	movf	(log@x+1),w
	movwf	(frexp@value+1)
	movf	(log@x+2),w
	movwf	(frexp@value+2)
	fcall	_frexp
	movf	(0+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?_frexp)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_frexp)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(log@x)
	movf	(1+(?___ftadd)),w
	movwf	(log@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(log@x+2)
	line	33
	
l2181:	
	movlw	low(-1)
	addwf	(log@exponent),f
	skipnc
	incf	(log@exponent+1),f
	movlw	high(-1)
	addwf	(log@exponent+1),f
	line	34
	
l2183:	
	movf	(log@x),w
	movwf	(eval_poly@x)
	movf	(log@x+1),w
	movwf	(eval_poly@x+1)
	movf	(log@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((log@coeff)-__stringbase)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(08h)
	movwf	(eval_poly@n)
	movlw	high(08h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	line	35
	
l2185:	
	movf	(log@x),w
	movwf	(___ftadd@f1)
	movf	(log@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(log@x+2),w
	movwf	(___ftadd@f1+2)
	movlw	0x72
	movwf	(___ftmul@f1)
	movlw	0x31
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(log@exponent+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(log@exponent),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l677
	
l2187:	
	line	36
	
l677:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   76[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2    6[BANK1 ] int 
;;  sign            1    8[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   76[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       9       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
global __ptext9
__ptext9:	;psect for function _exp
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
;incstack = 0
	opt	stack 3
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l2189:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l2195
u2630:
	line	32
	
l2191:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l619
	
l2193:	
	goto	l619
	
l618:	
	line	34
	
l2195:	
	movlw	0x72
	movwf	(___ftge@ff1)
	movlw	0x31
	movwf	(___ftge@ff1+1)
	movlw	0x44
	movwf	(___ftge@ff1+2)
	movf	(exp@x),w
	movwf	(___ftge@ff2)
	movf	(exp@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2641
	goto	u2640
u2641:
	goto	l2205
u2640:
	line	35
	
l2197:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	36
	goto	l2201
	
l2199:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l619
	
l622:	
	
l2201:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l619
	
l624:	
	goto	l619
	
l2203:	
	goto	l619
	line	37
	
l620:	
	line	38
	
l2205:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x49
	movwf	(___ftge@ff2)
	movlw	0x3a
	movwf	(___ftge@ff2+1)
	movlw	0xc4
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2651
	goto	u2650
u2651:
	goto	l2211
u2650:
	line	39
	
l2207:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	40
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l619
	
l2209:	
	goto	l619
	line	41
	
l625:	
	line	43
	
l2211:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	movlw	0
	btfss	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l2213:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u2660
	goto	l2217
u2660:
	line	45
	
l2215:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftneg@f1)
	movf	(exp@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	goto	l2217
	
l626:	
	line	46
	
l2217:	
	movlw	0xaa
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xb8
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(exp@x),w
	movwf	(___ftmul@f2)
	movf	(exp@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(exp@x)
	movf	(1+(?___ftmul)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(exp@x+2)
	line	47
	
l2219:	
	movf	(exp@x),w
	movwf	(floor@x)
	movf	(exp@x+1),w
	movwf	(floor@x+1)
	movf	(exp@x+2),w
	movwf	(floor@x+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$653)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$653+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$653+2)^080h
	
l2221:	
	movf	(_exp$653)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$653+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$653+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent+1)^080h
	addwf	(exp@exponent+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent)^080h
	addwf	(exp@exponent)^080h

	line	48
	
l2223:	
	movf	(exp@exponent+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(exp@exponent)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(exp@x),w
	movwf	(___ftsub@f1)
	movf	(exp@x+1),w
	movwf	(___ftsub@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	movwf	(exp@x)
	movf	(1+(?___ftsub)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(exp@x+2)
	line	49
	
l2225:	
	movf	(exp@x),w
	movwf	(eval_poly@x)
	movf	(exp@x+1),w
	movwf	(eval_poly@x+1)
	movf	(exp@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((exp@coeff)-__stringbase)&0ffh
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(09h)
	movwf	(eval_poly@n)
	movlw	high(09h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(ldexp@value)
	movf	(1+(?_eval_poly)),w
	movwf	(ldexp@value+1)
	movf	(2+(?_eval_poly)),w
	movwf	(ldexp@value+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp+1)
	addwf	(ldexp@newexp+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp)
	addwf	(ldexp@newexp)

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	movwf	(exp@x)
	movf	(1+(?_ldexp)),w
	movwf	(exp@x+1)
	movf	(2+(?_ldexp)),w
	movwf	(exp@x+2)
	line	50
	
l2227:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@sign)^080h,w
	skipz
	goto	u2670
	goto	l627
u2670:
	goto	l2233
	line	52
	
l2229:	
	goto	l2233
	
l2231:	
	movlw	0x0
	movwf	(_exp$446)^080h
	movlw	0x80
	movwf	(_exp$446+1)^080h
	movlw	0x7f
	movwf	(_exp$446+2)^080h
	goto	l632
	
l630:	
	
l2233:	
	movlw	0xff
	movwf	(_exp$446)^080h
	movlw	0x7f
	movwf	(_exp$446+1)^080h
	movlw	0x7f
	movwf	(_exp$446+2)^080h
	
l632:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$446+2)^080h,w
	skipz
	goto	u2685
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$446+1)^080h,w
	skipz
	goto	u2685
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$446)^080h,w
u2685:
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2239
u2680:
	line	53
	
l2235:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l619
	
l2237:	
	goto	l619
	
l628:	
	line	54
	
l2239:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(exp@x),w
	movwf	(___ftdiv@f2)
	movf	(exp@x+1),w
	movwf	(___ftdiv@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?_exp)
	movf	(1+(?___ftdiv)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_exp+2)
	goto	l619
	
l2241:	
	goto	l619
	line	55
	
l627:	
	line	56
	line	57
	
l619:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   55[BANK0 ] unsigned char 
;;  newexp          2   58[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
global __ptext10
__ptext10:	;psect for function _ldexp
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
;incstack = 0
	opt	stack 4
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l2023:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2029
u2420:
	line	280
	
l2025:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l651
	
l2027:	
	goto	l651
	
l650:	
	line	282
	
l2029:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	287
	
l2031:	
	btfss	(ldexp@newexp+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l2039
u2430:
	line	288
	
l2033:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	289
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l651
	
l2035:	
	goto	l651
	line	290
	
l2037:	
	goto	l2065
	line	291
	
l652:	
	
l2039:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2445
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u2445:

	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l2063
u2440:
	line	292
	
l2041:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	293
	
l2043:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value),w
	movwf	(___ftge@ff1)
	movf	(ldexp@value+1),w
	movwf	(___ftge@ff1+1)
	movf	(ldexp@value+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2451
	goto	u2450
u2451:
	goto	l2059
u2450:
	goto	l2049
	line	294
	
l2045:	
	goto	l2049
	
l2047:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$483)
	movlw	0x80
	movwf	(_ldexp$483+1)
	movlw	0x7f
	movwf	(_ldexp$483+2)
	goto	l2051
	
l657:	
	
l2049:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$483)
	movlw	0x7f
	movwf	(_ldexp$483+1)
	movlw	0x7f
	movwf	(_ldexp$483+2)
	goto	l2051
	
l659:	
	
l2051:	
	movf	(_ldexp$483),w
	movwf	(___ftneg@f1)
	movf	(_ldexp$483+1),w
	movwf	(___ftneg@f1+1)
	movf	(_ldexp$483+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l651
	
l2053:	
	goto	l651
	
l2055:	
	goto	l2065
	line	295
	
l655:	
	line	296
	goto	l2059
	
l2057:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l651
	
l662:	
	
l2059:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l651
	
l664:	
	goto	l651
	
l2061:	
	goto	l651
	
l660:	
	line	297
	goto	l2065
	line	298
	
l654:	
	line	300
	
l2063:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	goto	l2065
	line	305
	
l665:	
	goto	l2065
	
l653:	
	line	306
	
l2065:	
	goto	l651
	
l2067:	
	line	307
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext11
__ptext11:	;psect for function ___ftneg
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l1789:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2011
	goto	u2010
u2011:
	goto	l1793
u2010:
	line	18
	
l1791:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1793
	
l469:	
	line	19
	
l1793:	
	goto	l470
	
l1795:	
	line	20
	
l470:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   67[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  i               3   71[BANK0 ] float 
;;  expon           2   74[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   67[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
global __ptext12
__ptext12:	;psect for function _floor
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 3
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l1985:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(frexp@value)
	movf	(floor@x+1),w
	movwf	(frexp@value+1)
	movf	(floor@x+2),w
	movwf	(frexp@value+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l1987:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l1999
u2370:
	line	20
	
l1989:	
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2381
	goto	u2380
u2381:
	goto	l1995
u2380:
	line	21
	
l1991:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l639
	
l1993:	
	goto	l639
	
l638:	
	line	22
	
l1995:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l639
	
l1997:	
	goto	l639
	line	23
	
l637:	
	line	24
	
l1999:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2003
u2390:
	line	25
	
l2001:	
	goto	l639
	
l640:	
	line	26
	
l2003:	
	movf	(floor@x),w
	movwf	(___fttol@f1)
	movf	(floor@x+1),w
	movwf	(___fttol@f1+1)
	movf	(floor@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(floor@i),w
	movwf	(___ftge@ff2)
	movf	(floor@i+1),w
	movwf	(___ftge@ff2+1)
	movf	(floor@i+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2401
	goto	u2400
u2401:
	goto	l2009
u2400:
	line	28
	
l2005:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(floor@i),w
	movwf	(___ftadd@f2)
	movf	(floor@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(floor@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l639
	
l2007:	
	goto	l639
	
l641:	
	line	29
	
l2009:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l639
	
l2011:	
	line	30
	
l639:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext13
__ptext13:	;psect for function _frexp
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 5
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l1841:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u2121
	goto	u2120
u2121:
	goto	l1849
u2120:
	line	257
	
l1843:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	258
	
l1845:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l647
	
l1847:	
	goto	l647
	line	259
	
l646:	
	line	261
	
l1849:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l1851:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l1853:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l1855:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l1857:	
	goto	l647
	
l1859:	
	line	274
	
l647:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   54[BANK0 ] unsigned long 
;;  exp1            1   58[BANK0 ] unsigned char 
;;  sign1           1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   45[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext14
__ptext14:	;psect for function ___fttol
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1797:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2021
	goto	u2020
u2021:
	goto	l1803
u2020:
	line	50
	
l1799:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l479
	
l1801:	
	goto	l479
	
l478:	
	line	51
	
l1803:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2035:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2030:
	addlw	-1
	skipz
	goto	u2035
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1805:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1807:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1809:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1811:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1813:	
	btfss	(___fttol@exp1),7
	goto	u2041
	goto	u2040
u2041:
	goto	l1823
u2040:
	line	57
	
l1815:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2051
	goto	u2050
u2051:
	goto	l1821
u2050:
	line	58
	
l1817:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l479
	
l1819:	
	goto	l479
	
l481:	
	goto	l1821
	line	59
	
l482:	
	line	60
	
l1821:	
	movlw	01h
u2065:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2065

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l1821
u2070:
	goto	l1833
	
l483:	
	line	62
	goto	l1833
	
l480:	
	line	63
	
l1823:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l1831
u2080:
	line	64
	
l1825:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l479
	
l1827:	
	goto	l479
	
l485:	
	line	65
	goto	l1831
	
l487:	
	line	66
	
l1829:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2095:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2095
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1831
	line	68
	
l486:	
	line	65
	
l1831:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2101
	goto	u2100
u2101:
	goto	l1829
u2100:
	goto	l1833
	
l488:	
	goto	l1833
	line	69
	
l484:	
	line	70
	
l1833:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2110
	goto	l1837
u2110:
	line	71
	
l1835:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1837
	
l489:	
	line	72
	
l1837:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l479
	
l1839:	
	line	73
	
l479:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_floor
;;		_ldexp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___ftge
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1719:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1821
	goto	u1820
u1821:
	goto	l1723
u1820:
	line	7
	
l1721:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1831
	goto	u1832
u1831:
	addwf	(??___ftge+0)+1,f
	
u1832:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1833
	goto	u1834
u1833:
	addwf	(??___ftge+0)+2,f
	
u1834:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l1723
	
l451:	
	line	8
	
l1723:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l1727
u1840:
	line	9
	
l1725:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1851
	goto	u1852
u1851:
	addwf	(??___ftge+0)+1,f
	
u1852:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1853
	goto	u1854
u1853:
	addwf	(??___ftge+0)+2,f
	
u1854:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l1727
	
l452:	
	line	10
	
l1727:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1729:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1731:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1865
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1865
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1865:
	skipnc
	goto	u1861
	goto	u1860
u1861:
	goto	l1735
u1860:
	
l1733:	
	clrc
	
	goto	l453
	
l1581:	
	
l1735:	
	setc
	
	goto	l453
	
l1583:	
	goto	l453
	
l1737:	
	line	13
	
l453:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   59[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   66[BANK0 ] unsigned char 
;;  exp             1   65[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   59[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext16
__ptext16:	;psect for function ___altoft
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l1631:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l1633:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l1635:	
	btfss	(___altoft@c+3),7
	goto	u1551
	goto	u1550
u1551:
	goto	l1641
u1550:
	line	48
	
l1637:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l1641
	line	50
	
l320:	
	line	52
	goto	l1641
	
l322:	
	line	53
	
l1639:	
	movlw	01h
u1565:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u1565

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l1641
	line	55
	
l321:	
	line	52
	
l1641:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l1639
u1570:
	goto	l1643
	
l323:	
	line	56
	
l1643:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l324
	
l1645:	
	line	57
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   45[BANK0 ] float 
;;  d               1   48[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   49[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   52[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
global __ptext17
__ptext17:	;psect for function _eval_poly
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
	opt	stack 3
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l2013:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(eval_poly@n),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l2017
	
l685:	
	line	10
	
l2015:	
	movlw	(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(-1)
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	high(-1)
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(___ftadd@f1)
	fcall	stringdir
	movwf	(___ftadd@f1+1)
	fcall	stringdir
	movwf	(___ftadd@f1+2)
	movf	(eval_poly@res),w
	movwf	(___ftmul@f1)
	movf	(eval_poly@res+1),w
	movwf	(___ftmul@f1+1)
	movf	(eval_poly@res+2),w
	movwf	(___ftmul@f1+2)
	movf	(eval_poly@x),w
	movwf	(___ftmul@f2)
	movf	(eval_poly@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(eval_poly@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	goto	l2017
	
l684:	
	line	9
	
l2017:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2015
u2410:
	goto	l2019
	
l686:	
	line	11
	
l2019:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l687
	
l2021:	
	line	12
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext18
__ptext18:	;psect for function ___ftmul
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1739:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l1745
u1870:
	line	68
	
l1741:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l459
	
l1743:	
	goto	l459
	
l458:	
	line	69
	
l1745:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l1751
u1880:
	line	70
	
l1747:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l459
	
l1749:	
	goto	l459
	
l460:	
	line	71
	
l1751:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1895:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1890:
	addlw	-1
	skipz
	goto	u1895
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1905:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1900:
	addlw	-1
	skipz
	goto	u1905
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1753:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1755:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1757:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1759:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1761:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1763
	line	135
	
l461:	
	line	136
	
l1763:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l1767
u1910:
	line	137
	
l1765:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1921
	addwf	(___ftmul@f3_as_product+1),f
u1921:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1922
	addwf	(___ftmul@f3_as_product+2),f
u1922:

	goto	l1767
	
l462:	
	line	138
	
l1767:	
	movlw	01h
u1935:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1935

	line	139
	
l1769:	
	movlw	01h
u1945:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1945
	line	140
	
l1771:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l1763
u1950:
	goto	l1773
	
l463:	
	line	143
	
l1773:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1775
	line	144
	
l464:	
	line	145
	
l1775:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1961
	goto	u1960
u1961:
	goto	l1779
u1960:
	line	146
	
l1777:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1971
	addwf	(___ftmul@f3_as_product+1),f
u1971:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1972
	addwf	(___ftmul@f3_as_product+2),f
u1972:

	goto	l1779
	
l465:	
	line	147
	
l1779:	
	movlw	01h
u1985:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1985

	line	148
	
l1781:	
	movlw	01h
u1995:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1995

	line	149
	
l1783:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l1775
u2000:
	goto	l1785
	
l466:	
	line	156
	
l1785:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l459
	
l1787:	
	line	157
	
l459:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext19
__ptext19:	;psect for function ___bmul
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l1615:	
	clrf	(___bmul@product)
	goto	l1617
	line	42
	
l254:	
	line	43
	
l1617:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l1621
u1530:
	line	44
	
l1619:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1621
	
l255:	
	line	45
	
l1621:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1623:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1625:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l1617
u1540:
	goto	l1627
	
l256:	
	line	50
	
l1627:	
	movf	(___bmul@product),w
	goto	l257
	
l1629:	
	line	51
	
l257:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   45[BANK0 ] float 
;;  f1              3   48[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext20
__ptext20:	;psect for function ___ftsub
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1931:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l1933:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l475
	
l1935:	
	line	25
	
l475:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;;  f2              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   44[BANK0 ] unsigned char 
;;  exp2            1   43[BANK0 ] unsigned char 
;;  sign            1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext21
__ptext21:	;psect for function ___ftadd
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l1649:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1580
	goto	l1655
u1580:
	
l1651:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l1659
u1590:
	
l1653:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l1659
u1600:
	goto	l1655
	
l412:	
	line	93
	
l1655:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l413
	
l1657:	
	goto	l413
	
l410:	
	line	94
	
l1659:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1610
	goto	l416
u1610:
	
l1661:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1621
	goto	u1620
u1621:
	goto	l1665
u1620:
	
l1663:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l1665
u1630:
	
l416:	
	line	95
	goto	l413
	
l414:	
	line	96
	
l1665:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1667:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l417
u1640:
	line	98
	
l1669:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l417:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l418
u1650:
	line	100
	
l1671:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l418:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1673:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1675:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1661
	goto	u1660
u1661:
	goto	l1687
u1660:
	goto	l1677
	line	109
	
l420:	
	line	110
	
l1677:	
	movlw	01h
u1675:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1675
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1679:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1681
	goto	u1680
u1681:
	goto	l1685
u1680:
	
l1681:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l1677
u1690:
	goto	l1685
	
l422:	
	goto	l1685
	
l423:	
	line	113
	goto	l1685
	
l425:	
	line	114
	
l1683:	
	movlw	01h
u1705:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1705

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1685
	line	116
	
l424:	
	line	113
	
l1685:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l1683
u1710:
	goto	l427
	
l426:	
	line	117
	goto	l427
	
l419:	
	
l1687:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1721
	goto	u1720
u1721:
	goto	l427
u1720:
	goto	l1689
	line	120
	
l429:	
	line	121
	
l1689:	
	movlw	01h
u1735:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1735
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1691:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1741
	goto	u1740
u1741:
	goto	l1697
u1740:
	
l1693:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l1689
u1750:
	goto	l1697
	
l431:	
	goto	l1697
	
l432:	
	line	124
	goto	l1697
	
l434:	
	line	125
	
l1695:	
	movlw	01h
u1765:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1765

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1697
	line	127
	
l433:	
	line	124
	
l1697:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l1695
u1770:
	goto	l427
	
l435:	
	goto	l427
	line	128
	
l428:	
	line	129
	
l427:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1701
u1780:
	line	131
	
l1699:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1701
	line	133
	
l436:	
	line	134
	
l1701:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l1705
u1790:
	line	136
	
l1703:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1705
	line	138
	
l437:	
	line	139
	
l1705:	
	clrf	(___ftadd@sign)
	line	140
	
l1707:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1801
	addwf	(___ftadd@f2+1),f
u1801:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1802
	addwf	(___ftadd@f2+2),f
u1802:

	line	141
	
l1709:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1811
	goto	u1810
u1811:
	goto	l1715
u1810:
	line	142
	
l1711:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1713:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1715
	line	145
	
l438:	
	line	146
	
l1715:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l413
	
l1717:	
	line	148
	
l413:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext22
__ptext22:	;psect for function ___ftdiv
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1889:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l1895
u2160:
	line	56
	
l1891:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l444
	
l1893:	
	goto	l444
	
l443:	
	line	57
	
l1895:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l1901
u2170:
	line	58
	
l1897:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l444
	
l1899:	
	goto	l444
	
l445:	
	line	59
	
l1901:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1903:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l1905:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2185:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2180:
	addlw	-1
	skipz
	goto	u2185
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l1907:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2195:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2190:
	addlw	-1
	skipz
	goto	u2195
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l1909:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l1911:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l1913:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l1915
	line	69
	
l446:	
	line	70
	
l1915:	
	movlw	01h
u2205:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2205
	line	71
	
l1917:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2215
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2215
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2215:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l1923
u2210:
	line	72
	
l1919:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l1921:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1923
	line	74
	
l447:	
	line	75
	
l1923:	
	movlw	01h
u2225:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2225
	line	76
	
l1925:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l1915
u2230:
	goto	l1927
	
l448:	
	line	77
	
l1927:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l444
	
l1929:	
	line	78
	
l444:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext23
__ptext23:	;psect for function ___awtoft
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1877:	
	clrf	(___awtoft@sign)
	line	37
	
l1879:	
	btfss	(___awtoft@c+1),7
	goto	u2151
	goto	u2150
u2151:
	goto	l1885
u2150:
	line	38
	
l1881:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1883:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1885
	line	40
	
l387:	
	line	41
	
l1885:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l388
	
l1887:	
	line	42
	
l388:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext24
__ptext24:	;psect for function ___lltoft
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2157:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l2161
	
l536:	
	line	42
	
l2159:	
	movlw	01h
u2595:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u2595

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l2161
	line	44
	
l535:	
	line	41
	
l2161:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2159
u2600:
	goto	l2163
	
l537:	
	line	45
	
l2163:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l538
	
l2165:	
	line	46
	
l538:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext25
__ptext25:	;psect for function ___ftpack
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1585:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1420
	goto	l1589
u1420:
	
l1587:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1431
	goto	u1430
u1431:
	goto	l1595
u1430:
	goto	l1589
	
l393:	
	line	65
	
l1589:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l394
	
l1591:	
	goto	l394
	
l391:	
	line	66
	goto	l1595
	
l396:	
	line	67
	
l1593:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1445:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1445

	goto	l1595
	line	69
	
l395:	
	line	66
	
l1595:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l1593
u1450:
	goto	l398
	
l397:	
	line	70
	goto	l398
	
l399:	
	line	71
	
l1597:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1599:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1601:	
	movlw	01h
u1465:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1465

	line	74
	
l398:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l1597
u1470:
	goto	l1605
	
l400:	
	line	75
	goto	l1605
	
l402:	
	line	76
	
l1603:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1485:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1485
	goto	l1605
	line	78
	
l401:	
	line	75
	
l1605:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l1603
u1490:
	
l403:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l404
u1500:
	line	80
	
l1607:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l404:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1609:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1515:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1510:
	addlw	-1
	skipz
	goto	u1515
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1611:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1520
	goto	l405
u1520:
	line	84
	
l1613:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l405:	
	line	85
	line	86
	
l394:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 235 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	235
global __ptext26
__ptext26:	;psect for function _init_I2C_Master
psect	text26
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	235
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	237
	
l2283:	
;LE7-3.c: 237: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	238
;LE7-3.c: 238: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	239
	
l2285:	
;LE7-3.c: 239: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	240
	
l2287:	
;LE7-3.c: 240: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	242
	
l2289:	
;LE7-3.c: 242: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	243
;LE7-3.c: 243: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	244
	
l104:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 173 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	173
global __ptext27
__ptext27:	;psect for function _initLCD
psect	text27
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	173
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	175
	
l2291:	
;LE7-3.c: 175: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	176
;LE7-3.c: 176: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	177
;LE7-3.c: 177: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	178
;LE7-3.c: 178: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	179
;LE7-3.c: 179: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	180
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 203 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  inst            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  inst            1    0[COMMON] unsigned char 
;;  i               2    1[COMMON] int 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updateDisplay
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	203
global __ptext28
__ptext28:	;psect for function _instCtrl
psect	text28
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	203
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+btemp+1]
;instCtrl@inst stored from wreg
	movwf	(instCtrl@inst)
	line	205
	
l2069:	
;LE7-3.c: 205: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7	;volatile
	line	206
	
l2071:	
;LE7-3.c: 206: PORTB = inst;
	movf	(instCtrl@inst),w
	movwf	(6)	;volatile
	line	207
	
l2073:	
;LE7-3.c: 207: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	208
	
l2075:	
;LE7-3.c: 208: for(int i = 0; i < 1000; i++);
	clrf	(instCtrl@i)
	clrf	(instCtrl@i+1)
	
l2077:	
	movf	(instCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2465
	movlw	low(03E8h)
	subwf	(instCtrl@i),w
u2465:

	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l2081
u2460:
	goto	l94
	
l2079:	
	goto	l94
	
l93:	
	
l2081:	
	movlw	low(01h)
	addwf	(instCtrl@i),f
	skipnc
	incf	(instCtrl@i+1),f
	movlw	high(01h)
	addwf	(instCtrl@i+1),f
	
l2083:	
	movf	(instCtrl@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2475
	movlw	low(03E8h)
	subwf	(instCtrl@i),w
u2475:

	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l2081
u2470:
	
l94:	
	line	209
;LE7-3.c: 209: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	210
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 259 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
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
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	259
global __ptext29
__ptext29:	;psect for function _I2C_Stop
psect	text29
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	259
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	262
	
l2319:	
;LE7-3.c: 262: I2C_Wait();
	fcall	_I2C_Wait
	line	264
	
l2321:	
;LE7-3.c: 264: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	265
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 252 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
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
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	line	252
global __ptext30
__ptext30:	;psect for function _I2C_Start
psect	text30
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	252
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	255
	
l2293:	
;LE7-3.c: 255: I2C_Wait();
	fcall	_I2C_Wait
	line	257
	
l2295:	
;LE7-3.c: 257: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	258
	
l113:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 276 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	276
global __ptext31
__ptext31:	;psect for function _I2C_Send
psect	text31
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	276
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@data stored from wreg
	movwf	(I2C_Send@data)
	line	279
	
l2297:	
;LE7-3.c: 279: I2C_Wait();
	fcall	_I2C_Wait
	line	281
	
l2299:	
;LE7-3.c: 281: SSPBUF = data;
	movf	(I2C_Send@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	282
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_RepeatedStart

;; *************** function _I2C_RepeatedStart *****************
;; Defined at:
;;		line 268 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
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
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	line	268
global __ptext32
__ptext32:	;psect for function _I2C_RepeatedStart
psect	text32
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	268
	global	__size_of_I2C_RepeatedStart
	__size_of_I2C_RepeatedStart	equ	__end_of_I2C_RepeatedStart-_I2C_RepeatedStart
	
_I2C_RepeatedStart:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_RepeatedStart: [wreg+status,2+status,0+pclath+cstack]
	line	271
	
l2301:	
;LE7-3.c: 271: I2C_Wait();
	fcall	_I2C_Wait
	line	273
	
l2303:	
;LE7-3.c: 273: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	274
	
l119:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_RepeatedStart
	__end_of_I2C_RepeatedStart:
	signat	_I2C_RepeatedStart,88
	global	_I2C_Receive

;; *************** function _I2C_Receive *****************
;; Defined at:
;;		line 284 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    1[COMMON] unsigned char 
;;  temp            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	line	284
global __ptext33
__ptext33:	;psect for function _I2C_Receive
psect	text33
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	284
	global	__size_of_I2C_Receive
	__size_of_I2C_Receive	equ	__end_of_I2C_Receive-_I2C_Receive
	
_I2C_Receive:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Receive: [wreg+status,2+status,0+pclath+cstack]
;I2C_Receive@ack stored from wreg
	movwf	(I2C_Receive@ack)
	line	287
	
l2305:	
;LE7-3.c: 286: unsigned char temp;
;LE7-3.c: 287: I2C_Wait();
	fcall	_I2C_Wait
	line	288
	
l2307:	
;LE7-3.c: 288: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	289
;LE7-3.c: 289: I2C_Wait();
	fcall	_I2C_Wait
	line	290
	
l2309:	
;LE7-3.c: 290: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Receive+0)+0
	movf	(??_I2C_Receive+0)+0,w
	movwf	(I2C_Receive@temp)
	line	291
	
l2311:	
;LE7-3.c: 291: I2C_Wait();
	fcall	_I2C_Wait
	line	292
	
l2313:	
;LE7-3.c: 292: ACKDT = (ack)?0:1;
	movf	(I2C_Receive@ack)
	skipnz
	goto	u2751
	goto	u2750
	
u2751:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	goto	u2764
u2750:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
u2764:
	line	293
	
l2315:	
;LE7-3.c: 293: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	294
;LE7-3.c: 294: return temp;
	movf	(I2C_Receive@temp),w
	goto	l125
	
l2317:	
	line	295
	
l125:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Receive
	__end_of_I2C_Receive:
	signat	_I2C_Receive,4217
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 246 in file "C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Receive
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	246
global __ptext34
__ptext34:	;psect for function _I2C_Wait
psect	text34
	file	"C:\Users\notjo\OneDrive\Desktop\USC\USC-Year3-Sem2\3201-EmbeddedSystems\Labs\LE_07\LE7-3\LE7-3.c"
	line	246
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Wait: [wreg+status,2]
	line	249
	
l2151:	
;LE7-3.c: 249: while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
	goto	l2153
	
l108:	
	goto	l2153
	
l107:	
	
l2153:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2153
u2570:
	
l2155:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u2581
	goto	u2580
u2581:
	goto	l2153
u2580:
	goto	l110
	
l109:	
	line	250
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Wait
	__end_of_I2C_Wait:
	signat	_I2C_Wait,88
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
