// bryan ma for code 2 sp 19

void setup() {
  int loopResult = factorialLoop(5);
  println("factorial from loop: " + loopResult);
  int recursionResult = factorialRecursion(5);
  println("factorial from recursion: " + recursionResult);
}

int factorialLoop(int n) {
  for (int i = n; i > 1; i--) {
    n = n * (i - 1);
  }
  return n;
}

int factorialRecursion(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * factorialRecursion(n - 1);
  }
}
