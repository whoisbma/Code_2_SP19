class Ball {
  PVector pos;
  float angle;
  float size;
  PVector vel;
  float speed = 5;

  Ball() {
    pos = new PVector(width/2, height/2);
    angle = random(PI, TWO_PI);
    vel = new PVector(cos(angle), sin(angle));
    vel.mult(speed);
    size = 20;
  }

  void update() {
    if (pos.x > width || pos.x < 0) {
      vel.x = -vel.x;
    } else if (pos.y < 0) {
      vel.y = -vel.y;
    }

    pos.add(vel);
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    rect(pos.x, pos.y, size, size);
  }

  boolean didCollideWithBrick(Brick b) {
    if (pos.x > b.x && pos.x < b.x + b.w &&
      pos.y > b.y && pos.y < b.y + b.h) {
      vel.y = -vel.y;
      return true;
    }
    return false;
  }
}
