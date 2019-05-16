// change the values computed for x and y so that the rectangle moves in a circle

void setup() {
  size(600, 300);
  rectMode(CENTER);
}

void draw() {
  background(80);
  float x = width/2 + sin(radians(frameCount)) * 50;
  float y = height/2 + sin(radians(frameCount)) * 200;
  rect(x, y, 10, 100);
}
