void setup()
{
  noLoop();
  size(555,500);
}
void draw()
{
  background(255);
  Die a = new Die(40,50);
  a.show();
  Die b = new Die(165,50);
  b.show();
  Die c = new Die(290,50);
  c.show();
  Die d = new Die(415,50);
  d.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  
  Die(int x, int y) //constructor
  {

    myX=x;
    myY=y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rect(myX,myY,100,100,15);
  }
}
