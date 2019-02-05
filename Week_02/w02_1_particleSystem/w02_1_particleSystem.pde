// this was written by Courtney Snavely for her Code 2 section

Snowflakes s;
ArrayList <Snowflakes> mySnow;

void setup() {
  size(800, 600); 
  noStroke(); 
  s = new Snowflakes(random(0, width), 0);
  mySnow = new ArrayList<Snowflakes>();
}

void draw() {
  background(81, 123, 155); 

  for (int i = 0; i < mySnow.size(); i++) {
    Snowflakes s = mySnow.get(i); 
    s.display(); 
    s.fall(); 

    if (s.isAlive() == false) {
      mySnow.remove(i);
    }
  }

  if (frameCount % 10 == 0) {
    mySnow.add(new Snowflakes(random(0, width), 0));
  }
}

class Snowflakes {
  float x, y; 
  color c; 
  int o = 255; 
  float gravity; 
  float size; 

  Snowflakes(float _x, float _y) {
    x = _x; 
    y = _y; 

    gravity = random(1, 3); 
    size = random(5, 15);
  }

  void display() {
    fill(255, o); 
    ellipse(x, y, size, size);
  }

  void fall() {
    y += gravity; 
    o--;
  }

  boolean isAlive() {
    if (y<height) {
      return true;
    } else {
      return false;
    }
  }
}
