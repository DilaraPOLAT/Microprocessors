#line 1 "C:/Users/D�LARA SEV�M POLAT/Desktop/2021-Bahar/Mikro_C/KaraSimsek/micro_C/Karasimsek.c"
void main() {
TRISB=0B00000000;
PORTB=0;
CMCON=7;

while(1)
{
PORTB=0B00000001;
DELAY_MS(100);
PORTB=0B00000010;
DELAY_MS(100);
PORTB=0B00000100;
DELAY_MS(100);
PORTB=0B00001000;
DELAY_MS(100);
PORTB=0B00010000;
DELAY_MS(100);
PORTB=0B00010000;
DELAY_MS(100);
PORTB=0B00100000;
DELAY_MS(100);
PORTB=0B01000000;
DELAY_MS(100);
PORTB=0B10000000;
DELAY_MS(100);

PORTB=0B10000000;
DELAY_MS(100);
PORTB=0B01000000;
DELAY_MS(100);
PORTB=0B00100000;
DELAY_MS(100);
PORTB=0B00010000;
DELAY_MS(100);
PORTB=0B00001000;
DELAY_MS(100);
PORTB=0B00000100;
DELAY_MS(100);
PORTB=0B00000010;
DELAY_MS(100);
PORTB=0B00000001;
DELAY_MS(100);






}

}