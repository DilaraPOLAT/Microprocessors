#define LED PORTA.RA0

void main() {

//TRISA=0;  //Porta decimal sistemde tamamen cikis yapildi
TRISA=0B00000000;  //Porta binary sistemde tamamen cikis yapildi
// TRISA=0X00;   //Porta hexadecimal sistemde tamamen cikis yapildi
PORTA=0; //PORTA �CER�G� TEM�ZLEND�

while(1)
{
 PORTA.RA0=1;  //POTA n�n 0. bitini 1 yapt�k yani PIC in 17. bacag�n� +5v yollad�k
 DELAY_MS(1000);
 PORTA.RA0=0;   //POTA n�n 0. bitini 0 yapt�k yani PIC in 17. bacag�n� 0v yollad�k
 DELAY_MS(1000);
}







}