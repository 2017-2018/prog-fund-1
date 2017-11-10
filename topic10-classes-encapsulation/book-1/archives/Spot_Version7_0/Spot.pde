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
    this.diameter = diameter;
  }

  void display()
  {
    ellipse(this.xCoord, this.yCoord, this.diameter, this.diameter);
  }
  
  void colour(int red, int green, int blue)
  {
     this.red = red;
     this.green = green;
     this.blue = blue;
     fill(this.red, this.green, this.blue);
  }

  void colour(int gray){
    this.gray = gray; 
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
      this.red = red;
  } 

  public void setGreen(int green) {
      this.green = green;
  } 

  public void setBlue(int blue){
      this.blue = blue;
    }
   

  public void setGray(int gray){
       this.gray = gray;
  } 

}