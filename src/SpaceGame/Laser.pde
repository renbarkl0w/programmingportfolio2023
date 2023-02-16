class Laser {
  int x, y, w, h, speed;
  PImage rock;

  //Constructor
  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    w = 3;
    h = 12;
    speed = 10;
  }

  void display() {
    fill(255, 0, 0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void move() {
    y -= speed;
  }

  boolean reachedTop() {
    if (y<-10) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Rock rock) {
    float d = dist(x, y, rock.x, rock.y);
    if (d<40) { // refine collision detection

      return true;
    } else {
      return false;
    }
  }
}
