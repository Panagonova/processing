int step = 10;
void setup(){
   size(600, 600);
     }
 void draw(){
   background(255, 255, 0);
   for(int y = 0; y <= height; y += 10){
     line(0, y, width, y); 
   }
     for(int x = 0; x <= width; x += 10){
     line(x, 0, x, height);
   }
 

 
 if(mousePressed){
   if(mouseButton == LEFT);
   step += 2;
 } else if(mouseButton == RIGHT); {
   step -= 2;
   }
   if(step < 1);{
   step = 1;
   }
   }
