//3.b I det globale scope, erklær en variabel af typen String med navnet address
String address;
//3.c Tilføj erklæring af en variabel som gemmer summen af to heltal
//Der skal gemmes summen af to heltal, da det er heltal der skal bruges skal man bruge datatypen "int"
int sum; 
//3.d gør det samme med en variabel som gemmer resultatet 
float divisionOfNumbers; 
//3.e Gør det samme med en variabel som gemmer en besked til brugeren 
//Da det er en tekst type der skal gemmes er det datatypen String der skal bruges. 
String message; 

//4.b I setup metoden, tildel værdier til de variable du har erklæret i det globale scope. 
//I dette tilfælde er address variablen og "Vesterbro" er værdien. 
void setup(){
  address = "Vesterbro";
  sum = 10 + 20; 
  divisionOfNumbers = 50.0/3.0; 
  message = "Good luck";

//4.c Med println kommandoen, udskriv alle variablene, med et label foran. 
println("Adress: "+address);
println("Sum af to heltal: "+sum);
println("Resultat af division: "+divisionOfNumbers); 
println("Besked til brugeren: "+message); 

//4.d Tildel helt nye værdier til variablene, og udskriv dem igen. Genbrug evt dine println kommandoer.
//Nye værdier 
address = "Ryttegårdsvej 20";
sum = 30 + 40;
divisionOfNumbers = 10.0/2.0;
message = "velkommen til systemet";

//4.e Tildel nye værdier til variablene, men som tilføjelser.
println("Ny adresse: "+address);
println("Ny sum: " +sum);
println("Nyt resultat af division: " +divisionOfNumbers);
println("Ny besked til brugeren: " +message);

//4.f Tæl alle de numeriske variable op med 1. Udskriv.
sum += 1;
divisionOfNumbers += 1;

println("sum af heltal +1: " +sum);
println("divisionOfNumbers +1: " +divisionOfNumbers);

//4.g Tæl alle de numeriske variable op med 3. Udskriv. 
sum += 3;
divisionOfNumbers +=3;

println("sum af heltal +3: " +sum);
println("divisionOfNumbers +3: " +divisionOfNumbers);

//4.h Tæl alle de numeriske variable ned med 1. Udskriv.
sum -= 1;
divisionOfNumbers -= 1;

println("sum af heltal -1: " +sum);
println("divisionOfNumbers -1: " +divisionOfNumbers);
}
