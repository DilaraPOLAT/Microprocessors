
_main:

;button.c,15 :: 		void main() {
;button.c,17 :: 		TRISA=0b00000000;
	CLRF       TRISA+0
;button.c,18 :: 		TRISB=0B00000011;
	MOVLW      3
	MOVWF      TRISB+0
;button.c,20 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;button.c,22 :: 		PORTA=0;
	CLRF       PORTA+0
;button.c,23 :: 		PORTB=0;
	CLRF       PORTB+0
;button.c,25 :: 		while(1)
L_main0:
;button.c,27 :: 		if(yakbuton==1)// = if(portb.rbo)
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;button.c,29 :: 		led=1;
	BSF        PORTA+0, 0
;button.c,30 :: 		while(yakbuton);  //yakbutonunu býrakana kadar bekle
L_main3:
	BTFSS      PORTB+0, 0
	GOTO       L_main4
	GOTO       L_main3
L_main4:
;button.c,31 :: 		}
L_main2:
;button.c,32 :: 		if(sondurbuton==1)
	BTFSS      PORTB+0, 1
	GOTO       L_main5
;button.c,34 :: 		led=0;
	BCF        PORTA+0, 0
;button.c,35 :: 		while(sondurbuton);
L_main6:
	BTFSS      PORTB+0, 1
	GOTO       L_main7
	GOTO       L_main6
L_main7:
;button.c,36 :: 		}
L_main5:
;button.c,38 :: 		}
	GOTO       L_main0
;button.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
