class Spot
{
  float xCoord, yCoord;
  float diameter;
  int red, green, blue, gray;
  
  Spot()
  {
  }
  
 Spot(float xCoord, float yCoord, float diameter)
 {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.diameter = diameter;
  }
  
  void display()
  {
    ellipse(xCoord, yCoord, diameter, diameter); 
  }
  
  void colour(int red, int green, int blue)
  {
    this.red = red;
    this.green = green;
    this.blue = blue;
    fill (red, green, blue);
  }

  void colour(int gray){
    this.gray = gray;
    fill (this.gray);
  }

}