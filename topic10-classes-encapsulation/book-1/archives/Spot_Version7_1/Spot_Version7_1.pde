Spot sp;

void setup()
{
  size (100,100);
  noStroke();
  sp = new Spot(33, 50, 30000);
  println("The value of diameter is : "+ sp.getDiameter());
}

void draw()
{
  background(0);
  sp.colour(255,0,0);
  sp.display();
}