void setup() {
  size(500, 500);
  /* background */
  
  rectMode(CORNERS);
  stroke(#3AC129); /*medium green */
  fill(#9DF2A0); /* light green */
  rect(0, 0, 500, 500);

  /* trunk */
  stroke(#835113); /* dark brown */
  fill(#D68625); /* light orangeish brown */
  rect(200, 250, 225, 325);
  fill(#FAAF4C);
  rect(200, 325, 225, 500); 
  rect(225, 250, 250, 275);
  fill(#EA982B);
  rect(225, 275, 250, 475);
  fill(#D68625);
  rect(225, 475, 250, 500);
  rect(250, 250, 275, 400);
  fill(#FAAF4C);
  rect(250, 400, 275, 500);
  rect(275, 250, 300, 300);
  fill(#EA982B);
  rect(275, 300, 300, 450);
  fill(#D68625);
  rect(275, 450, 300, 500);

  /* leaves */
  stroke(#28891C);
  fill(#3AC129, 100);
  ellipse(250, 250, 125, 125);
  ellipse(125, 250, 200, 200);
  ellipse(200, 300, 75, 75);
  ellipse(175, 125, 200, 200);
  ellipse(275, 125, 225, 225);
  ellipse(100, 125, 100, 100);
  ellipse(325, 290, 200, 200);
  ellipse(350, 200, 150, 150);
  ellipse(400, 125, 125, 125);
  ellipse(425, 250, 150, 150);
  ellipse(325, 125, 75, 75);
}


void draw() {}

void mouseClicked() {
  colorMode(HSB,255);
  ellipseMode(CENTER);
  float value = random(255);
  noStroke();
  fill(value,255,255);
  ellipse(mouseX, mouseY, 45, 45);
}






