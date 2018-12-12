Ball ball;
Paddle p1;
Paddle p2;

boolean p1up, p1down, p2up, p2down;
int score1;
int score2;

void keyPressed() {
  if (key != CODED) {
    if (key == 's') {
      p1up = true;
    } else if (key == 'w') {
      p1down = true;
    }
  } else {
    if (keyCode == DOWN) {
      p2up = true;
    } else if (keyCode == UP) {
      p2down = true;
    }
  }
}

void keyReleased() {
  if (key != CODED) {
    if (key == 's') {
      p1up = false;
    } else if (key == 'w') {
      p1down = false;
    }
  } else {
    if (keyCode == DOWN) {
      p2up = false;
    } else if (keyCode == UP) {
      p2down = false;
    }
  }
}


void setup() {
  size(1200, 750);
  ball = new Ball();
  p1 = new Paddle(1);
  p2 = new Paddle(2);

}

void draw () {
  background(0);
  ball.update();
  ball.display();

  p1.update(p1up, p1down);
  p1.display();

  p2.update(p2up, p2down);
  p2.display();

  ball.checkCollision(p1);
  ball.checkCollision(p2);
  
  fill(random(255), random(255),random(255));
  textSize(42);
  textAlign(CENTER, CENTER);
  text(score1, (random(30, 550)), random(30,700));
  text(score2,(random(650, 1150)), random(30,700));
  
  drawCenterLine();
}

void drawCenterLine(){
  rectMode(CENTER);
  fill(255);
for (int i= 0; i < height; i+=30){
  rect(width/2, i, 5,15);
}
}
