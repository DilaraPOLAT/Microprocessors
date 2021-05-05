
_main:

;_if.c,1 :: 		void main() {
;_if.c,2 :: 		TRISA=0;
	CLRF       TRISA+0
;_if.c,3 :: 		TRISB=0b00000000;
	CLRF       TRISB+0
;_if.c,4 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;_if.c,6 :: 		PORTA=0;
	CLRF       PORTA+0
;_if.c,7 :: 		PORTB=0;
	CLRF       PORTB+0
;_if.c,9 :: 		PORTA.RA0=1;
	BSF        PORTA+0, 0
;_if.c,10 :: 		while(1)
L_main0:
;_if.c,12 :: 		if(PORTA.RA0=1)
	BSF        PORTA+0, 0
	BTFSS      PORTA+0, 0
	GOTO       L_main2
;_if.c,14 :: 		DELAY_MS(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;_if.c,15 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;_if.c,16 :: 		}
L_main2:
;_if.c,17 :: 		if(PORTB.RB0=1)
	BSF        PORTB+0, 0
	BTFSS      PORTB+0, 0
	GOTO       L_main4
;_if.c,19 :: 		DELAY_MS(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;_if.c,20 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;_if.c,21 :: 		DELAY_MS(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;_if.c,22 :: 		PORTA.RA0=0;
	BCF        PORTA+0, 0
;_if.c,23 :: 		DELAY_MS(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;_if.c,25 :: 		}
L_main4:
;_if.c,26 :: 		}
	GOTO       L_main0
;_if.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
