// bryan ma for code 2 sp 19

final int COLS = 25;
final int ROWS = 25;

Block[][] blocks = new Block[COLS][ROWS];

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      blocks[i][j] = new Block(i, j);
    }
  }
}

void draw() {
  // loop through all the blocks, update them, draw them
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      blocks[i][j].display();
    }
  }
}
