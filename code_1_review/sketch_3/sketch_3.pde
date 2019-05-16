// fix the while loop so that it doesn't crash the program.

void setup() {
  size(500, 500);
  int numEllipses = 0;
  while (numEllipses < 100) {
    ellipse(random(width), random(height), 30, 30);
  }
}

void draw() {
  
}
