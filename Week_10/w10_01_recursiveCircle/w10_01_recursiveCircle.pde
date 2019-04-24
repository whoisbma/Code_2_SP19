// bryan ma for code 2 sp 19

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  float shrinkPct = map(mouseX, 0, width, 0, 0.95);
  recCircle(width/2, height/2, width, shrinkPct);
}

void recCircle(int x, int y, float radius, float pct) {
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    radius *= pct;
    recCircle(x, y, radius, pct);
  }
}
