// Ren Barklow | 10/11/2022 | Screen Saver
float xpos, ypos, strokeW, pointCount;

void setup() {
  size(displayWidth, displayHeight);
  //background(31, 26, 41);
  background(9, 18, 31);
  xpos = random(width);
  ypos = random(height);
  stroke(random(255), random(40), random(40));
}

void draw() {
  strokeW = random(2, 7);
  pointCount = random(1, 5);
  if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      stroke(random(255), random(0), random(40));
    xpos = random(width);
    ypos = random(height);
  } else {
    if (random(100) > 70) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, pointCount);
    } else if (random(100) > 65) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, pointCount);
    } else if (random(100) > 55) {
      strokeWeight(strokeW);
      moveDown(xpos, ypos, pointCount);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos, ypos, pointCount);
    }
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i < moveCount; i++) {
    point(startX+i, startY);
    xpos = startX + i;
    ypos = startY;
  }
}
void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i < moveCount; i++) {
    point(startX-i, startY);
    xpos = startX - i;
    ypos = startY;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for  (float i=0; i < moveCount; i++) {
    point(startX, startY+i);
    xpos = startX;
    ypos = startY + i;
  }
}
void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i < moveCount; i++) {
    point(startX, startY-i);
    xpos = startX;
    ypos = startY - i;
  }
}
