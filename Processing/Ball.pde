class Ball
{
  float radius = 25;
  float xspeed = 2.5;  // Speed of the shape
  float yspeed = 2.5;  // Speed of the shape

  float xdirection = 1;  // Left or Right
  float ydirection = 1;  // Top to Bottom

  float posXBall = displayWidth/2;
  float posYBall = displayHeight/2;
  
  Stick player1;
  Stick player2;

  Ball(Stick player1, Stick player2)
  {
    stroke(255);
    fill(255, 255, 255);
    ellipse(displayWidth/2, displayHeight/2, radius, radius);
    this.player1 = player1;
    this.player2 = player2;
  }

  void ballRedraw()
  {
    stroke(255);
    fill(255, 255, 255);
    ellipse(posXBall, posYBall, radius, radius);
  }

  void move()
  {
    //motion
    posXBall = posXBall + ( xspeed * xdirection );
    posYBall = posYBall + ( yspeed * ydirection );


    //right bar Reflection
    if (posXBall == displayWidth - 15-50 && player2.getYPos() <= posYBall && posYBall <= (player2.getYPos() + 70))
    {
      xdirection = xdirection * (-1);
    }
    //left bar Reflection
    if (posXBall == posXPlayer1+radius && posYBall >=player1.getYPos() && posYBall <= player1.getYPos()+70) 
    {
      xdirection = xdirection * (-1);
    }
   
    if (posYBall > displayHeight - radius || posYBall < radius) 
    {
      //horizontalReflection
      ydirection = ydirection * (-1);
    }
    if (posXBall > posXPlayer2+radius || posXBall < posXPlayer1+radius)
    {
      fill(255, 255, 255);
      text("OUT!!!", 350, 200);
    }
    ballRedraw();
  }
}