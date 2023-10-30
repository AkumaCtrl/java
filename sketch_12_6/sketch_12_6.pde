int x, y;
int squareSize = 50;

void setup() {
  size(400, 400);
  x = width / 2;
  y = height / 2;
  rectMode(CENTER);
}

void draw() {
  background(220);
  rect(x, y, squareSize, squareSize);
}

void keyPressed() {
  //dit gebruikt de pile toetsen in plaats van wasd 
  // de nummering bepaalt hoe veel blockjes hij nar een righting gaat dit kun je bebruiken voor snel hijd aan te passen van de bewgigen
  if (keyCode == LEFT) {
    x -= 10;
  } else if (keyCode == RIGHT) {
    x += 10;
  } else if (keyCode == UP) {
    y -= 10;
  } else if (keyCode == DOWN) {
    y += 10;
  }
}
