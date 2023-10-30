int seconden;
int milliseconden;
boolean racing = true;
int startTime = 0;
int  gepauzeerdeTijd = 0;


void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);


  if (racing) {
    int huidigeTijd = millis();
    int verstrekenTijd = huidigeTijd - startTime + gepauzeerdeTijd;
    seconden = int(verstrekenTijd / 1000);
    milliseconden = verstrekenTijd % 1000;
  }



  //dit laat zien hoe veel keer spatie je klinkt en tijde dat offer is
  fill(0, 0, 0);
  textSize(32);
  text("Spaties start/stop", 120, 200);
  text("aantal seconde " + seconden + "." +  milliseconden, 120, 240);
}

void keyReleased() {
  if (key == ' ' && !racing) {
    racing = true;
    startTime = millis();
  } else if (key == ' ' && racing) {
    racing = false;
    gepauzeerdeTijd += millis() - startTime; // Tijd bijhouden tijdens het pauzeren
  }
}

void keyPressed() {
  if (key == 'r') {
    // Reset de stopwatch
    racing = false;
    seconden = 0;
    milliseconden = 0;
  }
}
