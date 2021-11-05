Bacteria[] b;
OddballBacteria[] odb;
 void setup()  
 {    
   size(800,800);
   background(0,0,0);
   frameRate(120);
   b = new Bacteria[300];
   for(int i = 0; i < b.length; i++)
     b[i] = new Bacteria();
   
   odb = new OddballBacteria[10];
   for(int i = 0; i < odb.length; i++)
     odb[i] = new OddballBacteria();
 }  
  void draw()  
 {
  for(int i = 0; i < odb.length; i++){
   odb[i].move();
   odb[i].show();
  }
  for(int i = 0; i < b.length; i++){
   b[i].move();
   b[i].show();
  }
 }
 class Bacteria    
 {
   int myColor, mySize;
   double myX, myY, mySpeed, myAngle;
   Bacteria() {
     myX = 400;
     myY = 400;
     myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255) );
     myAngle = Math.random()*2*Math.PI;
     mySpeed = Math.random()*5;
     mySize = 2;
   }
   void move()
   {
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
   }
   void show()
   {
     fill(myColor);
     noStroke();
     ellipse((float)myX, (float)myY, mySize, mySize);
   }
 }
 class OddballBacteria extends Bacteria {
   OddballBacteria() {
     mySize = 10;
   }
   void move()
   {
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
     myAngle = myAngle + 0.01;
   }
 }
