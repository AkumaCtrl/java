size(500, 500);
background(255, 255, 255);

int sizeC = 90;
int x = 0;
for (int i = 0; i < 50; i++) {
  ellipse(x, 250,  sizeC, sizeC);
  println("Grootte van de cirkel: " + sizeC); // Deze regel toont de grootte in de console
  sizeC -= 20;
  x += 10;
}
