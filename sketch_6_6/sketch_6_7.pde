float cijfer = 7.7;
boolean diploma = false;
boolean Vrijstelling = false;

if (cijfer >= 7.0) {
  Vrijstelling = true;
}

if (cijfer >= 5.5) {
  diploma = true;
}

if (diploma && Vrijstelling) {
  println("Gefeliciteerd");
} else if (diploma) {
  println("Gefeliciteerd je hebt een diploma");
} else if (Vrijstelling) {
  println("Gefeliciteerd je hebt vrij stelling");
} else {
  println("Helaas bent gevaald");
}
