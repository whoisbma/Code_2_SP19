// bryan ma for code 2 sp 19

Shape[] shapes = new Shape[100];

void setup() {
  size(600, 600);
  for (int i = 0; i < shapes.length; i++) {
    float r = random(1);
    if (r > 0.5) {
      shapes[i] = new Circle();
    } else {
      shapes[i] = new Square();
    }
  }
}

void draw() {
  background(200);
  for (int i = 0; i < shapes.length; i++) {
    shapes[i].display();
  }
}
