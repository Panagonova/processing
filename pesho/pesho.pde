 int x = 350;
 int y = 300;
 int r = 100;
void setup(){
  size(700, 600);
}

void draw(){

  
  boolean isOnRect = mouseX > (x - 150)+300 && mouseX < (x - 150) && mouseY > (x - 20) && mouseY < (y - 20);
  if(isOnRect){
    
    background(#1B6A79);
    
  }else{
    fill(#745949);
    background(#587449);
 }
   ellipse(x, y, r, r);
   fill(#496A74);
   rect(x - 150, y - 20, 300, 50);
  
}
