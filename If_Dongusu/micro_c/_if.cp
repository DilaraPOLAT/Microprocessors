#line 1 "C:/Users/D�LARA SEV�M POLAT/Desktop/2021-Bahar/Mikro_C/If_Dongusu/micro_c/_if.c"
void main() {
TRISA=0;
TRISB=0b00000000;
CMCON=7;

PORTA=0;
PORTB=0;

PORTA.RA0=1;
while(1)
{
 if(PORTA.RA0=1)
 {
 DELAY_MS(2000);
 PORTB.RB0=1;
 }
 if(PORTB.RB0=1)
 {
 DELAY_MS(2000);
 PORTB.RB0=0;
 DELAY_MS(2000);
 PORTA.RA0=0;
 DELAY_MS(2000);

 }
}
}
