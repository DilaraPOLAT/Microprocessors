#line 1 "C:/Users/DÝLARA SEVÝM POLAT/Desktop/2021-Bahar/Mikro_C/For_Dongusu/micro_c/Karasimsek_kisa.c"
char i,led;

void main() {


CMCON=0X07;

VRCON=0;

TRISA=0B00000000;
TRISB=0X00;

PORTA=0;
PORTB=0;
LED=1;

while(1)
{
 for(i=1;i<8;i++)
 {
 PORTB=led;
 led=led<<1;
 DELAY_MS(100);
 }
 for(i=1;i<8;i++)
 {
 PORTB=led;
 led=led>>1;
 DELAY_MS(100);
 }
}



}
