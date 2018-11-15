// visualizing key presses 2

// see previous sketch w11_05_visualizingInput2 for instructions.

int x;
int y;
boolean newKeyShape = false;
boolean newMouseShape = false;


int numChars = 26;      
color[] colors = new color[numChars];

void setup() {
  size(800, 800);
  colorMode(HSB, numChars);
  
  for (int i = 0; i < numChars; i++){
  colors[i] = color(i, numChars, numChars);
  }
}

void draw() {
  if (newKeyShape) {
    noStroke();
    ellipse(x, y, 100, 100);
    newKeyShape = false;
  }
  if (newMouseShape) {
     
  int w = int(random(50,180));
  int h = int(random(50,180));
    rect(x, y, w, h);
    newMouseShape = false;
  }
}

void keyPressed() {
  setPosition();
  if((key >= 'A' && key <= 'Z') || (key >= 'a' && key <= 'z')) {
    int keyIndex;
    if(key <= 'Z') {
      keyIndex = key-'A';
      fill(colors[keyIndex]);
    } else {
      keyIndex = key-'a';
      fill(colors[keyIndex]);
    }
  } else {
    fill(0);
  }
  newKeyShape = true;
}

void mousePressed() {
  setPosition();
  
  newMouseShape = true;
 
}

void setPosition() {
  x = int(random(width));
  y = int(random(height));
}
