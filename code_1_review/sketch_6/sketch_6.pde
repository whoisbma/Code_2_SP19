// replace the x and y series of integers with two arrays of integers instead.
// in the draw loop, replace the individual ellipse() calls with a loop.
// the result should look the same.

int x1 = 50;
int x2 = 120;
int x3 = 200;
int x4 = 280;
int x5 = 350;

int y1 = 50;
int y2 = 52;
int y3 = 48;
int y4 = 58;
int y5 = 51;

void setup() {
  size(400, 100);
}

void draw() {
  background(50);
  ellipse(x1, y1, 50, 50);
  ellipse(x2, y2, 50, 50);
  ellipse(x3, y3, 50, 50);
  ellipse(x4, y4, 50, 50);
  ellipse(x5, y5, 50, 50);
}
