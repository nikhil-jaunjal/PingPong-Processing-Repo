class Ball
{
  float radius = 25;
  float xspeed = 2.5;  // Speed of the shape
  float yspeed = 2.5;  // Speed of the shape

  float xdirection = 1;  // Left or Right
  float ydirection = 1;  // Top to Bottom

  float posXBall = displayWidth/2;
  float posYBall = displayHeight/2;
  
  int extraMargine = 10;

  Stick player1;
  Stick player2;
  Statistics stats;

  Ball(Stick player1, Stick player2, Statistics stats)
  {
    stroke(255);
    fill(255, 255, 255);
    ellipse(displayWidth/2, displayHeight/2, radius, radius);
    this.player1 = player1;
    this.player2 = player2;
    this.stats = stats;
  }

  public void ballRedraw()
  {
    stroke(255);
    fill(255, 255, 255);
    ellipse(posXBall, posYBall, radius, radius);
    /*    if(stats.score == 1000 ){
     increaseSpeed();
     }
     if(stats.score == 2000 ){
     increaseSpeed();
     }  */
  }


  /*  private void increaseSpeed(){
   this.xspeed +=1;
   this.yspeed +=1;
   
   }*/
  public void reflectBall()
  {
    //right bar Reflection
    if (posXBall == displayWidth-15-50 && player2.getYPos()-extraMargine <= posYBall && posYBall <= (player2.getYPos()+70+extraMargine))
    {
      xdirection = xdirection * (-1);
    }
    //left bar Reflection
    if (posXBall == posXPlayer1+radius && player1.getYPos()-extraMargine <= posYBall && posYBall <= player1.getYPos()+70+extraMargine) 
    {
      xdirection = xdirection * (-1);
    }
    if (posYBall > displayHeight - radius || posYBall < radius) 
    {
      //horizontalReflection
      ydirection = ydirection * (-1);
    }
  }

  public void move()
  {
    //motion
    posXBall = posXBall + ( xspeed * xdirection );
    posYBall = posYBall + ( yspeed * ydirection );

    reflectBall();

    stats.stickMissed();
    stats.showMessage();

    ballRedraw();
  }
}