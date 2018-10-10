// this code uses 5 separate floats to store the positions being used to draw 5 ellipses.

// change the code so that instead of using 5 separate floats, use one array of floats.
// then loop through the array to draw the ellipses, instead of drawing them one by one.


//float x1 = 100;
//float x2 = 200;
//float x3 = 300; 
//float x4 = 400;
//float x5 = 500;



//float[]nums = {100,200,300,400,500};
float[] nums = new float [5];

void setup() {
  size(600, 600);
  noStroke();

  //for (int i =0; i < 5; i++) {             
  //nums [i] = map (i, 0, 5, 0, width);

  for (int i = 0; i < nums.length; i++ ) {
    nums [i] = (i + 1) * 100; 
    //nums [i] = map (i,0,nums.length, 100,600);
  }
}


void draw() {
  background(150);
  for (int i = 0; i < nums.length; i ++) {
    ellipse (nums [i], height/2, 70, 70);
  }
  //ellipse(nums[0], height/2, 70, 70);
  //ellipse(nums[1], height/2, 70, 70);
  //ellipse(nums[2], height/2, 70, 70);
  //ellipse(nums[3], height/2, 70, 70);
  //ellipse(nums[4], height/2, 70, 70);
}
