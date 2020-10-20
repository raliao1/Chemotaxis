Bacteria [] slow = new Bacteria[20];
Bacteria [] fast = new Bacteria[20];
 void setup()   
 {     
   size(500,500);
   background(224, 224, 224);
   fill(51, 153, 255);
   rect(50, 50, 400, 400, 10);
   for(int i = 0; i < slow.length; i++){
     slow[i] = new Bacteria();
   }
   for(int i = 0; i < fast.length; i++){
     fast[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   for(int i = 0; i < slow.length; i++){
     slow[i].showSlow();
     slow[i].moveSlow();
   } 
   for(int i = 0; i < fast.length; i++){
     fast[i].showFast();
     fast[i].moveFast();
   } 
 }  
 class Bacteria   
 {     
   int myXSlow, myXFast, myColor;
   float myYSlow, myYFast, mySpeedSlow, mySpeedFast;
   Bacteria(){
     myXSlow = (int)(Math.random()*300) + 100;
     myXFast = (int)(Math.random()*300) + 100;
     myYSlow = (int)(Math.random()*400) + 50;
     myYFast = (int)(Math.random()*400) + 50;
     myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
     mySpeedSlow = 0.1;
     mySpeedFast = 0.25;
 }
   void showSlow(){
     fill(myColor);
     stroke(myColor);
     ellipse(myXSlow, myYSlow, 5, 5);
   }
   void showFast(){
     fill(myColor);
     stroke(myColor);
     ellipse(myXFast, myYFast, 5, 5);
   }
   void moveSlow(){
     myXSlow = myXSlow + ((int)(Math.random()*3) - 1);
     myYSlow = myYSlow - mySpeedSlow;
     if(myYSlow <= 50){
       myXSlow = (int)(Math.random()*300) + 100;
       myYSlow = 450;
     }
   }
   void moveFast(){
     myXFast = myXFast + ((int)(Math.random()*3) - 1);
     myYFast = myYFast - mySpeedFast;
     if(myYFast <= 50){
       myXFast = (int)(Math.random()*300) + 100;
       myYFast = 450;
     }
   }
 }
