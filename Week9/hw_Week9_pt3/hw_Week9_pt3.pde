
// this code is adapted from the Processing example "Sequential" by James Paterson.
// this sketch loads in 12 separate images into an array of PImages, then plays
// them sequentially in the draw loop.

// i will explain the "%" operator in class.

// create your own image sequence. 
// then change the sketch to load in and display your image sequence.

// once you've done this, adapt the image sequence to be part of a class behavior.
// imagine the "Mario" object we've discussed in class - animating a character 
// like that could be done in this way - creating the class to contain an array 
// of images, and having the class's display method cycle through the frames.  

//int numFrames = 16;  // The number of frames in the animation
//int currentFrame = 0;
//PImage[] images = new PImage[numFrames];

Egg eggo;

//ArrayList<Egg> myArrayList = new ArrayList<Egg>();

void setup() {
  size(800, 800);
  frameRate(24);
  imageMode(CENTER);
  eggo = new Egg();
} 

void draw() { 
  background(200);
  //currentFrame = (currentFrame+1) % numFrames;
  //image(images[currentFrame], width/2, height/2);

 eggo.update();
 eggo.display();
  }
