import controlP5.*;

ControlP5 cp;


Button knop1;
Button knop2;

void setup() {
  size(800, 800);
  cp = new ControlP5(this);

 knop1 = cp.addButton("Knop1").setPosition(50,50).setSize(100,50).setCaptionLabel("KlikMij");
 knop2 = cp.addButton("Knop2").setPosition(250,50).setSize(100,50).setCaptionLabel("KlikMij");
   
   
}

void draw() {
   background(0,255,0);
  

  
}

void Knop1(){
 println("Hellas fout!");

}
void Knop2(){
  println("Goed gedaan!");

}
