public void setup()
{
  size(500, 500);
  background(0);
}

public void draw()
{
  myFractal(250, 250, 5, 5);
}

public void myFractal(int x, int y, int willy, int dexter)
{   
  noFill();
  stroke(random(255), 0, random(255));
  ellipse((float)x, (float)y, (float)willy, (float)dexter);
  if (willy < 50)
  {   
    myFractal(x - 25, y - 25, willy * 3, dexter * 3);
    myFractal(x - 25, y + 25, willy * 3, dexter * 3);
    myFractal(x + 25, y - 25, willy * 3, dexter * 3);
    myFractal(x + 25, y + 25, willy * 3, dexter * 3);
  }
}
