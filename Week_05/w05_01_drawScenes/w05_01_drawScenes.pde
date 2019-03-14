// bryan ma for code 2 sp 19

int scene = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0);
  switch (scene) {
    case 0:
      ellipse(200, 200, 100, 100);
      break;
    case 1:
      rect(300, 300, 100, 100);
      break;
    case 2:
      triangle(0, 0, width, 0, width/2, height);
      break;
    case 3:
      text("fin", 100, 100);
      break;
    default:
      break;
  }
}

void keyPressed() {
  switch (scene) {
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
  scene++;
}
