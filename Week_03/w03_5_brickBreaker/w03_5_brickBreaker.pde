// bryan ma for code 2 sp 19 A

Player player;
Ball ball;
Brick[][] bricks = new Brick[10][5];

boolean rightPressed = false;
boolean leftPressed = false;

void setup() {
  size(900, 600);
  player = new Player();
  ball = new Ball();

  for (int i = 0; i < bricks.length; i++) {
    for (int j = 0; j < bricks[0].length; j++) {
      bricks[i][j] = new Brick(5 + i * 90, 50 + j * 40, 80, 20);
    }
  }
}

void draw() {
  background(10);
  player.update();
  player.display();

  ball.update();
  ball.display();

  if (ball.pos.x > player.x - player.w/2 && ball.pos.x < player.x + player.w/2 &&
    ball.pos.y > player.y - player.h/2 && ball.pos.y < player.y + player.h/2) {
      
    ball.angle = random(PI, TWO_PI);
    ball.vel = new PVector(cos(ball.angle), sin(ball.angle));
    ball.vel.mult(ball.speed);
    ball.pos.add(ball.vel);
  }

  for (int i = 0; i < bricks.length; i++) {
    for (int j = 0; j < bricks[0].length; j++) {
      if (bricks[i][j].active) {
        bricks[i][j].display();
        if (ball.didCollideWithBrick(bricks[i][j])) {
          bricks[i][j].active = false;
        }
      }
    }
  }
}
