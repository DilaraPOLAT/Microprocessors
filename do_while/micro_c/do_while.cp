#line 1 "C:/Users/DÝLARA SEVÝM POLAT/Desktop/2021-Bahar/Mikro_C/do_while/micro_c/do_while.c"
char i;

void main() {
CMCON=0X07;
VRCON=0;

TRISA=0B00000000;
TRISB=0X00;
PORTA=0;
PORTB=0;

do()
{
 portb.rb2=1;
 i++;
 delay_ms(100);
}
while(i<10);
portb.rb2=0;


}
