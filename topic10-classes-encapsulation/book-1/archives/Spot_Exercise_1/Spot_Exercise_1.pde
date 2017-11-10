Spot sp;

void setup()
{
  size (100,100);
  noStroke();
  sp = new Spot(33, 50, 30, 255, 10, 20);
}

void draw()
{
  //Add a grow method that increases the size of the pixels by the value passed as a parameter
  //Everytime draw is called, call grow to increase the diameter by 1 pixel.
  background(0);
  sp.grow(1);
  sp.display();
}
