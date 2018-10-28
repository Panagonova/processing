int dice1=6;
int dice2=6; 
int d=175;
PImage one;
PImage two;
PImage three;
PImage four;
PImage five;
PImage six;

void setup(){
  size(1400, 800);
  one = loadImage("one.jpg");
  two = loadImage("two.jpg");
  three = loadImage("three.jpg");
  four = loadImage("four.jpg");
  five = loadImage("five.jpg");
  six = loadImage("six.jpg");
}



void draw(){
 background(#001C6C);
  if (keyPressed && (key == '1' || key =='3')){
    dice1 = (int)random(1,7);
  }
  if (keyPressed && (key == '2' || key =='3')){
    dice2 = (int)random(1,7);
  }
  
  float dice1Width = width /2;

   if (dice1 == 1) {
     ellipse(dice1Width/2,height/2,d,d);
   }
   else if(dice1 == 2){
     ellipse(100,100,d,d);
     ellipse(dice1Width-100,height -100,d,d);
   }
   else if (dice1 == 3){
      ellipse(100,100,d,d);
      ellipse(dice1Width/2,height/2,d,d);
      ellipse(dice1Width-100,height -100,d,d);
   }
   else if(dice1 == 4){
      ellipse(100,100,d,d);
      ellipse(dice1Width-100,100,d,d);
      ellipse(100,height -100,d,d);
      ellipse(dice1Width-100,height -100,d,d);
   }
   else if(dice1 == 5){
      ellipse(100,100,d,d);
      ellipse(dice1Width-100,100,d,d);
      ellipse(dice1Width/2,height/2,d,d);
      ellipse(100,height -100,d,d);
      ellipse(dice1Width-100,height -100,d,d);       
   }
   else if (dice1 == 6 ){
     ellipse(100,100,d,d);
     ellipse(dice1Width-100,100,d,d);
     ellipse(dice1Width-100,height/2,d,d);
     ellipse(100 ,height/2,d,d);
     ellipse(100,height -100,d,d);
     ellipse(dice1Width-100,height -100,d,d);
  }
  int wight2dice = width/2 + d/2;
    
  if (dice2 == 1 ) {
     image(one, width/2,0, width/2, height);
   }
   else if(dice2 == 2) {
     image(two, width/2,0, width/2, height);
   }
   else if (dice2 == 3) {
      image(three, width/2,0, width/2, height);
   }
   else if(dice2 == 4) {
     image(four, width/2,0, width/2, height);
   }
   else if(dice2 == 5) {
      image(five, width/2,0, width/2, height);
   }
   else if (dice2 == 6) {
    image(six, width/2,0, width/2, height);
  }
}
