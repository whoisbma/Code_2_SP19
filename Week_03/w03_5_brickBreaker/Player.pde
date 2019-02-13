class Player {
  float x;
  float y;
  float h;
  float w;
  
  Player() {
    x = width/2;
    y = height - 75;
    h = 20;
    w = 100;
  }

  void update() {
    if (rightPressed) {
      x+=7;
    }
    
    if (leftPressed) {
      x-=7;
    }
  }

  void display() {
    rectMode(CENTER);
    fill(255);
    rect(x, y, w, h);
  }
}
