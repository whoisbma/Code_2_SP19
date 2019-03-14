// bryan ma for code 2 sp 19

int slide = 0;

color[] slideColors = {
  color(100, 120, 180),
  color(180, 120, 100),
  color(120, 100, 180),
  color(255)
};

void setup() {
  size(600, 600);
}

void draw() {
  background(slideColors[slide]);
}

void keyPressed() {
  switch (slide) {
    case 0:
    case 1:
    case 2:
      advance();
      break;
    case 3:
      break;
    default:
      break;
  }
}

void advance() {
  slide++;
}
