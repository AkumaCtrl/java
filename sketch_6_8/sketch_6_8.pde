float cijfer = 4.0;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;



// het was niet de operators het was je structuur vergeet niet dat alles in stappen worden gedaan van boven naar benden 

if (cijfer >= 8.0) {
  cumlaude = true;
} else if (cijfer >= 5.5) {
  diploma = true;
} else if (cijfer >= 7.0) {
  vrijstelling = true;
}



if (cumlaude) {
  System.out.println("Gefeliciteerd, je bent cumlaude geslaagd!");
} else if (diploma) {
  System.out.println("Gefeliciteerd, je hebt een diploma!");
} else if (vrijstelling) {
  System.out.println("Gefeliciteerd, je hebt vrijstelling!");
} else {
  System.out.println("Helaas, je bent gezakt.");
}
