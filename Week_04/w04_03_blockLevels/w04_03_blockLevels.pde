// bryan ma for code 2 sp 19 A

int whichLevel = 0;
int rows = 12;
int cols = 12;
int cellsize = 600/rows;

Block[][] blocks = new Block[rows][cols];

int[][][] levels = {
  {
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,1,0,0,1,0,0,0,0},
    {0,0,0,0,1,0,0,1,0,0,0,0},
    {0,0,1,0,0,0,0,0,0,1,0,0},
    {0,0,1,0,0,0,0,0,0,1,0,0},
    {0,0,0,1,0,0,0,0,1,0,0,0},
    {0,0,0,0,1,1,1,1,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}
  },
  {
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,1,0,0,0,0},
    {0,0,0,1,1,0,0,1,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,1,0,0},
    {0,0,1,0,0,0,0,0,0,1,0,0},
    {0,0,0,1,0,0,0,0,1,0,0,0},
    {0,0,0,0,1,1,1,1,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}
  },
  {
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,1,0,0,1,0,0,0,0},
    {0,0,0,0,1,0,0,1,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,1,1,1,1,1,1,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}
  },
};

void setup() {
  size(600, 600);
  
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (levels[whichLevel][j][i] == 0) {
        blocks[j][i] = new DarkBlock(i, j);
      } else {
        blocks[j][i] = new LightBlock(i, j);        
      }
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      blocks[j][i].display();
    }
  }
}

void mousePressed() {
  whichLevel = (whichLevel + 1) % levels.length;
  
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (levels[whichLevel][j][i] == 0) {
        blocks[j][i] = new DarkBlock(i, j);
      } else {
        blocks[j][i] = new LightBlock(i, j);        
      }
    }
  }
}

class Block {
  PVector pos;
  float c;

  Block(int row, int col) {
    pos = new PVector(row * cellsize, col * cellsize);
  }

  void display() {
    fill(c);
    rect(pos.x, pos.y, cellsize, cellsize);
  }
}

class LightBlock extends Block {
  LightBlock(int row, int col) {
    super(row, col);
    c = 220;
  }
}

class DarkBlock extends Block {
  DarkBlock(int row, int col) {
    super(row, col);
    c = 50;
  }
}
