import controlP5.*;

ControlP5 cp;


Button knop1;

void setup() {
  size(800, 800);
  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1")
    .setPosition(400,400)
    .setSize(400,200)
    .setCaptionLabel("KlikMij");
    

   
}

void draw() {
   background(255,255,255);
  
}

void Knop1(){
 background(255,0,0);

}
