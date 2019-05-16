// recreate this sketch by encapsulating the rotating rectangle in a class.
// the draw() loop should only contain the display() and update() methods of the object.

float x;
float y;
float angle = 0;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
}

void draw() {
  background(100);
  translate(x, y);
  rectMode(CENTER);
  noStroke();
  fill(map(angle, 0, 360, 0, 255));
  rotate(radians(angle));
  angle = (angle + 3) % 360;
  rect(0, 0, 100, 20);
}
