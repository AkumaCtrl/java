PImage img;

void setup(){
  size(displayWidth, displayHeight);
         img = loadImage("images/Background.jpg");
         img.resize(width, height); //schaal van the afbeelding
}

void draw(){
  background(255);
  image(img, 0, 0);
  
}
void settings(){
  fullScreen();
  
}
