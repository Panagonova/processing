void setup(){
 size(1000, 600);
}
 
void draw(){
  float x = width/2;
  float y = height/2;
  float radius = 200;
  fill(255, 0, 0);
  
  float rectLeft = x - radius;
  float rectTop = y - radius/4;
  float rectWidth = radius*2;
  float rectHeight = radius/2;
  
  fill(255, 0, 0);
  if (mousePressed){
    float dX = mouseX - x;
    float dY = mouseY - y;
    float distance = sqrt(dX*dX + dY*dY);
   
    if (distance <= radius){
      fill(#0000FF);
    }
  }  
  
  ellipse(x, y, radius*2, radius*2);
  
  fill(#00FF00);
 
  if (mousePressed){
    boolean isOnX = mouseX > rectLeft && mouseX < rectLeft + rectWidth;
    boolean isOnY = mouseY > rectTop && mouseY < rectTop + rectHeight;
    boolean isOverRect = isOnX && isOnY;
   
    if (isOverRect) {
      fill(#0000FF);  
    }
  }
  
  rect( rectLeft, rectTop, rectWidth, rectHeight);

}
