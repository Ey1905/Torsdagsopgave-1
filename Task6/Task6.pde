//5.a Erklær variablen circleSize som bruges i setup-metoden
float circleSize;

//5.b Erklær variablen numberOfCircles som bruges i både setup- og draw-metoden.
int numberOfCircles;

//5.c Erklær variablene x og y, som bruges i draw-metoden.
float x, y;

//5.d Initialiser de to counter-variable, som bruges i draw-metoden, så de har værdien 0.
int counter = 0;
int rowCounter = 0;

//6.a Erklær tre variable af typen int i det globale scope; én for hver af de tre farver rød, grøn og blå.
int red;
int green;
int blue; 

void setup(){
   size(400,400);
  
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
   
//6.b i setup-metoden skal du tildele værdier til de tre variable, så de tilsammen repræsenterer farven hvid.
//Initialiser farverne til hvid
red = 255;
green = 255;
blue = 255;
  
}
void draw(){
// Beregn x- og y-positioner for hver cirkel 
  x = circleSize*counter;
  y = circleSize*rowCounter;

// Ændrer farven kun ved starten af en ny række (når tæller er 0)
 if (counter == 0){
   red = (int)random(256); // Generer en tilfældig værdi mellem 0 og 255 for rød 
   green = (int)random(256); // Generer en tilfældig værdi mellem 0 og 255 for grøn
   blue = (int)random(256); //Generer en tilfældig værdi mellem 0 og 255 for blå
 }

//Tilfældig farve skal bruges.
fill(red,green,blue);
   
   ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
}
