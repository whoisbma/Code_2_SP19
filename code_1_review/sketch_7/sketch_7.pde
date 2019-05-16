// map the fill value of the ellipse so that the closer the mouse is to the
// center, the brighter it is. the fill value should be black if the mouse is 
// outside the ellipse.

void setup() {
  size(400, 400);
}

void draw() {
  background(150, 200, 200);
  fill(255);
  ellipse(width/2, height/2, 300, 300);
}
