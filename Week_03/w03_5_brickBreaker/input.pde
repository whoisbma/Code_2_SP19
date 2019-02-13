void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      rightPressed = true;
    } else if (keyCode == LEFT) {
      leftPressed = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      rightPressed = false;
    } else if (keyCode == LEFT) {
      leftPressed = false;
    }
  }
}
