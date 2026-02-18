//checkpoint 1 (right + radius)

int x;
int r;

void setup() {
 size(300, 300);
 x = 0;
 r = 0;
}

void draw() {
 background(255);
 circle(x, 150, r);
 x = x + 3;
 r = r + 1;
 if(x > 370) {
  x = 0;
  r = 0;
 }
}
