class Stick 
{
  int X;
  int Y;

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
    rect(X, Y, 15, 70);
  }

  void stickRedraw()
  {
    stroke(255);
    fill(0, 255, 0);
    rect(this.X, this.Y, 15, 70);
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