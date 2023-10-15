import controlP5.*;

float mijnGetal =  0;

ControlP5 cp;

Textfield TF1;
Button knop1;

void setup() {
  size(300, 300);
  cp = new ControlP5(this);

  TF1 = cp.addTextfield("TextField1").setText("Voer de prijs in").setSize(90, 50).setPosition(170, 30).setCaptionLabel("");
  TF1.setAutoClear(false);
  knop1 = cp.addButton("Knop1").setCaptionLabel("Bereken prijs + BTW").setSize(150, 50);
}

void draw() {
  
  background(0, 0, 0);
}

void Knop1() {

  mijnGetal = Integer.valueOf(TF1.getText());
  text(TF1.getText("Ingevoerde prijs: "  + mijnGetal * 1.21),100,100);
 // println("Ingevoerde prijs: "  + mijnGetal * 1.21);
}
