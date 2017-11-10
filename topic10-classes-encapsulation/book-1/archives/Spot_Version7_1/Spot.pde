public class Spot 
{
  private float xCoord, yCoord;
  private float diameter;
  private int red, green, blue, gray;
  
  Spot()
  {
  }
   
  Spot(float xCoord, float yCoord, float diameter)
  {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    if ((diameter > 0) && (diameter < 500)){
       this.diameter = diameter;
    }
    else{
       this.diameter = 10;
    } 
  }

  void display()
  {
    ellipse(xCoord, yCoord, diameter, diameter);
  }
  
  void colour(int red, int green, int blue)
  {
    if ((red >=0) && (red <= 255)){
      this.red = red;
    } 
    if ((green >=0) && (green <= 255)){
      this.green = green;
    }
    if ((blue >=0) && (blue <= 255)){
      this.blue = blue;
    }
    fill(this.red, this.green, this.blue);
  }

  void colour(int gray){
    if ((gray >=0) && (gray <= 255)){
        this.gray = gray;
    }
    fill (this.gray);
  }
 
  //------------------//
  //     getters      //
  //------------------//
  public float getDiameter(){
     return diameter;
  }

  public float xCoord(){
    return xCoord;
  }
  
  public float yCoord(){
    return yCoord;
  }
  
  public int getRed(){
    return red;
  }
  
  public int getGreen(){
    return green;
  }
  
  public int getBlue(){
    return blue;
  }
  
  public int getGray(){
    return gray;
  }
  
  //------------------//
  //     setters      //
  //------------------//
  public void setDiameter(float diameter){
    if ((diameter > 0) && (diameter < 500)){
        this.diameter = diameter;
    }
  } 

  public void setXCoord(float xCoord){
     this.xCoord = xCoord;
  } 

  public void setYCoord(float yCoord){
     this.yCoord = yCoord;
  } 

  public void setRed(int red){
    if ((red >=0) && (red <= 255)){
      this.red = red;
    }
  } 

  public void setGreen(int green){
    if ((green >=0) && (green <= 255)){
      this.green = green;
    }
  } 

  public void setBlue(int blue){
    if ((blue >=0) && (blue <= 255)){
      this.blue = blue;
    }
  } 

  public void setGray(int gray){
    if ((gray >=0) && (gray <= 255)){
       this.gray = gray;
    }
  } 

 // There was a lot of the same validation done on the colour variables above.
 // As an alternative to continually repeating this code, you could write a 
 // private helper method that would return true if the value was between the range 
 // and false otherwise.
}