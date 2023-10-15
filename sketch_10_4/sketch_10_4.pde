import controlP5.*;

int mijnGetal;
String mijnString;

ControlP5 cp;

Textfield TF2;
Textfield TF1;
Button knop1;
Button knop2;

void setup() {
  size(800, 800);
  cp = new ControlP5(this);

  TF1 = cp.addTextfield("TextField1").setText("Type een naam").setSize(200, 50).setPosition(200, 200).setCaptionLabel("");
  TF1.setAutoClear(false);
  //locatie size en caption van de butten1
  knop1 = cp.addButton("Knop1").setCaptionLabel("Welkom").setSize(200, 50).setPosition(410, 400).setCaptionLabel("botter");
;
  
    TF2 = cp.addTextfield("TextField2").setText("Type een naam").setSize(200, 50).setPosition(200, 400).setCaptionLabel("");
    TF2.setAutoClear(false);
     //locatie size en caption van de butten2
    knop2 = cp.addButton("Knop2").setCaptionLabel("Welkom").setSize(200, 50).setPosition(410, 200).setCaptionLabel("kaas");
}

void draw() {
  background(0, 0, 0);
}

void Knop1() {

  println("Hoi dit is mijn naam:" + TF1.getText());
  
    mijnString = TF1.getText();
    mijnGetal = Integer.valueOf(mijnString);
    println(mijnGetal);


}

void knop2(){

 println("Hoi dit is mijn naam:" + TF2.getText());
  
    mijnString = TF2.getText();
    mijnGetal = Integer.valueOf(mijnString);
    println(mijnGetal);
}
