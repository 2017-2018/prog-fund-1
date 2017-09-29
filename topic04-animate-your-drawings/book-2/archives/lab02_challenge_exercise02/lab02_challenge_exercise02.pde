//===========================================================//
//       Solution for Processing Lab02_challenge_exercise02  //
//                                                           //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT        //
//                                                           //
//  Description:  Animating two circle based on              // 
//                mouse location. Cursor is a HAND.          //
//                                                           //
//  Instructions: Run the code by clicking the triangle      //
//                button above.                              //
//===========================================================//

void setup() {
  size(100, 100);
  noStroke();   
  cursor(HAND);    //cursor is a hand.
}

void draw() {
  float x = mouseX;
  float y = mouseY;
  background(126);
  //white circle
  fill(255);
  ellipse(x, y, y, y);
  //black circle
  fill(0);
  ellipse(y, x, x, x);
}
