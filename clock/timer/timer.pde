int min = 0;
int sec = 0;
int hour = 0;
color col = color(255);
boolean isTimerStarted = false;

int startX = 10;
int startY = 120;
int endX = 100;
int endY = 120;
int btnWidth = 80;
int btnHeight = 30;

void setup() {
  size(200, 200);
  frameRate(1);
}

void draw() {
  background(0);
  fill(255);
  rect(startX, startY, btnWidth, btnHeight);
  rect(endX, endY, btnWidth, btnHeight);
  rect(endX, endY, btnWidth, btnHeight);
  textSize(15);
  fill(0);
  text("Start", startX + 25, 140);
  text("Stop", endX + 25, 140);
  
  if (isTimerStarted)
  {
    sec += 1;
  }
  
  if(mousePressed)
  {
    if(mouseX >= startX && mouseX <= startX + btnWidth && mouseY >= startY && mouseY <= startY + btnHeight)
    {
      isTimerStarted = true;
    }
    if(mouseX >= endX && mouseX <= endX + btnWidth && mouseY >= endY && mouseY <= endY + btnHeight)
    {
      if (isTimerStarted == false)
      {
        sec = 0;
        min = 0;
        hour = 0;
      }
      isTimerStarted = false;
    }
  }
  
  //The clockwork
  
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
