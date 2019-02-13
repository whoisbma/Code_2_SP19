class Ball {
  PVector pos;
  PVector vel;
  float speed = 5;

  Ball() {
    pos = new PVector(width/2, height/2);
    float angle = random(TWO_PI);
    vel = new PVector(cos(angle), sin(angle));
    vel.mult(speed);
  }

  void update() {
    if (pos.x > width || pos.x < 0) {
      vel.x = -vel.x;
    }
    if (pos.y > height || pos.y < 0) {
      vel.y = -vel.y;
    }
    pos.add(vel);
  }
}
