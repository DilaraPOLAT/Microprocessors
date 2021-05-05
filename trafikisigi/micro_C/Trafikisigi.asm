
_main:

;Trafikisigi.c,1 :: 		void main() {
;Trafikisigi.c,2 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;Trafikisigi.c,3 :: 		PORTA=0;
	CLRF       PORTA+0
;Trafikisigi.c,4 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;Trafikisigi.c,6 :: 		while(1)
L_main0:
;Trafikisigi.c,8 :: 		PORTA.RA0=1;
	BSF        PORTA+0, 0
;Trafikisigi.c,9 :: 		DELAY_MS(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Trafikisigi.c,10 :: 		PORTA.RA0=0;
	BCF        PORTA+0, 0
;Trafikisigi.c,11 :: 		PORTA.RA1=1;
	BSF        PORTA+0, 1
;Trafikisigi.c,12 :: 		DELAY_MS(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
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
;Trafikisigi.c,13 :: 		PORTA.RA1=0;
	BCF        PORTA+0, 1
;Trafikisigi.c,14 :: 		PORTA.RA2=1;
	BSF        PORTA+0, 2
;Trafikisigi.c,15 :: 		DELAY_MS(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Trafikisigi.c,16 :: 		PORTA.RA2=0;
	BCF        PORTA+0, 2
;Trafikisigi.c,18 :: 		}
	GOTO       L_main0
;Trafikisigi.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
