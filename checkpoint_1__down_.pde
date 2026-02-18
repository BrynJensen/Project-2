//checkpoint 1 (down)

int x;

void setup() {
 size(300, 300);
 x = -50;
}

void draw() {
 background(255);
 circle(150, x, 100);
 x = x + 1;
 if (x > 350){
   x = -50; 
 }
}
