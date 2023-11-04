char[] teRadenWoord; // Het woord om te raden
char[] geradenWoord;
String[] words = {"koekje", "taart", "pudding", "slagroom", "appeltaart" };
int maxFouten = 10;
int fouten = 0;



String geradenLetters = "";

void setup() {
  //size(displayWidth, displayHeight);later aan zetten voor full screen mode
  size(900, 900);
  textSize(32) ;
  String gekozenWoord = words[int(random(words.length))];
  teRadenWoord = new char[gekozenWoord.length()];
  geradenWoord = new char[gekozenWoord.length()];
  for (int  i = 0; i< gekozenWoord.length(); i++) {
    teRadenWoord[i] = gekozenWoord.charAt(i);
    geradenWoord[i] = 'x';
  }
}


void draw() {
  background(100);
  textSize(24);
  //recht hoeken om het een betje mooiter te maken
  fill(255);
  rect(510, 50, 370, 550);
  rect(20, 50, 470, 70);
  rect(20, 150, 470, 450);
  rect(20, 650, 860, 70);
  // text om aan te geven hoe veel fouten je hebt en welke letter je hebt geraden

  fill(0);
  text("Goed Geraden letters: " + geradenLetters, 25, 75);
  fill(0);
  text("Fout Geraden letters: " + fouten, 25, 105);


  fill(0);
  textSize(40);
  text(String.copyValueOf(geradenWoord), 180, 355);

  // manier van cordianaten lezen  line(x,y,x2,y2);
  // Tekening van de galg en het poppetje
  if (fouten >= 1) {
    line(550, 500, 850, 500); // De galgbalk onder
  }
  if (fouten >= 2) {
    line(660, 70, 850, 70); // De galgbalk boven
  }
  if (fouten >= 3) {
    line(850, 70, 850, 500); // De galgpaal
  }
  if (fouten >= 4) {
    line(700, 70, 700, 300); // De galtowe
  }
  if (fouten >= 5) {
    fill(255);
    ellipse(700, 220, 60, 60); // Het hoofd
  }
  if (fouten >= 6) {
    line(700, 250, 700, 400); // Het lichaam
  }
  if (fouten >= 7) {
    line(600, 200, 700, 270); // Linkerarm
  }
  if (fouten >= 8) {
    line(790, 200, 700, 270); // Rechterarm
  }
  if (fouten >= 9) {
    line(650, 480, 700, 400); // Rechterbane
  }
  if (fouten >= 10) {
    line(750, 480, 700, 400); // Linkerbane
  }



  // Controleer of het de juist word is
  if (teRadenWoord.equals(geradenWoord)) {
    fill(0);
    textSize(32);
    //text("Gefeliciteerd! Je hebt het woord geraden: " + teRadenWoord, 100, 700);
  }

  // Controleer dat je offer de max fouten gaat
  if (fouten >= maxFouten) {
    fill(0);
    textSize(32);
    //text("Helaas, je hebt verloren. Het woord was: " + teRadenWoord, 100, 700);
  }
}
//void settings(){fullScreen();} later aan zetten voor full screen mode


void keyTyped() {
  if (fouten < maxFouten) {
    char gok = key;
    if (letterInWord(gok)) {
      setLetter(gok);
      geradenLetters += gok;
    } else {
      fouten++;
    }
  }
}
//for(int  i = 0; i< gekozenWoord.length(); i++){
//teRadenWoord[i] = gekozenWoord.charAt(i);
// geradenWoord[i] = 'x';
boolean letterInWord(char letter) {
  for ( int i = 0; i< teRadenWoord.length; i++) {
    if (letter == teRadenWoord[i]) {
      return true;
    }
  }
  return false;
}

void setLetter(char letter) {
  for ( int i = 0; i< teRadenWoord.length; i++) {
    if (teRadenWoord[i] == letter) {
      geradenWoord[i] = letter;
    }
  }
}
