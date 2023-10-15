void setup(){
size(900,600);

}
void draw(){
background(255,255,255);

// Dit maak een horzon taile lijne van 210 pixels
line(10,10,210,10);
fill(255,255,255);
rect(10,50,200,100);
// Dit zet text onder de tekening
fill(0,0,0);
text("Lijn",100,30);

fill(255,0,255);
rect(350,50,200,100);
ellipse(450,100,200,100);

fill(0,0,0);
text("Reghthoek",80,200);
 
fill(255,255,255);
rect(10,250,200,100,20);

fill(0,0,0);
text("Gevulde rechthoek met ovaal",380,200);

fill(255,255,255);
ellipse(750,100,200,100);

fill(0,0,0);
text("Afgeronde rechthoek",60,400);

// een taard diagram samen met ardc metoden en radians 
fill(255,0,255);
arc(750, 100, 200, 100, radians(320), radians (360));

fill(0,0,0);
text("taartpunt met ovaal eromheen",680,200);

fill(255,0,255);
arc(450,300,300,150,0,2*PI);

fill(0,0,0);
text("Gevulde ovaal",420,400);


fill(255,255,255);
arc(750,300,150,150,0,2*PI);


fill(0,0,0);
text("cirkel",740,400);
}
