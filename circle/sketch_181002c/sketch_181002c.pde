int x = 150;
int y = 100;
int r = 50;
int xM = 100;
int yM = 300;
int rM = 40;

void setup(){
  size(700, 600);
 }

void draw(){
  background(200,10,155);
  if(keyPressed){
    if(keyCode == UP){
      yM--;
    }else if(keyCode == DOWN){
      yM++;
      
    }else if(keyCode == LEFT){
      xM--;
    
    }else if(keyCode == RIGHT){
      xM++;
    }
  } 
  if(yM < rM){
    yM = rM;
  }
  if(yM > height - rM){
    yM = height - rM;
  } 
  if(yM > 
 if(dist(x, y, xM, yM) < (r + rM)){
   x = (int)random(0, 700);
   y = (int)random(0, 600);
   rM = rM + 10;
 }
  ellipse(xM, yM, 2*rM, 2*rM);
  ellipse(x, y, 2*r, 2*r);
 }
   
