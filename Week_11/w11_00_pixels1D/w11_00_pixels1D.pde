// bryan ma for code 2 sp 19

void setup() {
  size(600, 600);
  loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    pixels[i] = color(map(i, 0, pixels.length, 0, 255));
  }
  updatePixels();
}

void draw() {
  
}
