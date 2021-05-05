
_main:

;Karasimsek_kisa.c,3 :: 		void main() {
;Karasimsek_kisa.c,6 :: 		CMCON=0X07;   //comparatör(karrþýlatýrýcý) kapatýldý.pinler dijitale ayarlandý.
	MOVLW      7
	MOVWF      CMCON+0
;Karasimsek_kisa.c,8 :: 		VRCON=0;//Referans voltaj giriþini kapatýr.
	CLRF       VRCON+0
;Karasimsek_kisa.c,10 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;Karasimsek_kisa.c,11 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Karasimsek_kisa.c,13 :: 		PORTA=0;
	CLRF       PORTA+0
;Karasimsek_kisa.c,14 :: 		PORTB=0;
	CLRF       PORTB+0
;Karasimsek_kisa.c,15 :: 		LED=1;
	MOVLW      1
	MOVWF      _led+0
;Karasimsek_kisa.c,17 :: 		while(1)
L_main0:
;Karasimsek_kisa.c,19 :: 		for(i=1;i<8;i++)
	MOVLW      1
	MOVWF      _i+0
L_main2:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Karasimsek_kisa.c,21 :: 		PORTB=led;
	MOVF       _led+0, 0
	MOVWF      PORTB+0
;Karasimsek_kisa.c,22 :: 		led=led<<1;
	RLF        _led+0, 1
	BCF        _led+0, 0
;Karasimsek_kisa.c,23 :: 		DELAY_MS(100);
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
;Karasimsek_kisa.c,19 :: 		for(i=1;i<8;i++)
	INCF       _i+0, 1
;Karasimsek_kisa.c,24 :: 		}
	GOTO       L_main2
L_main3:
;Karasimsek_kisa.c,25 :: 		for(i=1;i<8;i++)
	MOVLW      1
	MOVWF      _i+0
L_main6:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;Karasimsek_kisa.c,27 :: 		PORTB=led;
	MOVF       _led+0, 0
	MOVWF      PORTB+0
;Karasimsek_kisa.c,28 :: 		led=led>>1;
	RRF        _led+0, 1
	BCF        _led+0, 7
;Karasimsek_kisa.c,29 :: 		DELAY_MS(100);
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
;Karasimsek_kisa.c,25 :: 		for(i=1;i<8;i++)
	INCF       _i+0, 1
;Karasimsek_kisa.c,30 :: 		}
	GOTO       L_main6
L_main7:
;Karasimsek_kisa.c,31 :: 		}
	GOTO       L_main0
;Karasimsek_kisa.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
