Spot sp;

void setup()
{
  size (100,100);
  noStroke();
  background(0);
  sp = new Spot(33, 50, 30);
}

void draw()
{
     //??? randomise the colours???  casting???
     //maybe replace this with:  write a method that moves the circle horizontal, another one
     // that moves it vertically?
     sp.colour((int)random(255), (int)random(255),  (int)random(255)); 
     sp.display();
}

