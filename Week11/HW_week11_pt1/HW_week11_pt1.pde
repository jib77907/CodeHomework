// this sketch creates a Button class that changes a 'pressed' boolean
// from false to true, and vice versa, when clicked on. pressing once
// is all that's needed to change the state. 

// create a different Button class that also has a 'pressed' boolean, 
// but unlike the other Button, the mouse needs to be held on the button
// in order to set it to true. releasing the mouse button or moving it off
// the button returns the boolean to false.

// finally, check in the sketch for the state of the buttons (see the 
// getButtonStatus() method for an example of how to access their state
// and create some kind of visual effect whenever the buttons are active. 


Button button;

void setup() {
  size(600, 600);
  button = new Button(width/2, height/2, 100, 30);

  generators = new ArrayList<Generator>();
}

void draw() {
  background(100);
  button.display();
  button.checkPressed();
  if(button.getButtonStatus()){
  background(255,0,0);
  button.display();
  }
}


//void mousePressed() {
//  button.checkPressed();
//}

class Button {
  boolean held;
  float x, y;
  float w, h;

  Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void checkPressed() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && mousePressed) {
      //pressed = !pressed;
      held = true;
    } else {
      held = false;
    }
  }

  void display() {
    if (held) {
      for (int i = 0; i < generators.size(); i++) {
        Generator g = generators.get(i);
        g.addParticles();
        g.drawParticles();
      }
      generators.add(new Generator(mouseX, mouseY));

      fill(240);
    } else {
      fill(150);
    }
    rect(x, y, w, h);
  }

  boolean getButtonStatus() {  //boolean function method
    //return pressed;   //not returning void
    return held;
  }
}
