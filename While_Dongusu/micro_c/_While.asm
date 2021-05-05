
_main:

;_While.c,3 :: 		void main() {
;_While.c,4 :: 		CMCON=0X07;
	MOVLW      7
	MOVWF      CMCON+0
;_While.c,5 :: 		VRCON=0;
	CLRF       VRCON+0
;_While.c,7 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;_While.c,8 :: 		TRISB=0X00;
	CLRF       TRISB+0
;_While.c,9 :: 		PORTA=0;
	CLRF       PORTA+0
;_While.c,10 :: 		PORTB=0;
	CLRF       PORTB+0
;_While.c,12 :: 		while(i<10)
L_main0:
	MOVLW      10
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;_While.c,14 :: 		portb.rb2=1;
	BSF        PORTB+0, 2
;_While.c,15 :: 		i=i+1;
	INCF       _i+0, 1
;_While.c,16 :: 		delay_ms(100);
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
;_While.c,17 :: 		}
	GOTO       L_main0
L_main1:
;_While.c,18 :: 		portb.rb2=0;
	BCF        PORTB+0, 2
;_While.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
