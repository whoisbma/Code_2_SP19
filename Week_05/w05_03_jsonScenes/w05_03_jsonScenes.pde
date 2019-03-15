// bryan ma for code 2 sp 19 A

int rows = 12;
int cols = 12;
int cellsize = 600/rows;
int NUM_SCENES = 5;
int scene = 0;

int timer = 0;

JSONObject data;

Block[][] blocks = new Block[rows][cols];

int[][][] levels;

void setup() {
  size(600, 600);

  data = loadJSONObject("data.json");

  JSONArray levelsData = data.getJSONArray("levels");
  levels = new int[rows][cols][levelsData.size()];
  
  for (int i = 0; i < levelsData.size(); i++) {
    JSONArray levelData = levelsData.getJSONArray(i);
    for (int j = 0; j < levelData.size(); j++) {
      JSONArray row = levelData.getJSONArray(j);
      for (int k = 0; k < row.size(); k++) {
        levels[j][k][i] = row.getInt(k);
      }
    }
  }

  loadLevel(0);
}

void keyPressed() {
  switch (scene) {
  case 0:       
    break;
  case 1:
  case 2: 
  case 3: 
    changeState();
    break;
  case 4:
    break;
  }
}

void loadLevel(int whichLevel) {
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (levels[j][i][whichLevel] == 0) {
        blocks[j][i] = new DarkBlock(i, j);
      } else {
        blocks[j][i] = new LightBlock(i, j);
      }
    }
  }
}

void draw() {
  background(255);

  boolean shouldChangeLevel = true;

  switch (scene) {
    case 0:
      timer++;
      if (timer > 120) {
        changeState();
      }
      background(255);
      fill(0);
      textSize(64);
      text("the game title", 100, 100);
      break;
    case 1:
    case 2:
    case 3:
      for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
          blocks[j][i].display();
          blocks[j][i].update();
          if (blocks[j][i].c > 0) {
            shouldChangeLevel = false;
          }
        }
      }
      if (shouldChangeLevel) {
        changeState();
      }
      break;
    case 4:
      background(255);
      fill(0);
      textSize(64);
      text("you win!", 100, 100);
    }
}

void changeState() {
  scene++;
  switch (scene) {
    case 0:
      break;
    case 1:
      loadLevel(0);
      break;
    case 2:
      loadLevel(1);
      break;
    case 3:
      loadLevel(2);
      break;
    case 4:
      break;
    default:
      break;
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

  void update() {
    if (mouseX > pos.x && mouseX < pos.x + cellsize &&
      mouseY > pos.y && mouseY < pos.y + cellsize) {
      c = 0;
    }
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
    c = 0;
  }
}
