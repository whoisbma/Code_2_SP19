// bryan ma for code 2 sp 19

String strToCompare = "Hello 123 abc";

void setup() {
  if (strToCompare == "Hello 123 abc") {
    println("the equality operator (==) is unreliable for comparing strings. don't use it for strings.");
  } else {
    println("you should always compare strings with the .equals() method, not the equality operator (==).");
  }
  
  if (strToCompare.equals("Hello 123 abc")) {
    println("use the equals() method. this will always work.");
  }
}

void draw() {
  
}
