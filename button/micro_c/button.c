#define sondurbuton PORTB.RB1
#define yakbuton PORTB.RB0
//#define yakbuton Button(&PORTB,0,100,1)
//#define sondurbuton Button(&PORTB,0,100,1)
#define led PORTA.RA0

 /*
   Button => fonksiyonun adý
   &PORTB => butonun baglý oldugu port
   0 => butonun baglý oldugu pin
   100 => butona basýlma suresi
   1 => pulown ise 1 pulop ise 0 olacak
 
 */
void main() {

 TRISA=0b00000000;
 TRISB=0B00000011;
 
 CMCON=7;

 PORTA=0;
 PORTB=0;
 
 while(1)
 {
  if(yakbuton==1)// = if(portb.rbo)
  {
    led=1;
    while(yakbuton);  //yakbutonunu býrakana kadar bekle
  }
  if(sondurbuton==1)
  {
   led=0;
   while(sondurbuton);
  }
 
 }
 















}