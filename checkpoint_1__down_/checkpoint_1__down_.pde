//checkpoint 1 (down)

int y;

void setup() {
 size(300, 300);
 y = -50;
}

void draw() {
 background(255);
 circle(150, y, 100);
 y = y + 1;
 if (y > 350){
   y = -50; 
 }
}
