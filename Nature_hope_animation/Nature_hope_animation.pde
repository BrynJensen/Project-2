//hope for the future
//Lush Nature
//make bushes move a bit
//ask about scale for bush


void setup() {
  size(1200, 1000, P2D);
}


void draw() {
  println(mouseX, mouseY);
  background(209, 254, 255);
  
  //ground
  noStroke();
  fill(118, 63, 20);
  beginShape();
  vertex(0, 500);
  vertex(0, 1000);
  vertex(1200, 1000);
  vertex(1200, 350);
  vertex(700, 450);
  vertex(600, 550);
  endShape(CLOSE);
  
  //background brush
  noStroke();
  bush(0, 500, 1, 0, 0);
  bush(20, 500, 1, 0, 0);
  bush(0, 520, 1, 0, 0);
  bush(0, 475, 1, 0, 0);
  bush(45, 510, 1, 0, 0);
  bush(40, 480, 1, 0, 0);
  bush(65, 515, 1, 0, 0);
  bush(80, 505, 1, 0, 0);
  bush(120, 520, 1, 0, 0);
  bush(185, 512, 1, 0, 0);
  bush(255, 518, 1, 0, 0);
  bush(300, 530, 1, 0, 0);
  bush(360, 530, 1, 0, 0);
  bush(400, 525, 1, 0, 0);
  bush(455, 530, 1, 0, 0);
  
  
  
  
  //trunk1(200, 450, 0.9, 0, -50);

}


void trunk1(float trunkX, float trunkY, float sze1, float rot1, float opacity) {
  pushMatrix();
  translate(trunkX, trunkY);
  scale(sze1);
  rotate(radians(rot1));

  //trunk
  fill(opacity + 124, opacity + 85, opacity + 49);
  noStroke();
  beginShape();

  //up left side low-high

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
  vertex(-86, -590);
  vertex(-90, -670);
  vertex(-84, -750);

  //back down high-low

  vertex(-80, -670);
  vertex(-66, -590);
  vertex(-56, -500);
  vertex(-48, -460);
  vertex(-46, -400);
  vertex(-52, -360);
  vertex(-48, -330);
  vertex(-39, -300);
  vertex(-34, -270);
  vertex(-28, -230);
  vertex(-20, -195);
  vertex(-12, -150);

  //fork up

  vertex(-3, -195);
  vertex(2, -230);
  vertex(12, -270);
  vertex(27, -300);
  vertex(34, -330);
  vertex(32, -300);
  vertex(20, -270);
  vertex(11, -230);
  vertex(6, -195);

  //back down

  vertex(-12, -120);
  vertex(-14, -80);
  vertex(-19, -30);
  vertex(-22, 20);
  vertex(-9, 60);
  vertex(0, 100);
  vertex(4, 160);
  vertex(2, 210);
  vertex(5, 260);
  vertex(10, 310);
  vertex(11, 330);
  vertex(10, 340);
  vertex(11, 390);
  vertex(15, 420);
  vertex(9, 470);
  vertex(6, 510);
  vertex(16, 535);
  vertex(19, 545);
  vertex(24, 550);


  endShape(CLOSE);


  popMatrix();
}


void leaf(float leafX, float leafY, float sze2, float rot2, float opacity2) {
  fill(-opacity2 + 140, -opacity2 % 2 + 193, -opacity2 + 51);
  pushMatrix();
  translate(leafX, leafY);
  scale(sze2);
  rotate(radians(rot2));

  beginShape();
  vertex(0, 10);
  vertex(-10, 5);
  vertex(-12, 2);
  vertex(-7, -3);
  vertex(-2, -4);
  vertex(2, -2);
  vertex(8, 0);
  vertex(9, 5);
  endShape(CLOSE);

  popMatrix();
}

void bush(float bushX, float bushY, float sze3, float rot3, float shade){
 pushMatrix();
 rotate(radians(rot3));
 scale(sze3);
 translate(bushX, bushY);
 leaf(0, 0, 1, 0, shade + 0);
 leaf(10, 15, 1, 62, shade + 13);
 leaf(5, 8, 1, 118, shade + 29);
 leaf(12, 0, 1, 82, shade + -24);
 leaf(-2, -15, 1, -230, shade + 18);
 leaf(-9, -6, 1.2, 123, shade + -2);
 leaf(14, 19, 1, -20, shade + 0);
 leaf(15, -15, 1, 94, shade + 10);
 leaf(21, 7, 1, 90, shade + 0);
 leaf(-8, 12, 1, 0, shade + 25);
 leaf(26, 0, 1, 150, shade + 32);
 leaf(-15, -3, 1, 0, shade + 0);
 popMatrix();
}
