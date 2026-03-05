//hope for the future
//Lush Nature
//add branches
//if time: add roots, ADD DEER


float sway = 0;
float sway2 = 0;
float rotat = 0;
float rotat2 = 0;
boolean move = true;

void setup() {
  size(1200, 1000, P2D);
}


void draw() {
  println(mouseX, mouseY);
  background(209, 254, 255);

  //movement 1
  if (move) {
    sway = sway + 0.05;
    if (sway >= 2) {
      move = false;
    }
  } else {
    sway = sway - 0.05;
    if (sway <= -2) {
      move = true;
    }
  }

  //movement 2
  if (move) {
    sway2 = sway2 - 0.05;
    if (sway2 >= 2) {
      move = false;
    }
  } else {
    sway2 = sway2 + 0.05;
    if (sway2 <= -2) {
      move = true;
    }
  }

  //rotate 1
  if (move) {
    rotat = rotat + 0.01;
    if (rotat >= 0.5) {
      move = false;
    }
  } else {
    rotat = rotat - 0.01;
    if (rotat <= -0.5) {
      move = true;
    }
  }

  //rotate 2
  if (move) {
    rotat2 = rotat2 - 0.01;
    if (rotat2 >= 0.5) {
      move = false;
    }
  } else {
    rotat2 = rotat2 + 0.01;
    if (rotat2 <= -0.5) {
      move = true;
    }
  }


  //background trees
  trunk(sway + 300, 330, 0.4, rotat + 1, -70);
  trunk(sway2 + 950, 200, 0.4, rotat2 + 3, -60);
  trunk(sway2 + 760, 300, 0.35, rotat2 + -1, -80);
  trunk(sway + 638, 400, 0.5, rotat, -75);
  trunk(sway2 + 444, 350, 0.4, rotat2 + 5, -70);
  trunk(sway + 50, 400, 0.4, rotat, -50);


  //background leaves
  backleafy(274, 52, 1, 1);
  backleafy2(935, -70, 1, 3);
  backleafy2(735, 60, 0.9, -1);
  backleafy(600, 30, 1.2, 0);
  backleafy2(439, 55, 1, 5);
  backleafy(18, 109, 1, 0);


  //ground
  noStroke();
  fill(67, 35, 2);
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
  bush(0, 500, 1, 976, 0);
  bush(20, 500, 1, 675, -21);
  bush(0, 520, 0.9, 235, 18);
  bush(0, 475, 1.1, 865, 6);
  bush(45, 510, 1, 634, 0);
  bush(40, 480, 1.1, -192, -28);
  bush(65, 515, 1.3, 94, 8);
  bush(80, 505, 0.8, 1, 2);
  bush(120, 520, 1.18, 12, -19);
  bush(185, 512, 1.12, 129, 12);
  bush(255, 518, 0.8, 563, 18);
  bush(300, 530, 1.2, 347, -2);
  bush(360, 530, 0.9, -523, -7);
  bush(400, 525, 1, 278, 5);
  bush(455, 530, 1.3, 18, 15);
  bush(525, 540, 0.8, -10, 20);
  bush(600, 550, 1.1, 192, -27);
  bush(655, 490, 1.2, 128, -8);
  bush(625, 520, 0.9, 69, 1);
  bush(700, 450, 0.9, 0, 32);
  bush(675, 475, 1.1, 28, -17);
  bush(655, 500, 1, 64, -30);
  bush(740, 425, 1.1, 82, -15);
  bush(789, 417, 1.3, 192, 15);
  bush(850, 410, 1, 0, 0);
  bush(820, 422, 1, 0, -30);
  bush(899, 402, 0.9, 29, 20);
  bush(943, 395, 1.2, 128, 0);
  bush(1000, 385, 1.1, 51, 0);
  bush(1052, 379, 0.9, 315, 27);
  bush(1095, 371, 1.2, 206, 19);
  bush(1150, 360, 1, 0, 0);
  bush(1190, 350, 1.4, 27, 12);
  bush(780, 485, 2, 92, -50);
  bush(225, 567, 2, 158, -50);



  //ground leaves
  ground(694, 618, 3, 159, -13);
  ground(365, 625, 3, 0, -15);
  ground(61, 642, 2.9, 61, -8);
  ground(181, 760, 3.1, -60, 0);
  ground(1071, 573, 3, 184, 39);
  ground(888, 641, 3, 0, 30);
  ground(596, 749, 2.8, 15, 32);
  ground(362, 818, 3, -94, 38);
  ground(914, 750, 2.9, 853, 34);
  ground(1100, 832, 3.1, 173, 30);
  ground(902, 928, 3, 102, 38);
  ground(741, 850, 3, 92, 32);
  ground(576, 924, 3.5, 1936, 41);
  ground(251, 940, 3, 5843, 38);
  ground(59, 875, 2.8, 235, 40);



  //trees + their leaf
  trunk(sway + 200, 450, 0.9, rotat + 0, -50);
    foreleafy(152, 0, 1.7, rotat);
  trunk(sway + 1050, 250, 0.7, rotat + -6, -25);
    foreleafy(970, -150, 1.4, -6);
  trunk(sway2 + 825, 300, 0.6, rotat2 + 2, -59);
    foreleafy2(800, -100, 1.3, 2);
  trunk(sway + 95, 300, 0.5, rotat + -3, -27);
    foreleafy(47, -50, 1.2, -3);
  trunk(sway2 + 406, 300, 0.8, rotat2 + 0, -35);
    foreleafy2(365, -100, 1.6, rotat2);
  trunk(sway + 1155, 220, 0.3, rotat + 5, -40);
    foreleafy(1155, 0, 0.75, 5);
  trunk(sway + 925, 450, 0.9, rotat + 0, -50);
      foreleafy(878, 0, 1.7, rotat);
  trunk(sway +556, 340, 0.4, rotat + -5, -50);
      foreleafy(500, 48, 1, -5);
  trunk(sway + 730, 300, 0.4, rotat + 8, -45);
      foreleafy(740, 0, 1, 8);
  trunk(sway2 + 17, 550, 0.4, rotat2 + -20, -60);




  //lower greenery
  bush(1121, 565, 0.9, 523, -50);
  bush(520, 600, 2, 263, -50);

  bush(1140, 435, 2, 92, -50);
  bush(970, 430, 2, 0, -50);
}


