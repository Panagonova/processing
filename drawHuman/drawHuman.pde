int xpos = 0;
int ypos = 0;
void setup(){
  size(600, 600);
}
 void draw(){
   background(255, 0, 0);
   if(keyPressed && keyCode == LEFT){
     xpos--;
   }else if(keyPressed && keyCode == RIGHT){
     xpos++; 
   }
   drawHuman(0, 0);
 }
 
 
void makeFigure(int x, int y){
    rect(x,y,200,100);
    ellipse(x,y,50,50);
    }
void drawHuman(int x, int y){
    rectMode(CENTER);
    rect(100 + xpos, 100 + ypos, 20, 100);
    ellipse(100 + xpos, 70 + ypos,60, 60);
    ellipse(81 + xpos, 70 + ypos, 16, 32);
    ellipse(119 + xpos, 70 + ypos, 16, 32);
    line(90 +  xpos, 150 + ypos, 80 + xpos, 160 + ypos);
    line(110 + xpos,150 + ypos,120  + xpos, 160 + ypos);
    }
