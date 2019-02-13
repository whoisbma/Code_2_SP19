class Block {
  int cellSize = width/COLS;
  PVector position;
  color c = color(random(255), random(255), random(255), 0);

  Block(int x, int y) {
    position = new PVector(x * cellSize, y * cellSize);
  }

  void display() {
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    float a = alpha(c);
    a = a - 1;
    c = color(r, g, b, a);
    fill(c);
    rect(position.x, position.y, cellSize, cellSize);
  }

  void checkCollision(float x, float y) {
    if (x > position.x && x < position.x + cellSize &&
      y > position.y && y < position.y + cellSize) {
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      c = color(r, g, b, 255);
    }
  }
}
