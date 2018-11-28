int y = 0;
float angle = 0;
float amplitude = 500;
float period = 100;

void setup() {
  size(1150,1150);
  background(0);
  rectMode(CENTER);
}

void draw() {
  angle += 3;
  
  translate(width/2,height/2);
  rotate(radians(angle)); 
  float x = amplitude*sin((frameCount/period)*TWO_PI);
  
  
  float rColor = x/1.5;
  float gColor = y/1.5;
  float bColor = 170;
  stroke(255);
  //noStroke();
  fill(rColor, gColor, bColor,120);
  rect(x, 0, 140, 140);
  

}