void trunk(float trunkX, float trunkY, float sze1, float rot1, float opacity) {
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
  fill(-opacity2 + 188, -opacity2 % 2 + 224, -opacity2 + 72);
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

void groundleaf(float groundleafX, float groundleafY, float sze4, float rot4, float opacity4) {
  fill(-2*opacity4 + 152, -2*opacity4 + 97, -opacity4 + 46);
  pushMatrix();
  translate(groundleafX, groundleafY);
  scale(sze4);
  rotate(radians(rot4));

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


void ground(float groundX, float groundY, float sze5, float rot5, float shade2) {
  pushMatrix();
  translate(groundX, groundY);
  rotate(radians(rot5));
  scale(sze5);
  groundleaf(0, 0, 1, 0, shade2 + 0);
  groundleaf(10, 15, 1, 62, shade2 + 13);
  groundleaf(5, 8, 1, 118, shade2 + 29);
  groundleaf(12, 0, 1, 82, shade2 + -24);
  groundleaf(-2, -15, 1, -230, shade2 + 18);
  groundleaf(-9, -6, 1.2, 123, shade2 + -2);
  groundleaf(14, 19, 1, -20, shade2 + 0);
  groundleaf(15, -15, 1, 94, shade2 + 10);
  groundleaf(21, 7, 1, 90, shade2 + 0);
  groundleaf(-8, 12, 1, 0, shade2 + 25);
  groundleaf(26, 0, 1, 150, shade2 + 32);
  groundleaf(-15, -3, 1, 0, shade2 + 0);
  popMatrix();
}

void bush(float bushX, float bushY, float sze3, float rot3, float shade) {
  pushMatrix();
  translate(bushX, bushY);
  rotate(radians(rot3));
  scale(sze3);
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

void backleafy(float leafyX, float leafyY, float sze6, float rot6) {
  pushMatrix();
  translate(leafyX, leafyY);
  rotate(radians(rot6));
  scale(sze6);

  //top to bottom of tree

  bush(sway + -13, sway2 + 0, 0.6, 352, 0);
  bush(sway + -2, sway2 + 20, 0.6, 352, 0);
  bush(sway + -7, sway2 + 40, 0.6, 352, 0);
  bush(sway + 7, sway2 + 68, 0.6, 352, 0);
  bush(sway + -9, sway2 + 99, 0.6, 352, 0);
  bush(sway + 9, sway2 + 99, 0.6, 351, 0);
  bush(sway + -8, sway2 + 130, 0.6, 352, 0);
  bush(sway + 7, sway2 + 140, 0.6, 352, 0);
  bush(sway + 2, sway2 + 170, 0.6, 352, 0);
  bush(sway + 17, sway2 + 170, 0.6, 352, 0);
  bush(sway + 36, sway2 + 170, 0.6, 352, 0);
  bush(sway + -6, sway2 + 190, 0.6, 352, 0);
  bush(sway + 26, sway2 + 200, 0.6, 352, 0);
  bush(sway + 8, sway2 + 230, 0.6, 352, 0);
  bush(sway + 12, sway2 + 250, 0.6, 352, 0);
  bush(sway + 7, sway2 + 273, 0.6, 352, 0);
  bush(sway + 18, sway2 + 280, 0.6, 352, 0);
  bush(sway + 17, sway2 + 290, 0.6, 352, 0);
  bush(sway + 0, sway2 + 310, 0.6, 352, 0);
  bush(sway + 7, sway2 + 330, 0.6, 352, 0);
  bush(sway + 17, sway2 + 310, 0.6, 352, 0);
  bush(sway + 17, sway2 + 345, 0.6, 352, 0);
  bush(sway + 12, sway2 + 380, 0.6, 352, 0);
  bush(sway + 10, sway2 + 400, 0.6, 352, 0);
  bush(sway + 26, sway2 + 400, 0.6, 352, 0);


  popMatrix();
}


void backleafy2(float leafyX2, float leafyY2, float sze62, float rot62) {
  pushMatrix();
  translate(leafyX2, leafyY2);
  rotate(radians(rot62));
  scale(sze62);

  //top to bottom of tree

  bush(sway2 + -13, sway + 0, 0.6, 352, 0);
  bush(sway2 + -2, sway + 20, 0.6, 352, 0);
  bush(sway2 + -7, sway + 40, 0.6, 352, 0);
  bush(sway2 + 7, sway + 68, 0.6, 352, 0);
  bush(sway2 + -9, sway + 99, 0.6, 352, 0);
  bush(sway2 + 9, sway + 99, 0.6, 351, 0);
  bush(sway2 + -8, sway + 130, 0.6, 352, 0);
  bush(sway2 + 7, sway + 140, 0.6, 352, 0);
  bush(sway2 + 2, sway + 170, 0.6, 352, 0);
  bush(sway2 + 17, sway + 170, 0.6, 352, 0);
  bush(sway2 + 36, sway + 170, 0.6, 352, 0);
  bush(sway2 + -6, sway + 190, 0.6, 352, 0);
  bush(sway2 + 26, sway + 200, 0.6, 352, 0);
  bush(sway2 + 8, sway + 230, 0.6, 352, 0);
  bush(sway2 + 12, sway + 250, 0.6, 352, 0);
  bush(sway2 + 7, sway + 273, 0.6, 352, 0);
  bush(sway2 + 18, sway + 280, 0.6, 352, 0);
  bush(sway2 + 17, sway + 290, 0.6, 352, 0);
  bush(sway2 + 0, sway + 310, 0.6, 352, 0);
  bush(sway2 + 7, sway + 330, 0.6, 352, 0);
  bush(sway2 + 17, sway + 310, 0.6, 352, 0);
  bush(sway2 + 17, sway + 345, 0.6, 352, 0);
  bush(sway2 + 12, sway + 380, 0.6, 352, 0);
  bush(sway2 + 10, sway + 400, 0.6, 352, 0);
  bush(sway2 + 26, sway + 400, 0.6, 352, 0);


  popMatrix();
}


void foreleafy(float foreleafyX, float foreleafyY, float sze7, float rot7) {
  pushMatrix();
  translate(foreleafyX, foreleafyY);
  rotate(radians(rot7));
  scale(sze7);

  //top to bottom of tree

  bush(sway + -13, sway2 + 0, 0.6, 352, 0);
  bush(sway + -2, sway2 + 20, 0.6, 352, 0);
  bush(sway + -7, sway2 + 40, 0.6, 352, 0);
  bush(sway + 7, sway2 + 68, 0.6, 352, 0);
  bush(sway + -9, sway2 + 99, 0.6, 352, 0);
  bush(sway + 9, sway2 + 99, 0.6, 351, 0);
  bush(sway + -8, sway2 + 130, 0.6, 352, 0);
  bush(sway + 7, sway2 + 140, 0.6, 352, 0);
  bush(sway + 2, sway2 + 170, 0.6, 352, 0);
  bush(sway + 17, sway2 + 170, 0.6, 352, 0);
  bush(sway + 36, sway2 + 170, 0.6, 352, 0);
  bush(sway + -6, sway2 + 190, 0.6, 352, 0);
  bush(sway + 26, sway2 + 200, 0.6, 352, 0);
  bush(sway + 8, sway2 + 230, 0.6, 352, 0);
  bush(sway + 12, sway2 + 250, 0.6, 352, 0);
  bush(sway + 7, sway2 + 273, 0.6, 352, 0);
  bush(sway + 18, sway2 + 280, 0.6, 352, 0);
  bush(sway + 17, sway2 + 290, 0.6, 352, 0);
  bush(sway + 0, sway2 + 310, 0.6, 352, 0);
  bush(sway + 7, sway2 + 330, 0.6, 352, 0);
  bush(sway + 17, sway2 + 310, 0.6, 352, 0);
  bush(sway + 17, sway2 + 345, 0.6, 352, 0);
  bush(sway + 12, sway2 + 380, 0.6, 352, 0);
  bush(sway + 10, sway2 + 400, 0.6, 352, 0);
  bush(sway + 26, sway2 + 400, 0.6, 352, 0);


  popMatrix();
}


void foreleafy2(float foreleafyX2, float foreleafyY2, float sze72, float rot72) {
  pushMatrix();
  translate(foreleafyX2, foreleafyY2);
  rotate(radians(rot72));
  scale(sze72);

  //top to bottom of tree

  bush(sway2 + -13, sway + 0, 0.6, 352, 0);
  bush(sway2 + -2, sway + 20, 0.6, 352, 0);
  bush(sway2 + -7, sway + 40, 0.6, 352, 0);
  bush(sway2 + 7, sway + 68, 0.6, 352, 0);
  bush(sway2 + -9, sway + 99, 0.6, 352, 0);
  bush(sway2 + 9, sway + 99, 0.6, 351, 0);
  bush(sway2 + -8, sway + 130, 0.6, 352, 0);
  bush(sway2 + 7, sway + 140, 0.6, 352, 0);
  bush(sway2 + 2, sway + 170, 0.6, 352, 0);
  bush(sway2 + 17, sway + 170, 0.6, 352, 0);
  bush(sway2 + 36, sway + 170, 0.6, 352, 0);
  bush(sway2 + -6, sway + 190, 0.6, 352, 0);
  bush(sway2 + 26, sway + 200, 0.6, 352, 0);
  bush(sway2 + 8, sway + 230, 0.6, 352, 0);
  bush(sway2 + 12, sway + 250, 0.6, 352, 0);
  bush(sway2 + 7, sway + 273, 0.6, 352, 0);
  bush(sway2 + 18, sway + 280, 0.6, 352, 0);
  bush(sway2 + 17, sway + 290, 0.6, 352, 0);
  bush(sway2 + 0, sway + 310, 0.6, 352, 0);
  bush(sway2 + 7, sway + 330, 0.6, 352, 0);
  bush(sway2 + 17, sway + 310, 0.6, 352, 0);
  bush(sway2 + 17, sway + 345, 0.6, 352, 0);
  bush(sway2 + 12, sway + 380, 0.6, 352, 0);
  bush(sway2 + 10, sway + 400, 0.6, 352, 0);
  bush(sway2 + 26, sway + 400, 0.6, 352, 0);


  popMatrix();
}
