// Ball object

// this sketch shows how to create a basic class, called Ball.
// it instantiates a few of them and gives each instance of the object a unique name. 

// replace the 3 separate ball objects with an array of balls. 
// you can do this with something like:
//  Ball[] ballArray = new Ball[3];
// the next step in the setup() function is to loop through the array and instantiate
//  each one, calling the constructor for each step of the loop:
//  ballArray[i] = new Ball();
// finally in the draw() function, loop through the array again, and call the update() 
//  and display() methods of each one of the balls in the array. 

// if you are able to do all that, modify both the size of the ball array as well as
//  the ball class itself to experiment with the behavior and visuals. for example, 
//  you could control the color based on the mouse distance to each ball by using 
//  the dist() function and map().

//Ball myBall1;
//Ball myBall2;
//Ball myBall3;

Ball[] ballArray = new Ball[3];

void setup() {
  size(800, 800);

  //myBall1 = new Ball();
  //myBall2 = new Ball();
  //myBall3 = new Ball();

  for (int i = 0; i < ballArray.length; i++) {
    ballArray[i] = new Ball();
  }
}

void draw() {
  background(200);
  //  myBall1.update();
  //  myBall1.display();

  //  myBall2.update();
  //  myBall2.display();

  //  myBall3.update();
  //  myBall3.display();

  for (int i = 0; i < ballArray.length; i++) {
    ballArray[i].update();
    ballArray[i].display();
  }
}

class Ball {
  float x, y;
  float dx, dy;
  float s;
int i;



  // this function is called a constructor. 
  // it is called when a new Ball object is created.
  Ball() { 
    x = width/2;
    y = height/2;
    dx = random(-5, 5);
    dy = random(-5, 5);
    s = random(30, 80);
    
  }

  void display() {
for (int i = 0; i < ballArray.length; i++) {
     float d= dist (mouseX, mouseY, x, y);
    fill (map(d, 0, 100, 255, 0));
  }
    ellipse(x, y, s, s);
  }

  void update() {
    x += dx;
    y += dy;

    if (x > width - s/2 || x < s/2) {
      dx *= -1;
    }
    if (y > height - s/2 || y < s/2) {
      dy *= -1;
    }
  }
}
