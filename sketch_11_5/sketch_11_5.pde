String zoekNaam = "Rob";
Boolean  gevonden = false;
String[] namen = {"Rachel", "Ross", "Monica", "Chandler", "Joey", "Phoebe" };

void setup(){
  for(int i = 0; i < namen.length; i++){
    if(zoekNaam == namen[i]){
      gevonden = true;
    }
    
    
  }
    if (gevonden){
      println(" Ja de naam " + zoekNaam + " bestaat! " );
    }else{
      println( " Helaas de naam " + zoekNaam + " ken ik niet! " );
    }
}
