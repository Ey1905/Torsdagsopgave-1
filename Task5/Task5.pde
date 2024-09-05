//5.a Erklær variablen circleSize som bruges i setup-metoden
float circleSize;

//5.b Erklær variablen numberOfCircles som bruges i både setup- og draw-metoden.
int numberOfCircles;

//5.c Erklær variablene x og y, som bruges i draw-metoden.
float x, y;

//5.d Initialiser de to counter-variable, som bruges i draw-metoden, så de har værdien 0.
int counter = 0;
int rowCounter = 0;

void setup(){
   size(400,400);
  
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
}
void draw(){
  
 
  x = circleSize*counter;
  y = circleSize*rowCounter;
 
 // Un-comment this line after completing step 6.a 
 // fill(red,green,blue);
   
   ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
}
