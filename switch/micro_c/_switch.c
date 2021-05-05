char i=0;

void main() {
TRISA=0B00000001;
TRISB=0;
  
CMCON=7;
  
PORTA=0;
PORTB=0;
  
while(1)
{
 if(PORTA.RA0==1)
 {
    i=i+1;

 }
 while(PORTA.RA0);

switch(i)
 {
  case 1:
    PORTB.RB0=1;
    break;
  case 2:
    PORTB.RB1=1;
    break;
  case 3:
    PORTB.RB2=1;
    break;
  case 4:
    PORTB=0;
    i=0;
    break;


 }

}


}