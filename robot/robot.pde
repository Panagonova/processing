void setup(){
  size(1080, 960);
}

void draw(){
  int x = mouseX;
  int y = mouseY + 70;
  background(0, 0, 255);

  draw_body(x,y);
  draw_legs(x,y);
  draw_head(x,y);
  draw_arms(x,y);
 }
 
void draw_body(int x, int y) {
  fill(0, 255, 0);
  rect(x, y, 100, 160); 
 }
 
 void draw_legs(int x, int y) {
  fill(255, 255, 0);
  rect(x + 40, y + 160, 20, 80);
  rect(x + 25, y + 240, 50, 20); 
 }
 
void draw_arms(int x, int y) {
  rect(x + 45, y + 15 ,12 ,60);
  rect(x + 45, y + 75, 70, 12);
 }
 
 void draw_head(int x, int y) {
  rect(x + 15, y - 70, 70, 70);
  fill(255);
  ellipse(x + 60, y - 55, 10, 10); 
  rect(x + 65, y - 34, 20, 10);
  line(x + 25, y - 70, x + 25, y - 100);
 }
