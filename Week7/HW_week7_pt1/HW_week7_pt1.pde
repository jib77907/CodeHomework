// this is the "Cookie" class sketch we wrote in class.

// create 2 or more additional class definitions. 
// these classes aren't used for actually programming any visuals so they can 
//  be totally abstract and print text only just as the Cookie class does. 

// The first new class you make should represent some other kind of common object.
// give it fields and methods, as well as a custom constructor.
// The second new class you create should have its own object instance of the Cookie 
//  (or other) class. For example, maybe a Cookie Jar class would have an 
//  ArrayList of type Cookie. 


ArrayList  <Plate> cookieOnPlate;

void setup() {
  Cookie aCookie = new Cookie("delicious", "tiny");
  Cookie anotherCookie = new Cookie ("choco", "BIG" );
  aCookie.cookieInfo();
  anotherCookie.cookieInfo ();
  aCookie.eat("yummily");

  Fudge aFudge = new Fudge("chocolate", "chewy");
  aFudge.fudgeInfo();
  aFudge.tasteInfo("delicious!");
  
  cookieOnPlate = new ArrayList<Plate>();
  
  //for (int i = 0; i < 10; i++) {
  //  cookieArr.add(new Plate());
  //}
}

void draw() {
  
  
}

class Cookie {
  String kind;
  String size;

  Cookie(String whatKind, String whatSize) {
    println("baked new " + whatSize + " " + whatKind + " cookie!");
    kind = whatKind;
    size = whatSize;
  }

  void cookieInfo() {
    println("This cookie is a " + size + " " + kind + " cookie!");
  }

  void eat(String modifier) {
    println("You eat the cookie " + modifier);
  }

  String getSize() {
    return size;
  }
}

class Fudge {
  String kind;
  String texture;
  String taste;

  Fudge(String whatKind, String whatTexture) {
    println("Made new " + whatTexture + " " + whatKind + " fudge!");
    kind = whatKind;
    texture = whatTexture;
  }

  void fudgeInfo() {
    println("This fudge is a " + texture + " " + kind + " fudge!");
  }

  void tasteInfo(String whatTaste) {
    println ("This " + texture + " " + kind + " fudge is " + whatTaste);
    taste = whatTaste;
  }
}


//SEND HELP
class CookieJar {
  ArrayList<Cookie> cookies = new ArrayList<Cookie>();
  
  CookieJar() {
  for (int i = 0; i < 10; i++){
  cookies.add (new Cookie("chocolatechip", "small"));
  }
  }  
  
  
  }

  //void addCookies(int addCookie){
  // println ("Putting " + addCookie + )
  //}
  
}
