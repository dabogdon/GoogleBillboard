public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
int start=2;
int end=12;
int check49=0;
String digits;
double nums;
boolean primeNum=false;
boolean fifth49=false;
public void setup() {            
  while (primeNum!=true) {
    digits = e.substring(start, end);
    nums = Double.parseDouble(digits);
    isPrime(nums);
    start++;
    end++;
  }
  println("First 10 digit prime in e: "+digits);

  start=2;
  end=12;
  while (fifth49==false) {
    digits = e.substring(start, end);
    //nums = Double.parseDouble(digits);
    fourtynine(digits);
    start++;
    end++;
  }

  println("f(5)="+digits);
}  

public void isPrime(double num) {   
  if (num<2) 
    return;
  for (int i=2; i<=Math.sqrt(num); i++) 
    if (num%i==0) 
      return;
  primeNum=true;
} 

public void fourtynine(String nums) {
  int answer=0;
  for (int i=0; i<10; i++) {
    int add=Integer.parseInt(nums.substring(i, i+1));
    answer+=add;
  }
  if (answer==49) {
    check49+=49;
  }
  if (check49==245) {
    fifth49=true;
  }
}
