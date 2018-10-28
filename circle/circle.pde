int x = 100;
int y = 80;
int w = 200;
int h = 50;

void setup() {
  size(80, 60);
  stroke(#2222FF);
  strokeWeight(10);
}

void draw() {
  ellipse(x, y, w, h);
  if (mouseX >= x - w/2 && mouseX <= x + w/2) {
    
  fill(#22FF22);
  }
  else {
    fill(#FFFFFF);
  }
