int x = 100;
int y = 150;
int w = 200;
int h = 50;
int x1 = 200;
int y1 = 300;


void setup(){
  size(700, 600);
}

void draw(){
  rect(x, y, w, h);
  boolean isOverButton1 =  (mousePressed) &&
                          (mouseX > x) &&
                          (mouseY > y) &&
                          (mouseX < (x + w))&&
                          (mouseY < (y + h));
                            
   boolean isOverButton2 = (mousePressed) &&
                          (mouseX < x1) &&
                          (mouseY > y1) &&
                          (mouseX < (x+w))&&
                          (mouseY < (y1+h));
  rect(x1, y1, w, h);                        
 if((isOverButton2 || isOverButton1)){ 
   fill(0, 255, 0);
 } else {
   fill(255, 0, 0);
 }
}
