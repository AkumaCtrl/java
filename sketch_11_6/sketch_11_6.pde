int[] getallen = {5, 7, 9, 13, 13, 17, 18, 22, 35, 44 }; // array met 10 elementen

void setup() {
  size(200, 100);

  // Zoek naar de waarden die je zoekt
  int zoekwaarde = 13;

  // Tel hoe vaak de zoekwaarde voorkomt in de array
  int aantalKeer = 0;
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == zoekwaarde) {
      aantalKeer++;
    }
  }

  // Druk de array, zoekwaarde en het aantal keer af
  printArray(getallen);
  println("We zoeken naar het getal: " + zoekwaarde);
  if (aantalKeer > 0) {
    println(" Dit getal komt " + aantalKeer + " Keer voor in de array! " );
  } else {
    println("Dit getal komt niet voor in de array " );
  }
}
