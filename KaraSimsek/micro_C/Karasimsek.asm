
_main:

;Karasimsek.c,1 :: 		void main() {
;Karasimsek.c,2 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;Karasimsek.c,3 :: 		PORTB=0;
	CLRF       PORTB+0
;Karasimsek.c,4 :: 		CMCON=7;//0X07
	MOVLW      7
	MOVWF      CMCON+0
;Karasimsek.c,6 :: 		while(1)
L_main0:
;Karasimsek.c,8 :: 		PORTB=0B00000001;//PORTB01 YANDI
	MOVLW      1
	MOVWF      PORTB+0
;Karasimsek.c,9 :: 		DELAY_MS(100);
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
;Karasimsek.c,10 :: 		PORTB=0B00000010;
	MOVLW      2
	MOVWF      PORTB+0
;Karasimsek.c,11 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Karasimsek.c,12 :: 		PORTB=0B00000100;
	MOVLW      4
	MOVWF      PORTB+0
;Karasimsek.c,13 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Karasimsek.c,14 :: 		PORTB=0B00001000;
	MOVLW      8
	MOVWF      PORTB+0
;Karasimsek.c,15 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;Karasimsek.c,16 :: 		PORTB=0B00010000;
	MOVLW      16
	MOVWF      PORTB+0
;Karasimsek.c,17 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Karasimsek.c,18 :: 		PORTB=0B00010000;
	MOVLW      16
	MOVWF      PORTB+0
;Karasimsek.c,19 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;Karasimsek.c,20 :: 		PORTB=0B00100000;
	MOVLW      32
	MOVWF      PORTB+0
;Karasimsek.c,21 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;Karasimsek.c,22 :: 		PORTB=0B01000000;
	MOVLW      64
	MOVWF      PORTB+0
;Karasimsek.c,23 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;Karasimsek.c,24 :: 		PORTB=0B10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Karasimsek.c,25 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;Karasimsek.c,27 :: 		PORTB=0B10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Karasimsek.c,28 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;Karasimsek.c,29 :: 		PORTB=0B01000000;
	MOVLW      64
	MOVWF      PORTB+0
;Karasimsek.c,30 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;Karasimsek.c,31 :: 		PORTB=0B00100000;
	MOVLW      32
	MOVWF      PORTB+0
;Karasimsek.c,32 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
;Karasimsek.c,33 :: 		PORTB=0B00010000;
	MOVLW      16
	MOVWF      PORTB+0
;Karasimsek.c,34 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
	NOP
;Karasimsek.c,35 :: 		PORTB=0B00001000;
	MOVLW      8
	MOVWF      PORTB+0
;Karasimsek.c,36 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;Karasimsek.c,37 :: 		PORTB=0B00000100;
	MOVLW      4
	MOVWF      PORTB+0
;Karasimsek.c,38 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
	NOP
;Karasimsek.c,39 :: 		PORTB=0B00000010;
	MOVLW      2
	MOVWF      PORTB+0
;Karasimsek.c,40 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
;Karasimsek.c,41 :: 		PORTB=0B00000001;
	MOVLW      1
	MOVWF      PORTB+0
;Karasimsek.c,42 :: 		DELAY_MS(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;Karasimsek.c,49 :: 		}
	GOTO       L_main0
;Karasimsek.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
