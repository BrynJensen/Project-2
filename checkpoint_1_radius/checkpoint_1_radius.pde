//checkpoint 1 (radius)

int r;

void setup() {
 size (300, 300);
 r = 0;
}

void draw() {
 background(255);
 circle(150, 150, r);
 r = r + 1;
 if(r > 424.3){
  r = 0;
 }
}
