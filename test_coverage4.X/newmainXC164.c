//switch case statements
//#pragma config ICS = PGD2    
volatile int i=0, j, k=0, expr;
void  main(void) {
    i = 1;
    expr = 2; 
   switch(expr)
   {
      case 5: 
                i=5;
                expr++;
                break;
      case 1: 
                i=1;
                expr++;
                break;
      case 4: 
                i=4;
                expr++;
                break;                
       case 2: 
                i=2;
                expr++;
                break; 
      case 7: 
                i=7;
                expr++;
                break;                
      case 3: 
                i=3;
                expr++;
                break;
      case 6: 
                i=6;
                expr++;
                break;                
      default: 
                break;
   }
   
   expr = ((i*3) + (k + (j*2)));
}
