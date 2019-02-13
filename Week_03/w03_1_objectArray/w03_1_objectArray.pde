// bryan ma for code 2 sp 19

final int NUM_SHAPES = 15;

Vert[] verts = new Vert[NUM_SHAPES];

void setup() {
  size(600, 600);
  
  for (int i = 0; i < NUM_SHAPES; i++) {
    verts[i] = new Vert(i);
  }
}

void draw() {
  for (int i = 0; i < NUM_SHAPES; i++) {
    verts[i].display();
  }
}
