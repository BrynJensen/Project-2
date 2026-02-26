//hope for the future
//Lush Nature



void setup() {
  size(1200, 1000, P2D);
}


void draw() {
  println(mouseX, mouseY);
  
  trunk1(600, 600, 1, 0);
}


void trunk1(float trunkX, float trunkY, float sze1, float rot1) {
  pushMatrix();
  translate(trunkX, trunkY);

  //trunk
  fill(124, 85, 49);
  noStroke();
  beginShape();
  vertex(-50, 550);
  vertex(-45, 545);
  vertex(-40, 535);
  vertex(-30, 510);
  vertex(-27, 470);
  vertex(-23, 420);
  vertex(-28, 390);
  vertex(-29, 340);
  vertex(-40, 322);
  vertex(-30, 325);
  vertex(-27, 330);
  vertex(-25, 310);
  vertex(-27, 260);
  vertex(-30, 210);
  vertex(-28, 160);
  vertex(-32, 100);
  vertex(-40, 60);
  vertex(-52, 20);
  vertex(-50, -30);
  vertex(-45, -80);
  vertex(-42, -150);
  vertex(-50, -195);
  vertex(-58, -230);
  vertex(-64, -270);
  vertex(-69, -300);
  vertex(-78, -330);
  vertex(-82, -360);
  vertex(-78, -400);
  vertex(-75, -460);
  vertex(-80, -500);

  endShape(CLOSE);


    popMatrix();
}


void branch(float branchX, float branchY, float sze2) {
}
