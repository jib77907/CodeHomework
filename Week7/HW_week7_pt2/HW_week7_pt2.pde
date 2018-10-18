// this sketch creates 10 instances of a ball class. 
// it does this in the setup() function in a loop instead of 
//  doing it based on mouse presses as we did in class.

// review this approach, then create your own class that draws
//  a different visual to the screen with its own behavior. 
//  it could be abstract or more explicit. think about how to 
//  parameterize your object's constructor. once you've created 
//  a class like this, create a number of instances of your 
//  class on the canvas by any means you prefer.

ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void setup() {
  size(800, 800);
  
  for (int i = 0; i < 75; i++) {
    bubbles.add(new Bubble(random(300,500), 750));
  }
}

void draw() {
  background(210,230,255);
 
  for (int i = 0; i < bubbles.size(); i++) {
    Bubble bubb = bubbles.get(i);
    bubb.display();
    bubb.update();
  }
}


class Bubble {
  // what does it have and do? 
  // create the variables
  // position x,y
  // velocity x,y
  float posX;
  float posY;
  float velX;
  float velY;
  float size;
  float alpha;

  // create the constructor
  Bubble(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(0, 8);
    this.velY = random(0, 8);
    this.size = random(30, 90);
    this.alpha = random(30,180);
  }

  // draw to the screen
  void display() {
    stroke (255);
    strokeWeight (3);
    fill (255, alpha);
    ellipse(this.posX, this.posY, size, size);
  }

  // update its position and velocity.
  void update() {
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width-this.size/2 || this.posX < this.size/2) {
      this.velX *= -1;
      this.alpha += 50;
    } 
    if (this.posY > height-this.size/2 || this.posY < this.size/2) {
      this.velY *= -1;
      this.alpha -= 50;
    }
  }
}
