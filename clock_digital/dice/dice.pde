int d = 40;
int dice = 6;
void setup(){
   size(500, 500);
}
 void draw(){
   background(#62A250);
   fill(255, 0, 0);
   println("x" + mouseX + "y" + mouseY); 
   if(mousePressed || keyPressed){
     dice = (int)random(1, 7);
   }
   
   if(dice == 1){
     ellipse(width/2, height/2, d, d);
     textSize(50);
     text(dice, 200, 400);
   } else if (dice == 2)
   ellipse(100, 100, d, d);
   ellipse(width - 100, height - 100, d, d);
   textSize(50);
   text(dice,255,255);
    
   } else if(dice == 3){
   ellipse(255,20,d,d);
   ellipse(200,450,d,d);
   textSize(50);
   text(dice,200,400);
 
 }else if(dice == 4){
   ellipse(50, 20, d, d);
   ellipse(450,20,d,d);
   ellipse(50,450, d, d);
   ellipse(460, 450, d, d);
   ellipse(460,450,d,d);
   textSize(50);
   text(dice, 255, 255);
 }else if(dice == 5){
 }
 ellipse(50,20,d,d);
 ellipse(460,20,d,d);
 ellipse(50, 450, d,d);
 ellipse(460,450,d,d);
 ellipse(255,255,d,d);
 textSize(50);
 text(dice,30,300;


} 
}   
