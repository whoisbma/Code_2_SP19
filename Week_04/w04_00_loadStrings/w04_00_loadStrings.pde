// bryan ma for code 2 sp 19 A

String[] data;

void setup() {
  data = loadStrings("dataPos.txt");
  
  size(600, 600);
  String[] splitData = data[0].split(",");
  String[] splitDataSiz = data[1].split(",");
  for (int i = 0; i < splitData.length; i++) {
    ellipse(50 + int(splitData[i]) * 100, height/2, int(splitDataSiz[i]), int(splitDataSiz[i]));
  }
}

void draw() {
  
}
