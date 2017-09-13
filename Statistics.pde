class Statistics
{
  int score=0;
  int flag=1;
  public void stickMissed()
  {
    if (ball.posXBall > player2.getXPos()+ ball.radius || ball.posXBall < player1.getXPos()+ ball.radius)
    {
      flag = 0;
      fill(255, 255, 255);
      if (score<2000) {
        text("OOppssee!! you missed it", 290, 150);
      }
      text("Game Over", 330, 200);
      text("press any key to restart or ESC to exit", 250, 250);
      if (keyPressed) {
        if (keyCode != ESC) {
          reset();
        }
      }
    } else {
      score+= 1;
    }
  }

  public void showScore()
  {
    fill(255, 255, 0);
    text("Score:"+score, 550, 10);
  }

  public void showMessage()
  {
    if (score >500 && score <=600 && flag != 0) {
      fill(255, 255, 255);
      text("Awesome!!", 300, 50);
    }
    if (score >1000 && score <=1100 && flag != 0) {
      fill(255, 255, 255);
      text("You are really playing well!!", 300, 50);
    }
    if (score >2000 && score <=2100 && flag != 0) {
      fill(255, 255, 255);
      text("You crossed expert level", 300, 50);
    }
    if (flag == 0 && score >2000) {
      fill(255, 255, 255);
      text("well played!! your score is "+score, 250, 50);
    }
    if (score >5000 && score <5500 && flag != 0) {
      fill(255, 255, 255);
      text("Unstopable", 300, 50);
    }
    if (score > 10000 && flag!=0) {
      fill(255, 0, 0);
      text("thats it! stop the game ortherwise you will crash our servers", 150, 50);
    }
  }
}