//======================================================//
//       Solution for Processing Lab02_exercise3        //
//                                                      //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT   //
//                                                      //
//  Description:  Animating a white circle based on     // 
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
  fill(255);
  ellipse(x, y, y, y);
}
