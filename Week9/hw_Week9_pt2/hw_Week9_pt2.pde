// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

String[] arrayOfImageFilenames = new String [3];
PImage[] arrayOfPImages = new PImage[arrayOfImageFilenames.length];

void setup() {
  size(600,600);
  imageMode(CENTER);
   
   for (int i = 0; i < arrayOfImageFilenames.length; i++){
   arrayOfImageFilenames[i] = "Baku" + i + ".png";
   }
   
  
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);  
  }
}

void draw() {
  background(250);
  for (int i = 0; i < arrayOfPImages.length; i++){
    float x = map(i,0, arrayOfPImages.length-1,100,width-100);
    float prop = arrayOfPImages[i].width/arrayOfPImages[i].height;
    
    //image(arrayOfPImages[i], x, height/2, arrayOfPImages[i].width/2,arrayOfPImages[i].height/2);
    
    image(arrayOfPImages[i], x, height/2, 100,100* prop);
    
  //  imageMode(CENTER);
  //image(arrayOfPImages[0],mouseX,mouseY); 
  //image(arrayOfPImages[1],mouseX - 150, mouseY - 150); 
  //image(arrayOfPImages[2],mouseX + 150, mouseY + 150); 
  }
}
