int[] getallen = {5, 2, 2, 13, 13, 17, 18, 22, 35, 44 }; // array met 10 elementen

void setup() {
  size(200, 100);

  // Zoek naar de waarden die je zoekt
  int zoekwaarde = 13;
  
  int aantalKeer = telHoeVaakGetalVoorkomt(getallen, zoekwaarde);
  
 
  
  // Druk de array, zoekwaarde en het aantal keer af
  printArray(getallen);
  println("We zoeken naar het getal: " + zoekwaarde);
  if (aantalKeer > 0) {
    println(" Dit getal komt " + aantalKeer + " Keer voor in de array! " );
  } else {
    println("Dit getal komt niet voor in de array " );
  }
  int getal1 = 5;
  int getal2 = 2;
  println(telHoeVaakGetalVoorkomt(getallen, getal1));
  println(telHoeVaakGetalVoorkomt(getallen, getal2));
}
  // Tel hoe vaak de zoekwaarde voorkomt in de array
  int telHoeVaakGetalVoorkomt(int[] array, int zoekwaarde) {
    int aantalKeer = 0;
    for (int i = 0; i < array.length; i++) {
      if (array[i] == zoekwaarde) {
        aantalKeer++;
      }
    }
    return aantalKeer;
  }
