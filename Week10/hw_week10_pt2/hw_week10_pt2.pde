// color variable practice

// this sketch creates a single color variable, loads a color into it
// with the color() function, and then uses it to draw the background.

// change the color variable to an array of color variables. add as many
// as you like. then in the draw loop, set the background to some color
// in the array. this might look like: 

// background(c[whichColor]);

// use either conditional logic or a modulo operator to have which color 
// is being used by background() change periodically. see the example gif.

color[] c = new color[6];


void setup() {
  c[0] = color(255, 0, 0);
  c[1] = color(0, 255, 0);
  c[2] = color(0, 0, 255);
  c[3] = color(100, 0, 200);
  c[4] = color(0, 200, 150);
  c[5] = color(240, 210,0);
  
  //for (int i = 0; i < c.length; i++){
  //c[i] = color(random(0,255), random (0,255), random(0,255));
  //}
  
}

void draw() {
  int i = int(random(0,c.length));
  
   if (frameCount % 20 == 0){
  //background(c[i]);  
  
  //background(c[floor(random(0,10))]);
  
  background(c [inc]);
   
   }
}

int inc = 0;
void mousePressed(){
  if (inc < 5){
inc++;
  } else {
  inc = 0;
  }
}
