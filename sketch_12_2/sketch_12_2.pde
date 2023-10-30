int seconden;
int leftAmount;
int millisLeft;
int aantalSpaties = 0;
boolean racing = true;

void setup(){
size(500,500);

}

void draw(){
  background(255,255,255);
  seconden = millis()/1000;
  leftAmount = 10 - seconden;
  millisLeft = 1000 - (millis()&1000);
  
  if(!racing){
    leftAmount = 0;
    millisLeft = 0;
  }
  if(seconden >= 10){
    racing = false;
  }
  
 //dit laat zien hoe veel keer spatie je klinkt en tijde dat offer is
  fill(0,0,0);
  text("Spaties" + aantalSpaties, 200,200);
  text("seconde left" + leftAmount + "." + millisLeft, 200,220);
}

void keyReleased(){
   if(keyCode == 32 && racing){
    aantalSpaties++;
}
println(key);
println(keyCode);

}
