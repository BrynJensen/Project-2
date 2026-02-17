//project 2 test
int x = 0;
void setup(){
  size(300, 300);
}
void draw(){
  circle(x, x, x);
  x = x+1;
  if ( x > 300 ) {
    x = -50;
  }
}
  
