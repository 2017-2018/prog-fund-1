//======================================================//
//       Solution for Processing Lab03_Exercise03       //
//                                                      //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT   //
//                                                      //
//  Description:  Mouse Pressed Event                   //
//                                                      //
//  Instructions: Run the code by clicking the triangle //
//                button above.                         //
//======================================================//

float diameter = 100;

void setup() {
  size(500,400);
  background(0);
  stroke(255);
}

void draw() 
{ 
   fill(255,0,0);
   ellipse(mouseX, mouseY, diameter, diameter);
   
   if ((mousePressed) && (diameter > 50)){
       diameter = diameter - 10;
   }
   
}
