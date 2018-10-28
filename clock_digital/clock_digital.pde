float sec = second(), min = minute(), hour = hour();
color col = color(255);
void setup() {
  size(200, 100);
  frameRate(1);
}
void draw() {
  background(0);
  
  //The clockwork
  sec += 1;
  if (sec == 60) { 
    sec = 0;
    min += 1;
  }
  if (min == 60) { 
    min = 0;
    hour += 1;
  }
   if (hour==24) {
     sec = 0;
     min = 0;
     hour = 0;
  }
     
   textSize(30);
   fill(255);
   text(floor(sec),140,50);
   text(floor(min),80,50); 
   text(floor(hour),20,50);
   
   //Bliking Dots
   if(sec % 2 == 0) {
     col = color(255);
   } 
   else {
     col = color(0);
   }
   fill(col);
   ellipse(70,30,8,8);
   ellipse(70,45,8,8);
   ellipse(130,30,8,8);
   ellipse(130,45,8,8);
}
     
