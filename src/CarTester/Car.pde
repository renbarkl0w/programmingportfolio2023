class Car {
  color c;
  float xpos, ypos, xspeed;

  //constructor
  Car() {
    c = color(random(255), random(255), random(255));
    xpos = random(width);
    ypos = random(height);
    xspeed = random(1, 5);
  }

  void display() {
    stroke(2);
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(0);
    rect(xpos-7, ypos-5, 6, 2);
    rect(xpos-7, ypos+5, 6, 2);
    rect(xpos+7, ypos-5, 6, 2);
    rect(xpos+7, ypos+5, 6, 2);
    noStroke();
    fill(235, 210, 52);
    triangle(xpos+10, ypos+4, xpos+25, ypos+8, xpos+25, ypos+1);
    triangle(xpos+10, ypos-4, xpos+25, ypos-8, xpos+25, ypos-1);
    noStroke();
    fill(50);
    rect(xpos+4, ypos, 4, 7);
    rect(xpos-6, ypos, 3, 6);
  }

  void drive() {
    xpos+=xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
