class Circle extends Shape {
  Circle() {
    super();
  }
  void display() {
    fill(255, 100);
    ellipse(pos.x, pos.y, 50, 50);
  }
}
