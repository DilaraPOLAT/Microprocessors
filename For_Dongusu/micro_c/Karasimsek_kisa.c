char i,led;

void main() {
//PORT AYARLAMALARI YAPILACAK G�R�� CIKI�
// AYARLARI VE VARSA ANALOG VE KAR�ILASTIRICI MOD�LLER BURADA AYARLANIR.
CMCON=0X07;   //comparat�r(karr��lat�r�c�) kapat�ld�.pinler dijitale ayarland�.
//0x07 7 ile ayn�d�r.16 l�k sistemde 7 ye kars��k geliyor.
VRCON=0;//Referans voltaj giri�ini kapat�r.

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