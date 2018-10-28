float xr = 0; 
float yr = 0;
float wr = 30;
float hr = 100;
float hrdown = 100;
float birdx = 100;
float birdy = 50;
float birdw = 50;
float birdh = 50;
PImage bird;
float xSpeed = 5;
float yspeed = 3;
float gapHeight = 200;
boolean gameOver = false;

void setup() {
  size(600, 600);
  bird = loadImage("bird.png");
  xr = width;
}

void draw() {  
  if(gameOver) {
    if(keyPressed && key == 'r'){
       gameOver = false;
     }
    showGameOverText();
    return;
  }
  
   background(255, 255, 0);
   fill(255);

   if(xr < -wr){
     xr = width;
     hr = random(100, 300);
   }
  if(keyPressed && keyCode == UP){
    birdy -= 7;
  }
  else if(birdy +birdh < height) {
      birdy= birdy + yspeed;
  }
    
  float yrdown = hr + gapHeight;
  float hrdown = height - yrdown;
  
  image( bird, birdx, birdy, birdw, birdh);
  rect(xr, yr, wr, hr);
  rect(xr, yrdown , wr, hrdown);
  xr -= xSpeed;
  
  boolean collisionUp =(birdx + birdw) >=xr && birdx <= xr+ wr && (birdy + birdh) >= yr && birdy <= yr + hr;
  boolean collisionDown =(birdx + birdw) >=xr && birdx <= xr+ wr && (birdy + birdh) >= yrdown && birdy <= yrdown + hrdown;
  
  if(collisionUp || collisionDown){ 
    gameOver = true;
    xr = width; 
  }
}

void showGameOverText() {
    background(0);
    textSize(60);
    fill(255, 0, 0);
    text("Game Over", 150, height/2 - 30);
}
