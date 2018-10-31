
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

int numFrames = 16;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];

ArrayList<Egg> myArrayList = new ArrayList<Egg>();

void setup() {
  size(800, 800);
  frameRate(24);
  imageMode(CENTER);
} 

void draw() { 
  background(200);
  //currentFrame = (currentFrame+1) % numFrames;
  //image(images[currentFrame], width/2, height/2);

  for (int i = 0; i < images.length; i++) {
    //display??
    images[i].display();
  }
}

class Egg {

  Egg() {
    images[0]  = loadImage("egg0.png");
    images[1]  = loadImage("egg1.png"); 
    images[2]  = loadImage("egg2.png");
    images[3]  = loadImage("egg3.png"); 
    images[4]  = loadImage("egg4.png");
    images[5]  = loadImage("egg5.png"); 
    images[6]  = loadImage("egg6.png");
    images[7]  = loadImage("egg7.png"); 
    images[8]  = loadImage("egg8.png");
    images[9]  = loadImage("egg9.png"); 
    images[10] = loadImage("egg10.png");
    images[11] = loadImage("egg11.png"); 
    images[12] = loadImage("egg12.png"); 
    images[13] = loadImage("egg13.png"); 
    images[14] = loadImage("egg14.png"); 
    images[15] = loadImage("egg15.png");
  }

  void display() {
    currentFrame = (currentFrame+1) % numFrames;
    image(images[currentFrame], width/2, height/2);
  }
}
