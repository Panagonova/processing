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

int radius = 60;
float x = radius;
float y = 100;
float maxSpeed = 20;
float minSpeed = 3;
float xSpeed = minSpeed;

void draw(){
  background(100, 200, 300);
  ellipse(x, y, radius * 2, radius * 2);
  x = x + xSpeed;
  if(x >= width - radius){
    xSpeed = -xSpeed;
  }
  if(x <= 0 + radius){
    xSpeed = -xSpeed;
 }    


  if (keyPressed && keyCode == UP) 
  {
    if(y > radius)
    {
      y = y - 10;
      stroke(#FF0000);
    }
  } //<>//
  
  
  if(keyPressed && keyCode == DOWN) {
    if (y < height - radius)
    {
      y = y + 10;
      stroke(#0000FF);
    }
  }
  
  if (keyPressed && key == 's'){
    if(xSpeed < maxSpeed) {
       xSpeed = xSpeed + 1;
    }
  }
  
  if (keyPressed && key == 'a'){
    if(xSpeed > minSpeed) {
       xSpeed -= 1;
    }
  }
   
}
