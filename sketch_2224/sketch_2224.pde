//size(500, 500);

//rect(225, 220, 50, 140);
//ellipse(250, 150, 150, 150);
//ellipse(210, 150, 50, 100);
//ellipse(290, 150, 50, 100);
//line(225, 360, 205, 380);
//line(275, 360, 295, 380);

//line(0, height, width, 0);
//line(0, 0, width, height);

void setup(){
  size(800, 500);
}

int x = 0;
int y = 100;
int xSpeed = +3;

void draw(){
    background(100, 200, 300);
  ellipse(x, y, 20, 20);
  x = x + xSpeed;
  if(x > width){
    xSpeed = -xSpeed;
 }
  if(x < 0){
    xSpeed = -xSpeed;
 }    
}
