// bryan ma for code 2 sp 19

// example midterm question:

// 1: change the disconnected data of this sketch to use a class to represent individual bubbles. 
//    when you have a Bubble class, load them into an array of Bubbles NUM_BUBBLES in length.
//    the behavior should be the same.

// 2: once you have a Bubble class, make a child class of Bubble that draws something slightly different.
//    store it in the same data structure.

// 3: change xPosition and yPosition to be loaded from external data, instead of by random numbers.

// 4: give the Bubble class its own state. maybe it has a state where the bubbles shrink instead of grow.
//    develop your own logic for how the state transitions.

final int NUM_BUBBLES = 10;

float[] xPositions = new float[NUM_BUBBLES];
float[] yPositions = new float[NUM_BUBBLES];
float[] maxSizes = new float[NUM_BUBBLES];
float[] sizes = new float[NUM_BUBBLES];

void setup() {
  size(600, 600);
  for (int i = 0; i < NUM_BUBBLES; i++) {
    xPositions[i] = random(width);
    yPositions[i] = random(height);
    maxSizes[i] = random(100, 150);
    sizes[i] = random(10, 50);
  }
}

void draw() {
  background(50);
  for (int i = 0; i < NUM_BUBBLES; i++) {
    sizes[i] = (sizes[i] + 1) % maxSizes[i];
    ellipse(xPositions[i], yPositions[i], sizes[i], sizes[i]);
  }
}
