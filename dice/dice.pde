int dice=6;
int d=175;

void setup(){
  size(700,800);
}



void draw(){
 background(#001C6C);
  if (mousePressed){
    dice = (int)random(1,7);
  }
  println(dice);

 if (dice ==1 ){
   ellipse(width/2,height/2,d,d);
 }else if(dice== 2){
   ellipse(100,100,d,d);
   ellipse(width-100,height -100,d,d);
 }else if (dice ==3){
    ellipse(100,100,d,d);
    ellipse(width/2,height/2,d,d);
    ellipse(width-100,height -100,d,d);
 }else if(dice==4){
    ellipse(100,100,d,d);
    ellipse(width-100,100,d,d);
    ellipse(100,height -100,d,d);
    ellipse(width-100,height -100,d,d);
      
 }else if(dice==5){
    ellipse(100,100,d,d);
    ellipse(width-100,100,d,d);
    ellipse(width/2,height/2,d,d);
    ellipse(100,height -100,d,d);
    ellipse(width-100,height -100,d,d);
    
 }else if (dice==6){
   ellipse(100,100,d,d);
   ellipse(width-100,100,d,d);
   ellipse(width-100,height/2,d,d);
   ellipse(100 ,height/2,d,d);
   ellipse(100,height -100,d,d);
   ellipse(width-100,height -100,d,d);

}

}
