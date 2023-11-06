char[] teRadenWoord; // Het woord om te raden
char[] geradenWoord;
String[] words = {"koekje", "taart", "pudding", "slagroom", "appeltaart" };
int maxFouten = 10;
int fouten = 0;
boolean gameOver = false;
String geradenLetters = "";
String foutGeradenLetters = "";

//button varibalen

import controlP5.*;
ControlP5 cp;
Button ResetButton;

void setup() {
  
  cp = new ControlP5(this);
  
 ResetButton = cp.addButton("ResetButton").setPosition(160, 750).setSize(600, 100).setCaptionLabel("Reset");
 
 
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
  background(20,150,220);
  textSize(24);
  
  
  //recht hoeken om het een betje mooiter te maken
  fill(90,140,180);
  //galgje tekening fak
  rect(510, 70, 370, 550);
  //goed of fout geraden letters fak
  rect(20, 70, 470, 90);
  //word display fak
  rect(20, 170, 470, 450);
  //gewonen of verloren fak
  rect(20, 650, 860, 70);
  
  // text om aan te geven hoe veel fouten je hebt en welke letter je hebt geraden
  fill(0);
  text("Goed Geraden letters: " + geradenLetters, 35, 95);
  fill(0);
  text("Fouten: " + fouten, 35, 145);
  fill(0);
  text("Fout Geraden letters: " + foutGeradenLetters, 35, 120);

  fill(0);
  textSize(40);
  text(String.copyValueOf(geradenWoord), 160, 355);

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
  if (new String(teRadenWoord).equals(new String(geradenWoord))) {
    fill(0);
    textSize(32);
    text("Gefeliciteerd! Je hebt het woord geraden: " + new String(geradenWoord), 100, 700);
    gameOver = true;  
}

  // Controleer dat je offer de max fouten gaat
  if (fouten >= maxFouten) {
  fill(0);
  textSize(32);
  text("Helaas, je hebt verloren. Het woord was: " + new String(teRadenWoord), 100, 700);
  gameOver = true;
}
}


void keyTyped() {
  if (!gameOver) {
    char gok = key;
    if (letterInWord(gok)) {
      setLetter(gok);
      geradenLetters += gok;
    } else {
      fouten++;
      foutGeradenLetters += gok;
    }
  }
}
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

void ResetButton(){
String gekozenWoord = words[int(random(words.length))];
  teRadenWoord = new char[gekozenWoord.length()];
  geradenWoord = new char[gekozenWoord.length()];
  for (int i = 0; i < gekozenWoord.length(); i++) {
    teRadenWoord[i] = gekozenWoord.charAt(i);
    geradenWoord[i] = 'x';
  }
  fouten = 0;
  foutGeradenLetters = "";
  geradenLetters = "";
  gameOver = false;
}
