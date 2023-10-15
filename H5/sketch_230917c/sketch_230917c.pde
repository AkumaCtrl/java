int gewicht1 = 110; // Gewicht in Kg
int lengte1= 180; // lengte in Cm

float lengteInMeters = lengte1 / 100.0;

float bmi=gewicht1 / (lengteInMeters * lengteInMeters);

int afgerondeBMI = Math.round(bmi);


String gewichtText = "Met een gewicht van";
String lengteText = "en een lengte van";
String BMI = "is juiw BMI";
String Folltext = "";

Folltext = gewichtText + " " + gewicht1+" " + lengteText + " " +lengte1 +" " +BMI +" " + afgerondeBMI;


println(Folltext);
