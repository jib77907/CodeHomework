ArrayList<Generator> generators;

class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float alpha;
  float r;
  float g;


  Particle(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-3, 3);
    this.velY = random(-20, 1.5);
    life = 55;
    alpha = 255;
  }

  void display() {
    noStroke();

    fill(255, map(life,50,10,70,230), 30, map(life,50,0,230,0));
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life-=1.5;
    alpha-= 8;
    r--;
    g--;
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width || this.posX < 0) {
      this.velX *= -1;
      this.velY *= -1;
    }
  }
}

class Generator {
  ArrayList<Particle> particles;
  float posX;
  float posY;
  float rate; 

  Generator(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    particles = new ArrayList<Particle>();
  }

  void addParticles() {
    particles.add(new Particle(this.posX, this.posY));
  }

  void drawParticles() {
    for (int i = 0; i < particles.size(); i++) {
      Particle b = particles.get(i);
      b.update();
      b.display();
    } 

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      if (p.life < 0) {
        particles.remove(i);
      }
    }
  }
}
