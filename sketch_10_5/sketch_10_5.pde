import controlP5.*;

ControlP5 cp;
int j = 0;
int k = 0;
int Total = 0;
Textfield TF1, TF2;
Button addButton, subtractButton, multiplyButton, divideButton;

void setup() {

  size(800, 300);
  cp = new ControlP5(this);

  // Eerste tekstvak
TF1 = cp.addTextfield("textField1")
  .setPosition(50, 100)
  .setSize(200, 50)
  .setAutoClear(true)
  .setColorBackground(color(255))
  .setColorLabel(color(0, 0, 0))
  .setColorForeground(color(102,102,102))
  .setColorValue(color(0));

  // Tweede tekstvak
  TF2 = cp.addTextfield("textField2")
    .setPosition(270, 100)
    .setSize(200, 50)
    .setAutoClear(true)
    .setColorBackground(color(255))
    .setColorLabel(color(0, 0, 0))
    .setColorForeground(color(102,102,102))
    .setColorValue(color(0));



  //locatie size en caption van de butten1
  addButton = cp.addButton("Knop1")
    .setCaptionLabel("+")
    .setSize(50, 50)
    .setPosition(500,100)
    .setColorBackground(color(255))
    .setColorLabel(color(0, 0, 0))
    .setColorForeground(color(102,102,102))
    .setColorValue(color(0));


  //locatie size en caption van de butten2
  subtractButton = cp.addButton("Knop2")
    .setCaptionLabel("-")
    .setSize(50, 50)
    .setPosition(550, 100)
    .setColorBackground(color(255))
    .setColorLabel(color(0, 0, 0))
    .setColorForeground(color(102,102,102))
    .setColorValue(color(0));



  //locatie size en caption van de butten3

  multiplyButton = cp.addButton("Knop3")
    .setCaptionLabel("*")
    .setSize(50, 50)
    .setPosition(600, 100)
    .setColorBackground(color(255))
    .setColorLabel(color(0, 0, 0))
    .setColorForeground(color(102,102,102))
    .setColorValue(color(0));



  //locatie size en caption van de butten4
  divideButton = cp.addButton("Knop4")
    .setCaptionLabel("/")
    .setSize(50, 50)
    .setPosition(650, 100)
    .setColorBackground(color(255))
    .setColorLabel(color(0, 0, 0))
    .setColorForeground(color(102,102,102))
    .setColorValue(color(0));
}

void draw() {
  background(204, 204, 204);
  fill(0);
  textSize (40);
  text ("The total amount: " + Total, 60, 200);
  

  
}

void Knop1() {
  int j = int(TF1.getText());
 int k = int(TF2.getText());
  Total = j + k;
}


void Knop2() {
 int j = int(TF1.getText());
  int k = int(TF2.getText());
  Total = j - k;
}

void Knop3() {
  int j = int(TF1.getText());
  int k = int(TF2.getText());
  Total = j * k;
}

void Knop4() {
  int j = int(TF1.getText());
 int k = int(TF2.getText());
  if (k != 0) {
    Total = j / k;
  } else {
    Total = 0; // Handle division by zero
  }
}
