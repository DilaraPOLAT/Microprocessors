#line 1 "C:/Users/D�LARA SEV�M POLAT/Desktop/2021-Bahar/Mikro_C/trafikisigi/micro_C/Trafikisigi.c"
void main() {
TRISA=0B00000000;
PORTA=0;
CMCON=7;

while(1)
{
PORTA.RA0=1;
DELAY_MS(3000);
PORTA.RA0=0;
PORTA.RA1=1;
DELAY_MS(1500);
PORTA.RA1=0;
PORTA.RA2=1;
DELAY_MS(2000);
PORTA.RA2=0;

}

}
