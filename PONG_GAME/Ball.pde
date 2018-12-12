class Ball {
  PVector pos, vel;


  Ball() {
    restart(int(random(1,2)));
  }

  void restart(int whichPlayer) {
    float angle = 0;
    if (whichPlayer ==1) {
      angle = random (-45, 45);
    } else if (whichPlayer == 2) {
      angle = random (135, 225);
    }

    pos = new PVector (width/2, height/2);
    vel = new PVector();
    vel.x = cos(radians(angle));
    vel.y = sin(radians(angle));
    float speed =5;
    vel.mult(speed);
  }


  void checkCollision(Paddle p) {
    if (ball.pos.x < (p.pos.x + p.w) && 
      ball.pos.x > (p.pos.x) &&
      ball.pos.y > (p.pos.y) && 
      ball.pos.y < (p.pos.y + p.h)) {

      ball.vel.x = -ball.vel.x;
    }
  }

  void update() {
    if (pos.y> height || pos.y < 0) {
      vel.y = -vel.y;
    }

    pos.add(vel);

    if (pos.x < 0) {
      restart(2);
      score2++;
    }
    if (pos.x > width) {
      restart(1);
      score1++;
    }
  }

  void display() {
    rectMode (CENTER);
    fill(255);
    rect(pos.x, pos.y, 25, 25);
  }
}
