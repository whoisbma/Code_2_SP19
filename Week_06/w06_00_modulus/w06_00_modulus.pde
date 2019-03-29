// bryan ma for code 2 sp 19

int x = 0;
int c = 255;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  if (frameCount % 30 == 0) {
    if (c == 255) {
      c = 0;
    } else {
      c = 255;
    }
  }

  fill(c);
  ellipse(x, height/2, 100, 100);
  x = (x + 1) % width;
}
