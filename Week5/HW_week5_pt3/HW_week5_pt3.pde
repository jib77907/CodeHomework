// this code maps 10 rectangles across the screen, using a for loop to draw them.

// change the code so that it draws 20 rectangles instead of 10, 
// and maps them across the screen so that you can see all 20.
// after that, change yPos so that it maps their position in the y-dimension as well,
// drawing a diagonal line of rectangles from the top left to the bottom right.

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  for (int i = 0; i <= 20; i++) {
    
    float xPos = map(i, 0, 20, 0, width);
    float yPos = map(i, 0, 20,0,height);

    rect(xPos, yPos, 20, 100);    
  }
}
