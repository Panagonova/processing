void setup(){
  size(1000, 800);
  strokeWeight(18);
}
int x = 200;
int y = 200;

void draw(){
 point(x, y);
 if(keyPressed && keyCode == UP) y--;
 if(keyPressed && keyCode == DOWN) y++;
 if(keyPressed && keyCode == LEFT) x--;
 if(keyPressed && keyCode == RIGHT) x++;

 if ((x > 100 && x <= 110) || (x>150)) {
   stroke(#2222FF);
 }
 else {
   stroke(#FF2222);
  }
} 
