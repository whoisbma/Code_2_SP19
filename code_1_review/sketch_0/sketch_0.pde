// change the sketch so that each rectangle rotates on its own axis, 
// instead of from the origin point of the sketch. make each rectangle 
// rotate at a different speed.

float rect1Angle = 10;
float rect2Angle = 5;
float rect3Angle = 20;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(100);
  
  rotate(radians(rect1Angle));
  rect(100, height/2, 50, 100);
  
  rotate(radians(rect2Angle));
  rect(250, height/2, 50, 100);
  
  rotate(radians(rect3Angle));
  rect(400, height/2, 50, 100);
}
