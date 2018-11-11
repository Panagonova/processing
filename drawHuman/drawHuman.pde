int xpos = 0;
int ypos = 0;
void setup(){
  size(600, 600);
}
 void draw(){
   background(255, 0, 0);

 int a = doubleNum(10);
 int b = doubleNum(135);
 int c = maxNum(100, 30);
 float deg = deg2rad(180);
 println("a = " + a);
 println("b = " + b);
 println("c = " + c);
 println("degree = " + deg);
   
   if(keyPressed && key == 'a'){
     xpos--;
   }else if(keyPressed && key == 'd'){
     xpos++; 
   }
   else if(keyPressed && key == 'w'){
     xpos--;
   }
   else if(keyPressed && key == 's'){
     xpos++;
   }  
     
   drawHuman(xpos, ypos);
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
    
 int doubleNum(int num){
   return(2*num);
 }
 int maxNum(int num1, int num2){
    if(num1 > num2){
      return num1;
    }else{
      return num2;
    }
 }
 float deg2rad(float degree){
   float rad = (degree 
