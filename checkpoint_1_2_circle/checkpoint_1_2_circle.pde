//checkpoint 1 (2 circle)

int down;
int up;

void setup() {
 size (300, 300);
 down = -50;
 up = 350;
}

void draw() {
 background(255);
 circle(75, down, 100);
 circle(225, up, 100);
 down = down + 1;
 up = up - 1;
 if(down > 350) {
  down = -50;
  up = 350;
 }
}
