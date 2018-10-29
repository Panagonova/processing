int d = 30;

void setup(){
  size(600, 800);
   }
void draw(){
  if(mousePressed){
    background(#A25050);
    for(int y = 25; y <= height; y += d + 10){
      for(int x = 25; x <= width; x += d + 10){
        fill(random(255), random(255), random(255));
        ellipse(x, y, d, d);
        } 
      }
      if(mouseButton == LEFT){
        d++;
      }
      if(mouseButton == RIGHT){
        d--;
      }
    }
}
