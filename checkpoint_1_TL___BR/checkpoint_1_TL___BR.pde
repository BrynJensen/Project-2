//checkpoint 1 (TL -> BR diagonal)

int xy;

void setup() {
 size(300, 300);
 xy = -50;
}

void draw() {
 background(255);
 circle(xy, xy, 100);
 xy = xy + 1;
 if(xy > 350) {
  xy = -50; 
 }
}
