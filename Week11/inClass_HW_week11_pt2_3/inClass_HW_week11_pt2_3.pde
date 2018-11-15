//Word w;

//void setup() {
//  size(600, 600);
//  w = new Word(50, 50, "hello!");
//}

//void draw() {
//  background(0);
//  w.display();
//}

String letters = "";

ArrayList<Word> manyWords = new ArrayList<Word>();

int counter = 0;

void setup() {
  size(600, 600);
  textSize(16);
  textAlign(CENTER);
}

void draw() {
  background(100);
  text(letters, width/2, 50);
  
  for (Word each : manyWords){   //for each individual object inside of the manyWords list, each one display it
  each.display();
  }
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    println(letters);
    
    Word w = new Word(width/2, 75 + counter,letters);  //counter creates spacing
    manyWords.add(w);
    for (Word each : manyWords){
    println(each.theWord);
    }
    letters = "";
    counter += 25;
    
  } else if ((key > 31) && (key != CODED)) {
    letters = letters + key;
  }
}
