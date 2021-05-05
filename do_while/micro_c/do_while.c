char i;

void main() {
CMCON=0X07;
VRCON=0;

TRISA=0B00000000;
TRISB=0X00;
PORTA=0;
PORTB=0;

do()
{
   portb.rb2=1;
   i++;
   delay_ms(100);
}
while(i<10);
portb.rb2=0;


}