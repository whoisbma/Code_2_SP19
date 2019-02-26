// bryan ma for code 2 sp19 A

// replace the sizes integer array with csv data loaded externally.

int[] sizes = { 300, 500, 100, 200, 400, 300, 500, 200 };

void setup() {
  size(800, 600);

  rectMode(CENTER);

  for (int i = 0; i < sizes.length; i++) {
    float x = map(i, 0, sizes.length - 1, 100, 700);
    float y = height/2;
    float w = 50;
    float h = sizes[i];
    rect(x, y, w, h);
  }
}

void draw() {
}
