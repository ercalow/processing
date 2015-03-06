class Ball {
  float ballLocationX;
  float ballLocationY;
  float velocityX;
  float velocityY;
  float ballRadius;
  float bounciness = 0.85;
  float gravity = 0.5;
  int red;
  int green;
  int blue;

  Ball(float newLocX, float newLocY, float newVelX, float newVelY, 
  float newRadius, int newRed, int newGreen, int newBlue) {
    ballLocationX = newLocX;
    ballLocationY = newLocY;
    velocityX = newVelX;
    velocityY = newVelY;
    ballRadius = newRadius;
    red = newRed;
    green = newGreen;
    blue = newBlue;
  };

  void move() {
    ballLocationX += velocityX;
    velocityY += gravity;
    ballLocationY += velocityY;

    if ((ballLocationX + ballRadius) > width) {
      velocityX = velocityX * -bounciness;
      velocityY *= bounciness;
      ballLocationX = width - ballRadius;
    } else if ((ballLocationX - ballRadius) < 0) {
      velocityX = velocityX * -bounciness;
      velocityY *= bounciness;
      ballLocationX = ballRadius;
    }

    if ((ballLocationY + ballRadius) > height) {
      velocityY = velocityY * -1.0 * bounciness;
      velocityX *= bounciness;
      ballLocationY = height - ballRadius;
    } else if ((ballLocationY - ballRadius) < 0) {
      velocityY = velocityY * -1.0 * bounciness;
      velocityX *= bounciness;
      ballLocationY = ballRadius;
    }
  };

  void render() {
    fill(red, green, blue);
    ellipse( ballLocationX, ballLocationY, ballRadius*2, ballRadius*2 );
  }
};
