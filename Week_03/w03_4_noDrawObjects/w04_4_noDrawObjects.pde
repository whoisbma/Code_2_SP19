// bryan ma for code 2 sp 19 A

final int COLS = 15;
final int ROWS = 15;

Block[][] blocks = new Block[COLS][ROWS];

Ball ball;

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  
  ball = new Ball();
  
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      blocks[i][j] = new Block(i, j);
    }
  }
}

void draw() {
  background(255);
  
  ball.update();
  
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      blocks[i][j].display();
      blocks[i][j].checkCollision(ball.pos.x, ball.pos.y);
    }
  }
}
