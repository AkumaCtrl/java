float cijfer1 = 8.0;
float cijfer2 = 6.0;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;



// het was niet de operators het was je structuur vergeet niet dat alles in stappen worden gedaan van boven naar benden
if (cijfer1 >= 5.5 && cijfer2 >= 5.5) {
  diploma = true;
}  if (cijfer1 >= 7.0 && cijfer2 >= 7.0) {
  vrijstelling = true;
}  if (cijfer1 >= 8.0 || cijfer2 >= 8.0) {
  cumlaude = true;
}



if (cumlaude) {
  System.out.println("Gefeliciteerd, je bent cumlaude geslaagd!");
} else if (vrijstelling) {
  System.out.println("Gefeliciteerd, je hebt vrijstelling!");
} else if (diploma) {
  System.out.println("Gefeliciteerd, je hebt een diploma!");
} else {
  System.out.println("Helaas, je bent gezakt.");
}
