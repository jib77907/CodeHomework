// generative portrait 1

// this sketch, as well as w10_05_portrait2, uses the basic approach we used
// in class to create a generative representation of an image loaded into memory.
// use one of these two sketches as the starting point to create your own 
// generative graphic "portrait". try using red(), green(), blue(), saturation(), 
// hue(), and brightness() to get values to represent in your drawing.

// bonus - apply a class inspired by w10_03_paintbrush to your approach.
// instead of drawing a simple ellipse or other shape, create an instance 
// of the brushstroke class at every sourced point that you get() the color on.

// in the case of w10_05_portrait2, they would all need to be loaded into 
// an arraylist and drawn all together, as well as modified in order to have 
// a particle-like lifetime, or something similar.

PImage img;


import processing.pdf.*;

boolean saveOneFrame = false;

void setup() {
  size(785, 785);
  frameRate(30);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
}

void draw() {

  if (saveOneFrame == true) {
    beginRecord(PDF, "Doggo.pdf");
  }

  int x = int(random(width));
  int y = int(random(height));
  color c = img.get(x, y);
  float size = map(hue(c), 255, 0, 5, 40);
  float alpha = map(brightness(c), 255, 0, 85, 250);
  fill(red(c), blue(c), 200, alpha);
  ellipse(x, y, size, size);

  if (saveOneFrame == true) {
    endRecord();
    saveOneFrame = false;
  }
}


void mousePressed() {
  saveOneFrame = true;
}
