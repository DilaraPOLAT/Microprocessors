
_main:

;_switch.c,3 :: 		void main() {
;_switch.c,4 :: 		TRISA=0B00000001;
	MOVLW      1
	MOVWF      TRISA+0
;_switch.c,5 :: 		TRISB=0;
	CLRF       TRISB+0
;_switch.c,7 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;_switch.c,9 :: 		PORTA=0;
	CLRF       PORTA+0
;_switch.c,10 :: 		PORTB=0;
	CLRF       PORTB+0
;_switch.c,12 :: 		while(1)
L_main0:
;_switch.c,14 :: 		if(PORTA.RA0==1)
	BTFSS      PORTA+0, 0
	GOTO       L_main2
;_switch.c,16 :: 		i=i+1;
	INCF       _i+0, 1
;_switch.c,18 :: 		}
L_main2:
;_switch.c,19 :: 		while(PORTA.RA0);
L_main3:
	BTFSS      PORTA+0, 0
	GOTO       L_main4
	GOTO       L_main3
L_main4:
;_switch.c,21 :: 		switch(i)
	GOTO       L_main5
;_switch.c,23 :: 		case 1:
L_main7:
;_switch.c,24 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;_switch.c,25 :: 		break;
	GOTO       L_main6
;_switch.c,26 :: 		case 2:
L_main8:
;_switch.c,27 :: 		PORTB.RB1=1;
	BSF        PORTB+0, 1
;_switch.c,28 :: 		break;
	GOTO       L_main6
;_switch.c,29 :: 		case 3:
L_main9:
;_switch.c,30 :: 		PORTB.RB2=1;
	BSF        PORTB+0, 2
;_switch.c,31 :: 		break;
	GOTO       L_main6
;_switch.c,32 :: 		case 4:
L_main10:
;_switch.c,33 :: 		PORTB=0;
	CLRF       PORTB+0
;_switch.c,34 :: 		i=0;
	CLRF       _i+0
;_switch.c,35 :: 		break;
	GOTO       L_main6
;_switch.c,38 :: 		}
L_main5:
	MOVF       _i+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main7
	MOVF       _i+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVF       _i+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main9
	MOVF       _i+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main10
L_main6:
;_switch.c,40 :: 		}
	GOTO       L_main0
;_switch.c,43 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
