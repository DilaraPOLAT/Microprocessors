
_main:

;Led_Yakma.c,1 :: 		void main() {
;Led_Yakma.c,4 :: 		TRISA=0B00000000;  //Porta binary sistemde tamamen cikis yapildi
	CLRF       TRISA+0
;Led_Yakma.c,6 :: 		PORTA=0; //PORTA �CER�G� TEM�ZLEND�
	CLRF       PORTA+0
;Led_Yakma.c,8 :: 		while(1)
L_main0:
;Led_Yakma.c,10 :: 		PORTA.RA0=1;  //POTA n�n 0. bitini 1 yapt�k yani PIC in 17. bacag�n� +5v yollad�k
	BSF        PORTA+0, 0
;Led_Yakma.c,11 :: 		DELAY_MS(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Led_Yakma.c,12 :: 		PORTA.RA0=0;   //POTA n�n 0. bitini 0 yapt�k yani PIC in 17. bacag�n� 0v yollad�k
	BCF        PORTA+0, 0
;Led_Yakma.c,13 :: 		DELAY_MS(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Led_Yakma.c,14 :: 		}
	GOTO       L_main0
;Led_Yakma.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
