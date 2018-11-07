class Egg {

  float x, y;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Egg() {
    numFrames = 16;
    currentFrame = 0;
    frames = new PImage [numFrames];
    
    frames[0]  = loadImage("egg0.png");
    frames[1]  = loadImage("egg1.png"); 
    frames[2]  = loadImage("egg2.png");
    frames[3]  = loadImage("egg3.png"); 
    frames[4]  = loadImage("egg4.png");
    frames[5]  = loadImage("egg5.png"); 
    frames[6]  = loadImage("egg6.png");
    frames[7]  = loadImage("egg7.png"); 
    frames[8]  = loadImage("egg8.png");
    frames[9]  = loadImage("egg9.png"); 
    frames[10] = loadImage("egg10.png");
    frames[11] = loadImage("egg11.png"); 
    frames[12] = loadImage("egg12.png"); 
    frames[13] = loadImage("egg13.png"); 
    frames[14] = loadImage("egg14.png"); 
    frames[15] = loadImage("egg15.png");
  }

  void update () {
 currentFrame = (currentFrame+1) % numFrames;
 
  }

  void display() {
   
    image(frames[currentFrame], width/2, height/2,200,200);
  }
}
