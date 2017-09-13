int displayWidth = 700;
int displayHeight = 400;

int posXPlayer1 = 30; 
int posYPlayer1 = 150;

int posXPlayer2 = 650; 
int posYPlayer2 = 150;

int player1Command; // 0 = no movement, 1 = move up, -1 = move down
int player2Command;

Stick player1, player2;
Ball ball;
Statistics stats;

void settings()
{  
  size(displayWidth, displayHeight);
}

void setup() 
{
  reset();
} 

void reset() 
{
  background(0);
  frameRate(50);
  player1 = new Stick(posXPlayer1, posYPlayer1);
  player2 = new Stick(posXPlayer2, posYPlayer1);
  stats = new Statistics();
  ball = new Ball(player1, player2, stats);
}
void draw()
{
  background(0);
  player1.stickRedraw();
  player2.stickRedraw();
  ball.move();
  stats.showScore();

  if (player2Command == 1) 
  {
    player2.movePlayerUp();
  } else if (player2Command == -1) 
  {
    player2.movePlayerDown();
  } 
  if (player1Command == 1) 
  {
    player1.movePlayerUp();
  } else if (player1Command == -1) 
  {
    player1.movePlayerDown();
  }
}

void keyPressed() {

  if (key=='w') 
  {
    player1Command = 1;
  } else if (key == 's') {
    player1Command = -1;
  } 
  if (keyCode == UP) {
    player2Command = 1;
  } else if (keyCode == DOWN) {
    player2Command = -1;
  }
}

void keyReleased() {
  if (key == 'w' || key == 's') {
    player1Command = 0;
  }
  if (keyCode == UP || keyCode == DOWN) {
    player2Command = 0;
  }
}