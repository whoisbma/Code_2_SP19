// bryan ma for code 2 sp 19

ArrayList<Branch> branches = new ArrayList<Branch>();

void setup() {
  size(800, 600);
  createBranch(new PVector(width/2, height), -PI/2, 150);
}

void draw() {
  background(255);
  for (Branch branch : branches) {
    branch.display();
  }
  
}

void createBranch(PVector start, float angle, float len) {
  branches.add(new Branch(start.copy(), angle, len));
  PVector fromAngle = PVector.fromAngle(angle);
  fromAngle.mult(len);
  PVector end = PVector.add(start, fromAngle);
  len *= random(0.6, 0.8);
  if (len > 2) {
    createBranch(end, angle - PI/random(5,15), len);
    createBranch(end, angle + PI/random(5,15), len);
  }
}

class Branch {
  PVector start, end, line;
  float angle;
  float strokeWeight;

  Branch(PVector startPoint, float angle, float len) {
    start = startPoint.copy();
    line = PVector.fromAngle(angle);
    line.mult(len);
    strokeWeight = map(len, 10, 150, 1, 10);
  }

  void display() {
    pushMatrix();
    translate(start.x, start.y);
    strokeWeight(strokeWeight);
    line(0, 0, line.x, line.y);
    
    popMatrix();
  }
}
