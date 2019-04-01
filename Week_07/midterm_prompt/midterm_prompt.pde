int button1x = 180;
int button1y = 200;
color button1BG = color(230, 255, 200);
String button1Text = "button 1 pressed!";

int button2x = 420;
int button2y = 200;
color button2BG = color(255, 200, 230);
String button2Text = "button 2 pressed!";

color bgColor = color(230);
int buttonSize = 125;
String textToShow = "";

void setup() {
  size(600, 600);
}

void draw() {
  background(bgColor);
  
  if (dist(mouseX, mouseY, button1x, button1y) < buttonSize/2 && mousePressed) {
    textToShow = button1Text;
    bgColor = button1BG;
    fill(0);
  } else {
    fill(255);
  }
  ellipse(button1x, button1y, buttonSize, buttonSize);
  
  if (dist(mouseX, mouseY, button2x, button2y) < buttonSize/2 && mousePressed) {
    textToShow = button2Text;
    bgColor = button2BG;
    fill(0);
  } else {
    fill(255);
  }
  ellipse(button2x, button2y, buttonSize, buttonSize);
  
  fill(0);
  textAlign(CENTER);
  textSize(28);
  text(textToShow, width/2, 400);
}
