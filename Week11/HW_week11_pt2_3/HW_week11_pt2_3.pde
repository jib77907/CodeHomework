// typing words 1 & 2

// this sketch defines a class that displays a word on the screen.
// so far it only creates a single one. 
// the next sketch, w11_03_typingWords2, checks for typing input, adds the 
// result to a string, and when ENTER is pressed, prints it to the console 
// and clears the string.

// combine these two sketches so that typing and pressing enter creates
// a new instance of this 'Word' class and adds it to an arraylist. //???
// then loop through the arraylist to call display() on all added words. //??

// finally, once you've completed that, add some custom visuals or behavior 
// the Word class.


String letters = "";
Word w;

//ArrayList<Word> words;
int i = 1;
Word[] words = new Word[i];

void setup() {
  size(600, 600);
  textSize(16);
  textAlign(CENTER);

  w = new Word(50, 50, letters);
}

void draw() {
  background(100);
  for (int i = 0; i < words.length; i++){
  text(letters, width/2, 50);
 // w.display();
  }
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    println(letters);
    for (int i = 0; i < words.length; i++){
    w.display();
    letters = "";
    }
  } else if ((key > 31) && (key != CODED)) {
    for (int i = 0; i < words.length; i++){
    letters = letters + key;
  }
  }
}

class Word {
  //String theWord;
  float x, y;


  Word(float x, float y, String text) {
    letters = text;
    this.x = x;
    this.y = y;
  }

  void display() {
    for (int i= 0; i < words.length; i++) {
      text(letters, x, y);
    }
  }
}
