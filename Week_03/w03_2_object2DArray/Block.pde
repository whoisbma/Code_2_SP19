class Block {
  int cellSize = width/COLS;
  PVector position;
  boolean isActive = false;
  color c = color(random(255), random(255), random(255));

  Block(int x, int y) {
    position = new PVector(x * cellSize, y * cellSize);
  }

  void display() {
    if (isActive) {
      fill(c);
      rect(position.x, position.y, cellSize, cellSize);
    } else {
      if (mouseX > position.x && mouseX < position.x + cellSize &&
        mouseY > position.y && mouseY < position.y + cellSize) {
        isActive = true;
      }
    }
  }
}
