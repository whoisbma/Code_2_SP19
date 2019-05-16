// change the number of ellipses to 100.
// make sure they are mapped to the screen height.
// change the value going into sin() to make a moving wave over time.
// change the amplitude of the wave to fit the whole screen

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  for (int i = 0; i <= 10; i++) {
    ellipse(width/2 + sin(i) * 50, map(i, 0, 10, 0, height), 20, 20);
  }
}
