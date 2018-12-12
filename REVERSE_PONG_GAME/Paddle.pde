class Paddle {
  PVector pos;
  int w, h;

  Paddle(int whichPlayer) {
    w = 25;
    h = 100;
    if (whichPlayer ==1) {
      pos = new PVector (50, height/2 - h/2);
    } else if (whichPlayer == 2) {
      pos = new PVector (width-50 -w, height/2 -h/2);
    }
  }

  void update(boolean up, boolean down) {
    if (up && pos.y > 5) {
      pos.y -=7;
    }

    if (down && pos.y + h < height -5) {
      pos.y +=7;
    }

    if (frameCount % 15==0) {
      if (score1 == score2) {
        p1.h += 1;
        p2.h += 1;
      }
    }
  }

  void display() {
    rectMode(CORNER);
    stroke(255);
    strokeWeight(5);
    fill(0);
    rect(pos.x, pos.y, w, h);
  }
}
