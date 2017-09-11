int displayWidth = 700;
int displayHeight = 400;

int posXPlayer1 = 30; 
int posYPlayer1 = 150;

int posXPlayer2 = 650; 
int posYPlayer2 = 150;

Stick player1, player2;

Ball ball;

public void settings()
{
  size(displayWidth, displayHeight);
}

void setup() 
{
  frameRate(50);
  player1 = new Stick(posXPlayer1, posYPlayer1);
  player2 = new Stick(posXPlayer2, posYPlayer1);

  ball = new Ball(player1, player2);
}

void draw()
{
  background(0);

  if (keyPressed) 
  {
    if (key=='a' || key=='A') 
    {
      player1.movePlayerUp();
    }
    if (key=='z' || key=='Z') 
    {
      player1.movePlayerDown();
    }
    if (key=='k' || key=='K') 
    {
      player2.movePlayerUp();
    } 
    if (key=='m'|| key=='M') 
    {
      player2.movePlayerDown();
    }
  }
  player1.stickRedraw();
  player2.stickRedraw();
  ball.move();
}