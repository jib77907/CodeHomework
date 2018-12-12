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

    if (score1 <= -45) {
      p1.h += 3;
      p2.h -= 1;
    }

    if (score2 <= -45) {
      p2.h += 3;
      p1.h -= 1;
    }

    if (score1 <= -85) {
      p1.h += 4;
      p2.h -= 2;
    }

    if (score2 <= -85) {
      p2.h += 4;
      p1.h -= 2;
    }


    if (score1 <= -125) {
      p1.h += 5;
      p2.h -= 3;
    }

    if (score2 <= -125) {
      p2.h += 5;
      p1.h -= 3;
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
