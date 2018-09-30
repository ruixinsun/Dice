int sum;
void setup()
{
  noLoop();
  size(820, 800);
}
void draw()
{
  background(255);
  for (int i = 40; i<790; i+=130)
  {
    for (int j = 40; j<790; j+=150)
    {
      Die a = new Die(i, j);
      a.show();
      sum+=a.roll();
    }
  }
  fill(0);
  textSize(28);
  text("Total: "+sum, 350, 780);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die //models one single dice cube
{
  int myX, myY, r;

  Die(int x, int y) //constructor
  {

    myX=x;
    myY=y;
  }
  int roll()
  {
    r = (int)(Math.random()*6+1);

    if (r ==1 || r == 3 || r ==5)
    {
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      ellipse(myX + 50, myY+50, 20, 20);
    }
    if (r==2 || r==3 || r==4 || r==5 ||r==6)
    {
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      ellipse(myX + 25, myY+25, 20, 20);
      ellipse(myX + 75, myY+75, 20, 20);
    }
    if (r==4 || r==5 ||r==6)
    {
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      ellipse(myX + 25, myY+75, 20, 20);
      ellipse(myX + 75, myY+25, 20, 20);
    }
    if (r==6)
    {
      fill((int)(Math.random()*255+25), (int)(Math.random()*255+25), (int)(Math.random()*255+25));
      ellipse(myX + 25, myY+50, 20, 20);
      ellipse(myX + 75, myY+50, 20, 20);
    }
    return r;
  }
  void show()
  {
    fill(0);
    rect(myX, myY, 100, 100, 15);
  }
}
