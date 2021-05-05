#line 1 "C:/Users/DÝLARA SEVÝM POLAT/Desktop/2021-Bahar/Mikro_C/button/micro_c/button.c"
#line 15 "C:/Users/DÝLARA SEVÝM POLAT/Desktop/2021-Bahar/Mikro_C/button/micro_c/button.c"
void main() {

 TRISA=0b00000000;
 TRISB=0B00000011;

 CMCON=7;

 PORTA=0;
 PORTB=0;

 while(1)
 {
 if( PORTB.RB0 ==1)
 {
  PORTA.RA0 =1;
 while( PORTB.RB0 );
 }
 if( PORTB.RB1 ==1)
 {
  PORTA.RA0 =0;
 while( PORTB.RB1 );
 }

 }
#line 55 "C:/Users/DÝLARA SEVÝM POLAT/Desktop/2021-Bahar/Mikro_C/button/micro_c/button.c"
}
