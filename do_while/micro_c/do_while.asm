
_main:

;do_while.c,3 :: 		void main() {
;do_while.c,4 :: 		CMCON=0X07;
	MOVLW      7
	MOVWF      CMCON+0
;do_while.c,5 :: 		VRCON=0;
	CLRF       VRCON+0
;do_while.c,7 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;do_while.c,8 :: 		TRISB=0X00;
	CLRF       TRISB+0
;do_while.c,9 :: 		PORTA=0;
	CLRF       PORTA+0
;do_while.c,10 :: 		PORTB=0;
	CLRF       PORTB+0
;do_while.c,12 :: 		while(i<10)
L_main0:
	MOVLW      10
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;do_while.c,14 :: 		portb.rb2=1;
	BSF        PORTB+0, 2
;do_while.c,15 :: 		i=i+1;
	INCF       _i+0, 1
;do_while.c,16 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;do_while.c,17 :: 		}
	GOTO       L_main0
L_main1:
;do_while.c,18 :: 		portb.rb2=0;
	BCF        PORTB+0, 2
;do_while.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
