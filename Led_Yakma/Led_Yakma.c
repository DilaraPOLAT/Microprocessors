#define LED PORTA.RA0

void main() {

//TRISA=0;  //Porta decimal sistemde tamamen cikis yapildi
TRISA=0B00000000;  //Porta binary sistemde tamamen cikis yapildi
// TRISA=0X00;   //Porta hexadecimal sistemde tamamen cikis yapildi
PORTA=0; //PORTA ÝCERÝGÝ TEMÝZLENDÝ

while(1)
{
 PORTA.RA0=1;  //POTA nýn 0. bitini 1 yaptýk yani PIC in 17. bacagýný +5v yolladýk
 DELAY_MS(1000);
 PORTA.RA0=0;   //POTA nýn 0. bitini 0 yaptýk yani PIC in 17. bacagýný 0v yolladýk
 DELAY_MS(1000);
}







}