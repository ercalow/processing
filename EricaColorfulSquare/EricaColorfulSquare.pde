boolean activity = false;
int red = 0;
int green = 0;
int blue = 0;

void setup() {
  size(600, 400);
};

void draw() {
  rectMode(CENTER);

  if (activity && red < 255) {
    red +=1;
  } else if (activity && red == 255 && green < 255) {
    green +=1;
  } else if (activity && red == 255 && green == 255 && blue < 255) {
    blue +=1;
  } else if (activity && red == 255 && green == 255 && blue == 255) {
    activity = false;
  } else {
    red = 0;
    green = 0;
    blue = 0;
  };

  fill(red, green, blue);
  rect(300, 200, 200, 200);
};

void mousePressed() {
  if (mouseX>200 && mouseX<400 && mouseY>100 && mouseY<300) {
    activity = !activity;
  }
};

