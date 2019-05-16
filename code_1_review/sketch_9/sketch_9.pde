// add a conditional check to see if the two ellipses are overlapping.
// if they are, change the background color.

float x = 0;
float y = 0;
float dx = 0;
float dy = 0;

void setup() {
  size(400, 400);
  noStroke();
  x = width/2;
  y = height/2;
  dx = 1.5;
  dy = 2.0;
}

void draw() {

  background(200);

  if (x > width || x < 0) {
    dx = -dx;
  }
  if (y > height || y < 0) {
    dy = -dy;
  }
  x += dx;
  y += dy;

  fill(100);
  ellipse(x, y, 50, 50);

  fill(255);
  ellipse(mouseX, mouseY, 50, 50);
}
