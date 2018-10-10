// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.

int numShapes = 500;
float[] xPositions = new float [numShapes];
float[] yPositions = new float [numShapes];

void setup() {
  size (800, 800);
  noStroke();

  for (int i = 0; i < xPositions.length; i ++) {         
    xPositions[i] = random(width);
    yPositions[i] = map(i, 0, yPositions.length, height/2, height - 150);
  }
}

void draw() {
  background(150);
  for (int i =0; i < xPositions. length; i++) {
    float siz = map(i, 0, xPositions.length, 300, 10);
    fill (map(i, 0, xPositions.length, 10, 255));
    ellipse (xPositions[i], yPositions[i], siz, siz);

    xPositions[i] -= map(i, 0, xPositions.length, 1, 10);

    if (xPositions[i]< -siz/2) {
      xPositions[i] = width + siz/2;
    }

    //xPositions[i] += random(-15, 10);
    //yPositions[i] += random(-5, 12);
  }
}
