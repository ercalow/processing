Ball ball1;
Ball ball2;
Ball ball3;

void setup() {
  size(600, 400);

  ball1 = new Ball(600, 400, 5, -20, 30, 255, 0, 255);
  ball2 = new Ball(0, 0, 30, -2, 10, 0, 255, 255);
  ball3 = new Ball(200, 0, -30, 30, 20, 255, 255, 0);
};

void draw() {
  background(128);
  ball1.move();
  ball1.render();
  ball2.move();
  ball2.render();
  ball3.move();
  ball3.render();
};


