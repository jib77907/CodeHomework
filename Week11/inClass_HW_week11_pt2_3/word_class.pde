class Word {
  String theWord;
  float x, y;
  
  Word(float x, float y, String text) {
    theWord = text;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    text(theWord, x, y);
    stroke(random(255), random(255), random(255));
    line(0,y,width, y-10);
  }
}
