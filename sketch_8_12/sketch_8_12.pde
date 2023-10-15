size(220, 220);
background(255, 255, 255);

int xWaarde = 20;
boolean zwart = true;

for (int i = 0; i < width; i += xWaarde) {
  for (int j = 0; j < height; j += xWaarde) {
    if (zwart) {
      fill(0);
    } else {
      fill(255);
    }
    rect(i, j, xWaarde, xWaarde);
    zwart = !zwart;
  }
  if (width % (2 * xWaarde) == 0) {
    zwart = !zwart;
  }
}
