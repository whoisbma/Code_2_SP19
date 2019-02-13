class Square extends Shape {
  Square() {
    super();
  }
  void display() {
    fill(0, 100);
    rectMode(CENTER);
    rect(pos.x, pos.y, 50, 50);
  }
}
