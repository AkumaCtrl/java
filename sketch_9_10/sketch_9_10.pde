void setup(){
size(400,400);
background(255);
}

void draw(){
background(255);


  drawTree(100, height, 50,120,15);
  drawTree(250, height, 40, 90, 14);
  drawTree(350, height, 60, 120, 16);
}


void drawTree(float x, float y, float crownSize, float trunkHeight, float lineThickness) {
  // Teken de stam van de boom
  stroke(160, 119, 99); // Bruine kleur
  strokeWeight(lineThickness);
  line(x, y, x, y - trunkHeight);
    
   
  // Teken drie cirkels voor de kruin van de boom
  noStroke();
  fill(34, 139, 34); // Groene kleur
  ellipse(x - crownSize, y - trunkHeight - crownSize, crownSize * 2, crownSize * 2);
  ellipse(x, y - trunkHeight - crownSize * 1.5, crownSize * 2, crownSize * 2);
  ellipse(x + crownSize, y - trunkHeight - crownSize, crownSize * 2, crownSize * 2);
}
