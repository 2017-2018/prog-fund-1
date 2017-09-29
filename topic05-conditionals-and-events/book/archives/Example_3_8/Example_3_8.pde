
///////////////////////////////////////////////////
/////////  ANIMATING STUFF OVER TIME ///////////////
///////////////////////////////////////////////////

//Exercise: this redraws the background when the mouse is pressed

void setup() {
  size(500,400);
  background(0);
}

void draw() {
 
  if (mousePressed) {
    background(0);
  }

  stroke(255);
  fill(45,45,45);
  ellipse(mouseX, mouseY, 100, 100);
}
