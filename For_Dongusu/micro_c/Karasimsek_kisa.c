char i,led;

void main() {
//PORT AYARLAMALARI YAPILACAK GÝRÝÞ CIKIÞ
// AYARLARI VE VARSA ANALOG VE KARÞILASTIRICI MODÜLLER BURADA AYARLANIR.
CMCON=0X07;   //comparatör(karrþýlatýrýcý) kapatýldý.pinler dijitale ayarlandý.
//0x07 7 ile aynýdýr.16 lýk sistemde 7 ye karsýýk geliyor.
VRCON=0;//Referans voltaj giriþini kapatýr.

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