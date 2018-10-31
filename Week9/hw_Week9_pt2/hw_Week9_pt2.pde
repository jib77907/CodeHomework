// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

String[] arrayOfImageFilenames = new String[3];
PImage[] arrayOfPImages = new PImage[3];

void setup() {
  size(800,800);
  
   arrayOfImageFilenames[0] = "Baku0.png";
   arrayOfImageFilenames[1] = "Baku1.png";
   arrayOfImageFilenames[2] = "Baku2.png";
   
  
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);  
  }
}

void draw() {
  background(250);
  for (int i = 0; i < arrayOfImageFilenames.length; i++){
    imageMode(CENTER);
  image(arrayOfPImages[0],mouseX,mouseY); 
  image(arrayOfPImages[1],mouseX - 150, mouseY - 150); 
  image(arrayOfPImages[2],mouseX + 150, mouseY + 150); 
  }
}
