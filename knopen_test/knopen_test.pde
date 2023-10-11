import controlP5.*;

ControlP5 cp;


Button knop1;

void setup() {
  size(400,400);
  
  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1")
    .setPosition(200, 200)
    .setSize(200,200)
    .setCaptionLabel("Hoi");
}


void draw() {
}
