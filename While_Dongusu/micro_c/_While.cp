#line 1 "C:/Users/DÝLARA SEVÝM POLAT/Desktop/2021-Bahar/Mikro_C/While_Dongusu/micro_c/_While.c"
char i;

void main() {
CMCON=0X07;
VRCON=0;

TRISA=0B00000000;
TRISB=0X00;
PORTA=0;
PORTB=0;

while(i<10)
{
 portb.rb2=1;
 i=i+1;
 delay_ms(100);
}
portb.rb2=0;


}
