class Star {
  int x, y, diam, speed;
  PImage star;

  //Constructor
  Star() {
    x = int(random(width));
    y = int(random(height));
    diam = int(random(3, 5));
    speed = int(random(2, 5));
  }

  void display() {
    fill(255, 255, 200);
    circle(x, y, diam);
  }

  void move() {
    if(y>height+5) {
      y = -10;
    } else {
      y += speed;
    }
  }

  boolean reachedBottom() {
    return true;
  }
}
