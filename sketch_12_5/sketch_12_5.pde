int x1, y1, x2, y2;

void setup() {
  size(400, 400);
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = 0;
  background(220);
}

void draw() {
  stroke(0);
  line(x1, y1, x2, y2);
}

void mousePressed() {
  x1 = x2;
  y1 = y2;
  x2 = mouseX;
  y2 = mouseY;
}
