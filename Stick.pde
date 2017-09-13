class Stick 
{
  int X;
  int Y;
  int stickWidth = 15;
  int stickHeight = 70;

  public int getXPos() {
    return this.X;
  }   

  public int getYPos() {
    return this.Y;
  }  
  Stick(int X, int Y) 
  {
    this.X= X;
    this.Y= Y;
    stroke(255);
    fill(0, 255, 0);
    rect(X, Y, stickWidth, stickHeight);
  }

  void stickRedraw()
  {
    stroke(255);
    fill(0, 255, 0);
    rect(this.X, this.Y, stickWidth, stickHeight);
  }

  public void movePlayerUp()
  {
    this.Y = this.Y-10;
    if (this.Y<0) 
    { 
      this.Y=0 ;
    }
    stickRedraw();
  }

  void movePlayerDown()
  {
    this.Y = this.Y+10;
    if (this.Y>330) 
    { 
      this.Y=330 ;
    }
    stickRedraw();
  }
}