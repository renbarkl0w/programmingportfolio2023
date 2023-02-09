class Button {
  // Member Variable
  int x, y, w, h;
  color c1, c2;
  char val;
  boolean on;

  // Constructor
  Button(int x, int y, int w, int h, char val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    this.c2 = c2;
    on = false;
  }

  // Member Methods
  void display() {
    rectMode(CENTER);
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    if (val == '0') {
      rect(x, y, w, h, 60);
      textSize(32);
      textAlign(CENTER);
      fill(255);
      text("0", x, y+10);
      strokeWeight(2);
    } else {
      ellipse(x, y, w, h);
      textAlign(CENTER);
      textSize(32);
      strokeWeight(2);
      fill(255);
      if (val == 'C') {
        textSize(32);
        text("C", x, y+10);
      } else if (val == 's') {
        textSize(32);
        text("x^2", x, y+10);
      } else {
        text(val, x, y+10);
      }
    }
  }

  void hover(int mx, int my) {
    on = (mx>x-w/2 && mx<x+w/2 && my>y-h/2 && my<y+h/2);
  }
}
