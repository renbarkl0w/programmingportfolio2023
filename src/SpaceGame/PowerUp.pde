class PowerUp {
  int x, y, diam, speed, health;
  char type;
  PImage powerup;

  //Constructor
  PowerUp() {
    x = int(random(width));
    y = -100;
    diam = int(random(30, 100));
    speed = int(random(3, 10));
    powerup = loadImage("PowerUp.png");
    int rand = int(random(3));
    if (rand == 0) {
      type = 'H';
    } else if (rand == 1) {
      type = 'A';
    } else {
      type = 'T';
    }
  }

  void display() {
    imageMode(CENTER);
    powerup.resize(60,60);
    image(powerup, x, y);
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }
  boolean intersect(SpaceShip ship) {
    float d = dist(x, y, ship.x, ship.y);
    if (d<40) { // refine collision detection
      return true;
    } else {
      return false;
    }
  }
}
