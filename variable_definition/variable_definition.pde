// test

int six;

void setup() {
  size(300, 300);
  six = 300;
}

void draw() {
  six = six-1;
  ellipse(150, six, 50, 50);
}
