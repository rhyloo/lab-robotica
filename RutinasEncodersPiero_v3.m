void isrPinBEn0(){ 
 static char dato;
 dato = PINE;
 if (dato & 0x20) // B
    {
    if (dato & 0x10) // A
          	Enc[0].pos++;
    else   	Enc[0].pos--;
 } else
    {
    if (dato & 0x10) // A
          	Enc[0].pos--;
    else   	Enc[0].pos++;
 }
} /* end ISR pin B Encoder 0  */




/* Interrupt Service Routine: change on pin B for Encoder 1  */
void isrPinBEn1(){ 
 // int dato;
 //dato = PIND;
 if ((PIND & (1<<3))>0) // B
    {
    if ((PIND & (1<<2))>0) // A
          	Enc[1].pos++;
    else   	Enc[1].pos--;
 } else
    {
    if ((PIND & (1<<2))>0) // A
          	Enc[1].pos--;
    else   	Enc[1].pos++;
 }
 } 