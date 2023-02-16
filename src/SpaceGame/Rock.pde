class Rock {
  int x, y, diam, speed, health;
  PImage rock;

  //Constructor
  Rock() {
    x = int(random(width));
    y = -100;
    diam = int(random(30, 100));
    speed = int(random(3, 10));
    rock = loadImage("Rock.png");
    health = diam;
    //int rand = int(random(3));
    //if (rand==0) {
    //  rock = loadImage("Rock.png");
    //} else if (rand==1) {
    //  rock = loadImage("Rock.png");
    //} else if (rand==2) {
    //  rock = loadImage("Rock.png");
    //}
  }

  void display() {
    imageMode(CENTER);
    rock.resize(diam, diam);
    image(rock, x, y);
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if(y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
