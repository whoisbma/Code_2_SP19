class Vert {
  float x;
  color c;
  float h = random(100, 300);
  
  Vert(int i) {
    x = map(i, 0, NUM_SHAPES, 30, width);
    c = color(map(i, 0, NUM_SHAPES, 0, 255));
  }
  
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, height/2, 20, h);
  }
}
