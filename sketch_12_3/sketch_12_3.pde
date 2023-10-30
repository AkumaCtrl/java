
void setup(){
  size(800,800);
  background(0,0,0);
  noStroke();
  colorMode(HSB, height + width, 1,1);
  
}

void draw(){

}

void mouseMoved(){

  fill(mouseX + mouseY,1,1);
    rect(mouseX, mouseY,20,20);
  
}
