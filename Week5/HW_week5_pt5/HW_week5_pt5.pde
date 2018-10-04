// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.

float[] xPositions = new float [100];
float[] yPositions = new float [100];

void setup() {
  size (800, 800);
  for (int i =0; i <50; i++) {
    xPositions[i] = random(width);
  }

  for (int i = 0; i < xPositions.length; i ++) {         
    xPositions[i] = random(width);
    yPositions[i] = random(height);
  }
}

void draw() {
  background(150);
  for (int i =0; i < xPositions. length; i++) {
    ellipse (xPositions[i], yPositions[i], 40, 40);

    xPositions[i] += random(-15, 10);
    yPositions[i] += random(-5, 12);
  }
}
