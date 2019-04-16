// reminder sketch - removing objects from an arraylist
// bryan ma for code 2 sp 19

ArrayList<PVector> positions = new ArrayList<PVector>();

void setup() {
  size(500, 500);
  
  for (int i = 0; i < 100; i++) {
    positions.add(new PVector(random(width), random(height)));
  }
  
  noStroke();
}

void draw() {
  background(80);
  
  fill(255, 50, 80);
  ellipse(mouseX, mouseY, 25, 25);
  
  fill(255);
  for (int i = positions.size() - 1; i >= 0; i--) {
    PVector p = positions.get(i);
    ellipse(p.x, p.y, 10, 10);
    
    if (dist(mouseX, mouseY, p.x, p.y) < 20) {
      positions.remove(i);
    }
  }
}
