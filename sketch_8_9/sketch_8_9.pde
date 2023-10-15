size(500, 500);
background(255, 255, 255);

int sizeC = 90;

for (int i = 0; i < 10; i++) {
  ellipse(100 - sizeC/2, 50, sizeC, sizeC );
  println("Grootte van de cirkel: " + sizeC); // Deze regel toont de grootte in de console
  sizeC -= 10;
}
