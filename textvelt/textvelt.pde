import controlP5.*;

ControlP5 cp;


Textfield TF1;
Button knop1;


void setup() {
  size(800, 800);
  cp = new ControlP5(this);
// dit maak een text velt 
TF1 = cp.addTextfield("TextField1").setText("Hoi").setSize(200,50).setPosition(200,200).setCaptionLabel("");
knop1 = cp.addButton("Knop1").setCaptionLabel("Tadaa");

}

void draw() {
   
  
}

void Knop1(){
   background(0,0,0);
  text("Dit staat er in het veld:" + TF1.getText(),100,100);

}
