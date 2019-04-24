float theta = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  strokeWeight(1);
  translate(width/2, height);
  branch(150);
}

void branch(float len) {
  line(0, 0, 0, -len);
  theta = map(mouseX, 0, width, 5, 40);
  translate(0, -len);
  len *= map(mouseY, 0, height, 0.2, 0.7);

  if (len > 2) {
    pushMatrix();
    rotate(radians(theta));
    branch(len);
    popMatrix();

    pushMatrix();
    rotate(radians(-theta));
    branch(len);
    popMatrix();
  }
}
