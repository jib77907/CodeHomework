// this sketch contains the definition of a simple class that draws 
// shrinking ellipses to the screen. an arraylist holds a number of those
// class objects that are removed once their timeRemaining value reaches 0. 
// the objects are created once every 30 frames (i will explain this line of 
// code in class)

// give the MyClass class definition a PImage field and replace the display method
// with something that will draw the image every frame. 
// you can use a single image located in the sketch folder and instantiating the
// pImage with the loadImage() function in the constructor of the object. 


ArrayList<MyClass> myArrayList = new ArrayList<MyClass>();
//PImage mame;

void setup() {
  size(600, 600);
  imageMode(CENTER);
  //mame = loadImage("mameshiba.png");
}

void draw() {
  background(180, 230, 150);

  if (frameCount % 30 == 0) {             //modulo, every 30 frames, create a new object
    myArrayList.add(new MyClass(random(width), random(height), "mameshiba.png"));
     myArrayList.add(new MyClass(random(width), random(height), "mang.png"));
  }

  for (int i = 0; i < myArrayList.size(); i++) {
    MyClass obj = myArrayList.get(i);
    obj.update();
    obj.display();
  }

  for (int i = myArrayList.size() - 1; i >= 0; i--) {
    MyClass obj = myArrayList.get(i);
    if (obj.isTimeUp() == true) {
      myArrayList.remove(i);
    }
  }
}


class MyClass {
  float x; 
  float y;
  float timeRemaining;
  PImage mame;

  MyClass(float x, float y, String pathName) {
    this.x = x;
    this.y = y;
    this.timeRemaining = 180;
    this.mame = loadImage(pathName);
  }

  void update() {
    timeRemaining--;
  }

  void display() {
    image(mame, x, y, timeRemaining, timeRemaining);
    //ellipse(x, y, timeRemaining, timeRemaining);
  }

  boolean isTimeUp() {
    if (timeRemaining <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
