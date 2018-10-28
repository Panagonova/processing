PImage clock;

void setup(){
  size(600, 600);
  clock = loadImage("clock.png");
}

void draw(){
    background(#6CED4A);
    noFill();
    strokeWeight(5);
    stroke(#0D426C);
    ellipse(width/2, height/2, width - 10, height - 10);
    line(width/2, height/2, 150, 150);
    
    float alphaSec = radians(second() * 360 / 60) - PI / 2;
    float xSec = 200 * cos(alphaSec) + width/2;
    float ySec = 200 * sin(alphaSec) + height/2;
    stroke(#236C0D);
    strokeWeight(2);
    line(width/2, height/2, xSec, ySec);
    
    
    println(hour());
    
    float secAngle = radians ((second() * 300 / 60)) - PI/2;
    
} 
