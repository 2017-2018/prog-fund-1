//======================================================//
//       Solution for Processing Lab02_exercise4        //
//                                                      //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT   //
//                                                      //
//  Description:  Animating two circle based on         // 
//                mouse location.                       //
//                                                      //
//  Instructions: Run the code by clicking the triangle //
//                button above.                         //
//======================================================//

void setup() {
  size(100, 100);
  noStroke();   
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
