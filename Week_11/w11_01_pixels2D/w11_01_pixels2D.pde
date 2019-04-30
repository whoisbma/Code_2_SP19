// bryan ma for code 2 sp 19

void setup() {
  size(600, 600);
}

void draw() {
  background(50);
  loadPixels();
  for (int i = width/2 - mouseX/2; i < width/2 + mouseX/2; i++) {
    for (int j = height/2 - mouseY/2; j < height/2 + mouseY/2; j++) {
      int idx = i + j * width;
      pixels[idx] = color(random(255), random(255), random(255));
    }
  }
  updatePixels();
}
