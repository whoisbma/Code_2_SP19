// bryan ma for code 2 sp 19

int state = 0;

String[] descriptions = {
  "You wake up in Code 2 class and don't know what is going on",
  "your eyelids feel so heavy, and you fail to wake up",
  "you feel enlightened by the answer, but still fall asleep"
};

String[][] options = {
  {"try to wake up", "ask a question"},
  {"you sleep"},
  {"struggle to stay awake", "enjoy the sweet surrender of sleep"}
};

int[][] optionTargets = {
  {1, 2},
  {0},
  {1, 0},
};

Scene[] scenes = new Scene[descriptions.length];

void setup() {
  size(600, 600);
  
  for (int i = 0; i < scenes.length; i++) {
    scenes[i] = new Scene(descriptions[i], options[i], optionTargets[i]);
  }
}

void draw() {
  background(255);
  textSize(40);
  fill(0);
  text(scenes[state].displayText, 40, 40, 450, 300);
  
  textSize(24);
  int i = 0;
  for (String option : scenes[state].options) {
    text(i + 1, 30, 450 + i * 50);
    text(option, 70, 450 + i * 50);
    i++;
  }
}

void keyPressed() {  
  for (int i = 0; i < scenes[state].options.length; i++) {
    if (keyCode - 49 == i) {
       state = scenes[state].optionTargets[i];
    }
  }
}

class Scene {
  String displayText;
  String[] options;
  int[] optionTargets;
  
  Scene(String txt, String[] opt, int[] targets) {
    displayText = txt;
    options = opt;
    optionTargets = targets;
  }
}
