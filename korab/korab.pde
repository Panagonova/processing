PImage sidegoodrider; 
PImage bullet;
PImage badrider;
PImage explosion;
PImage background;
float shipX = 50;
float shipY = 300;
float shipW = 86;
float shipH = 30;
int mySpeed = 7;
int bulletSpeed = 30;
int riderSpeed = 5;
int explosionDelay = 0;
float bulletX = 106;
float bulletY = 360;
float bulletW = 10;
float bulletH = 10;
float riderX = 500;
float riderY = 300;
float riderW = 45;
float riderH = 98;
int counter = 0;
boolean gameOver = false;
boolean canShoot = true;
boolean isBullet = false;
boolean isExplosion = false;


boolean checkForCollision(float x1, float y1, float w1, float h1, float x2, float y2, float w2, float h2)
{
  return (x1 + w1) >=x2 && x1 <= x2+ w2 && (y1 + h1) >= y2 && y1 <= y2 + h2;
}

void setup(){
  size(800, 600);
  sidegoodrider = loadImage("sidegoodrider.png");
  bullet = loadImage("bullet.png");
  badrider = loadImage("badrider.png"); 
  explosion = loadImage("explosion.png");
  background= loadImage("background.jpeg");
}
 
void draw() {  
  image(background, 0, 0, 800, 600);
  if(gameOver) {
    if(keyPressed && key == 'r'){
       gameOver = false;
       shipX = 50;
       shipY = 300;
       riderX = 500;
       riderY = 300;
    }
    showGameOverText();
    return; 
  }
  drawMyShip();
  drawBullet();
    
  boolean isEnemyWasDestroyed = checkForCollision(bulletX, bulletY, bulletW, bulletH, riderX, riderY, riderW, riderH);
  boolean isCollisionBetweenMeAndEnemy = checkForCollision(shipX, shipY, shipW, shipH, riderX, riderY, riderW, riderH);
  
  if (isCollisionBetweenMeAndEnemy)
  {
    gameOver = true;
  }
  
  if (isEnemyWasDestroyed && isBullet && !isExplosion)
  {
    isBullet = false;
    canShoot = true;
    isExplosion= true;
    counter++;
  }
  
  if (isExplosion)
  {
    drawExplosion();
    explosionDelay++;
    if(explosionDelay > 20)
    {
      isExplosion = false;
      explosionDelay = 0;
      riderX = -riderW;
      drawBadrider();
    }
  }
  else
  {
    drawBadrider();
  }
  
  
  showCounter();  
 
}
void drawMyShip(){
image(sidegoodrider, shipX, shipY, shipW, shipH);
  
  if(keyPressed && keyCode == UP){
    if(shipY - mySpeed >= 0){
      shipY -= mySpeed;
    }
  }
  if(keyPressed && keyCode == DOWN){
    if(shipY + shipH + mySpeed  < height ){
      shipY += mySpeed;
    }
  }

  if(keyPressed && keyCode == LEFT){
    if(shipX - mySpeed >= 0){
      shipX -= mySpeed;
    } 
  }
  
  if(keyPressed && keyCode == RIGHT){
    if(shipX + shipW + mySpeed  < width){
      shipX += mySpeed;
    }
  }  
}

void drawBullet(){
 if(keyPressed && key == ' '){
    if(canShoot){
      canShoot = false;
      isBullet = true;
      bulletX = shipX + shipW;
      bulletY = shipY + (shipH / 2) - (bulletH / 2);
    }
  }  
  
  if(isBullet){
    image(bullet, bulletX, bulletY, bulletW, bulletH);
    bulletX += bulletSpeed;
    if(bulletX > width){
      isBullet = false;
      canShoot = true;
    }
  }
}

 void drawBadrider(){
   image(badrider, riderX, riderY, riderW, riderH);
    if(riderX + riderW - riderSpeed >= 0){
      riderX -= riderSpeed;
    }
    else
    {
      riderX = width;
      riderY = random(0, height - riderH); 
    }
 }
 void drawExplosion(){
   image(explosion, riderX, riderY, riderW, riderH);
 }

void showGameOverText() {
    background(0);
    textSize(60);
    fill(255, 0, 0);
    text("Game Over", 240, height/2 - 10);
    text("Final score : "+ counter, 178, height/2 + 50);
}

void showCounter() {
  textSize(40);
  fill(255);
  text(counter, width - 60, 35);
}
