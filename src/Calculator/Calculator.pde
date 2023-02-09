// Ren Barklow | November 2022 | Calculator Project
Button numButtons[] = new Button[11];
Button opButtons[] = new Button[8];
String dVal = "0.0";
float l, r, result;
char op = ' ';
boolean left = true;

void setup() {
  size(360, 630);
  numButtons[0] = new Button(98, 570, 155, 70, '0', color(117, 0, 26), color(145, 0, 32));
  numButtons[1] = new Button(55, 485, 70, 70, '1', color(117, 0, 26), color(145, 0, 32));
  numButtons[2] = new Button(140, 485, 70, 70, '2', color(117, 0, 26), color(145, 0, 32));
  numButtons[3] = new Button(225, 485, 70, 70, '3', color(117, 0, 26), color(145, 0, 32));
  numButtons[4] = new Button(55, 400, 70, 70, '4', color(117, 0, 26), color(145, 0, 32));
  numButtons[5] = new Button(140, 400, 70, 70, '5', color(117, 0, 26), color(145, 0, 32));
  numButtons[6] = new Button(225, 400, 70, 70, '6', color(117, 0, 26), color(145, 0, 32));
  numButtons[7] = new Button(55, 315, 70, 70, '7', color(117, 0, 26), color(145, 0, 32));
  numButtons[8] = new Button(140, 315, 70, 70, '8', color(117, 0, 26), color(145, 0, 32));
  numButtons[9] = new Button(225, 315, 70, 70, '9', color(117, 0, 26), color(145, 0, 32));
  numButtons[10] = new Button(225, 570, 70, 70, '.', color(117, 0, 26), color(145, 0, 32));
  opButtons[0] = new Button(310, 570, 70, 70, '=', color(255, 224, 209), color(255, 238, 230));
  opButtons[1] = new Button(310, 485, 70, 70, '+', color(255, 224, 209), color(255, 238, 230));
  opButtons[2] = new Button(310, 315, 70, 70, '*', color(255, 224, 209), color(255, 238, 230));
  opButtons[3] = new Button(310, 400, 70, 70, '-', color(255, 224, 209), color(255, 238, 230));
  //Special
  opButtons[4] = new Button(310, 230, 70, 70, '÷', color(255, 224, 209), color(255, 238, 230));
  opButtons[5] = new Button(225, 230, 70, 70, '±', color(255, 224, 209), color(255, 238, 230));
  opButtons[6] = new Button(140, 230, 70, 70, 's', color(255, 224, 209), color(255, 238, 230));
  opButtons[7] = new Button(55, 230, 70, 70, 'C', color(255, 224, 209), color(255, 238, 230));
}

void draw() {
  background(255, 134, 77);
  updateDisplay();
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons. length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void updateDisplay() {
  rectMode(CENTER);
  strokeWeight(2);
  stroke(94, 1, 21);
  fill(255, 134, 77);
  rect(width/2, 100, width-20, 170-10, 35);
  fill(255);
  textAlign(RIGHT);
  if (dVal.length() < 17) {
    textSize(38);
  } else if (dVal.length() < 18) {
    textSize(36);
  } else if (dVal.length() <19) {
    textSize(34);
  } else {
    textSize(24);
  }
  text(dVal, width-40, 150);
}

void keyPressed() {
  println("key:" + key);
  println("keyCode:" + keyCode);
  if (keyCode == 49 || keyCode == 97) {
    handleEvent("1", true);
  } else if (keyCode == 50 || keyCode == 98) {
    handleEvent("2", true);
  } else if (keyCode == 51 || keyCode == 99) {
    handleEvent("3", true);
  } else if (keyCode == 52 || keyCode == 100) {
    handleEvent("4", true);
  } else if (keyCode == 53 || keyCode == 101) {
    handleEvent("5", true);
  } else if (keyCode == 54 || keyCode == 102) {
    handleEvent("6", true);
  } else if (keyCode == 55 || keyCode == 103) {
    handleEvent("7", true);
  } else if (keyCode == 56 || keyCode == 104) {
    handleEvent("8", true);
  } else if (keyCode == 57 || keyCode == 105) {
    handleEvent("9", true);
  } else if (keyCode == 107) {
    handleEvent("+", false);
  } else if (keyCode == 109) {
    handleEvent("-", false);
  } else if (keyCode == 106) {
    handleEvent("*", false);
  } else if (keyCode == 111) {
    handleEvent("/", false);
  } else if (keyCode == 46 || keyCode == 110) {
    handleEvent(".", false);
  } else if (keyCode == 61) {
    handleEvent("±", false);
  } else if (keyCode == 10 || keyCode == 108) {
    handleEvent("=", false);
  } else if (keyCode == 8) {
    handleEvent("C", false);
  }
}

void handleEvent(String val, boolean num) {
  if (num && dVal.length() < 25) {
    if (dVal.equals("0.0")) {
      dVal = val;
    } else {
      dVal += val;
    }
    if (left) {
      l = float(dVal);
    } else {
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0.0";
    left = true;
    l = 0;
    r = 0;
    result = 0;
    op = ' ';
  } else if (val.equals("+")) {
    op = '+';
    left = false;
    dVal = "+";
  } else if (val.equals(".")) {
    if (dVal.contains(".") == false) {
      dVal += ".";
    }
  } else if (val.equals("-")) {
    left = false;
    op = '-';
    dVal = "-";
  } else if (val.equals("*")) {
    op = '*';
    left = false;
    dVal = "*";
  } else if (val.equals("÷")) {
    op = '/';
    left = false;
    dVal = "/";
  } else if (val.equals("=")) {
    performCalc();
  }
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].on) {
      handleEvent(str(numButtons[i].val), true);
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].on && opButtons[i].val == 'C') {
      handleEvent("C", false);
    } else if (opButtons[i].on && opButtons[i].val == '+') {
      handleEvent("+", false);
    } else if (opButtons[i].on && opButtons[i].val == '-') {
      handleEvent("-", false);
    } else if (opButtons[i].on && opButtons[i].val == '*') {
      handleEvent("*", false);
    } else if (opButtons[i].on && opButtons[i].val == '÷') {
      handleEvent("÷", false);
    } else if (opButtons[i].on && opButtons[i].val == '=') {
      handleEvent("=", false);
    } else if (opButtons[i].on && opButtons[i].val == '±') {
      if (left) {
        l = l*-l;
        dVal = str(l);
      } else {
        r = r*-l;
        dVal = str(r);
      }
      //} else if (opButtons[i].on && opButtons[i].val == '%') {
      //  //opButtons[i].click=true;
      //  op = '%';
      //  dVal = "%";
      //  left = false;
    } else if (opButtons[i].on && opButtons[i].val == 's') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == '.') {
      handleEvent(".", false);
    }
  }
  println("L:" + l + "Op:" + op + "R:" + r + "Rseult:" + result + "Left:" + left);
}

//void clearCalc() {
//  dVal = "0.0";
//  op = ' ';
//  left = true;
//  r = 0.0;
//  l = 0;
//  result = 0.0;
//}

void performCalc() {
  if (op == '+') {
    result = l+r;
  } else if (op == '-') {
    result = l-r;
  } else if (op == '*') {
    result = l*r;
  } else if (op == '/') {
    result = l/r;
  }
  dVal = str(result);
  l = result;
  left = true;
}
