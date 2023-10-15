import controlP5.*;

int j = 0;
int k = 0;
int c = 0;
int v = 0;
int Total = 0;

ControlP5 cp;


Button knop1;
Button knop2;
Button knop3;
Button knop4;


void setup() {
  size(800, 800);
  cp = new ControlP5(this);

 
  //locatie size en caption van de butten1
  knop1 = cp.addButton("Knop1").setCaptionLabel("Studenten").setSize(200, 50).setPosition(500, 200);
  ;

  
  //locatie size en caption van de butten2
  knop2 = cp.addButton("Knop2").setCaptionLabel("Ouders").setSize(200, 50).setPosition(110, 200);
}

void draw() {
  background(0, 0, 0);
  
  textSize (40);
   text ("The total amount of people present is: " + Total, 30, 80);
   
   textSize (40);
   text ("The total amount of students present is: " + k, 30, 760);
   text ("The total amount of parents present is: " + j, 30, 660);
  

}

void Knop1() {
Total++;
k++;
println("The amount of students present is: " + k);
}


void Knop2(){
Total++;
j++;
println("The amount of parents present is: " + j);
}
