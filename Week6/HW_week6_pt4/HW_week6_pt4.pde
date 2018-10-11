// 2d arrays part 3

// this sketch uses a 2d array of floats, used to store values that will be used as 
//  angles for matrix transformations. it creates the array with random angles, 
//  then draws lines at those angles in the draw loop.

// change the sketch so that the angles in setup are mapped somehow to the value of 
//  i and/or j. then in the draw loop, change the value of the angle at every position
//  in the 2d array by some amount, to make each line rotate. (see the gif in this folder for an example)
// experiment with sizes, shapes, colors, and adding additional 2d arrays to create 
// more values to store, draw with, and modify at runtime. 

int gridW = 20;
int gridH = 20;

float[][] angles = new float[gridW][gridH];
float [][] rotateAngleby = new float [gridW][gridH];
//float[][] sizes = new float  [gridW][gridH];


void setup() {
  size(800, 800);
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      //angles[i][j] = map (i, 0, 360, random(0, height), width);   //random(360);
      // angles[i][j] = map (j, 0, gridH, 0, 180);
       angles[i][j] = map (i,0,gridW,0,180);
       //rotateAngleby[i][j] = random (1,5);
       rotateAngleby[i][j] = map(i,0,width,-2,2);
       //sizes[i][j] = map (i,0,gridW, 1, 10);
    }
  }
}

void draw() {
  background(240,160,170);

  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      pushMatrix();
      translate(i * width/gridW, j * height/gridH);

      //float degrees = angles[i][j];
      //angles[i][j] = angles[i][j] + 5;
      //float rads = radians(degrees);
      //rotate(rads);
      
     // angles[i][j]+= map (j,0,gridH,-3,3);
     angles[i][j]+= rotateAngleby[i][j];   //random (1,5) here will make the line rotate at new angle evry frame
      rotate(radians(angles[i][j]));
//float x1= -width/gridW*0.5;
//float x2= width/gridW*0.5;
      stroke(235, 200, 210);
      strokeWeight (4);
      line(-width/gridW*0.5, 0, width/gridW*0.5, 0);  //length = half cell size
      popMatrix();
    }
  }
}
