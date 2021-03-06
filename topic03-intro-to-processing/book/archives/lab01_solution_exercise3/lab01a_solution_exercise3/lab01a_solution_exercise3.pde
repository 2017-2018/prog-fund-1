//======================================================//
//       Solution for Processing Lab01a_exercise3       //
//                                                      //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT   //
//                                                      //
//  Description:  Drawing the beats (Dr. Dre) logo      //
//                                                      //
//  Instructions: Run the code by clicking the triangle //
//                button above.                         //
//======================================================//

//Setting up the display window
size(200,200);
background(255); 
noStroke();

//outer red circle
fill(255,0,0);
ellipse(100,100,180,180);

//inner white circle
fill(255,255,255);
ellipse(100,100,90,90);

//inner red circle
fill(255,0,0);
ellipse(100,100,60,60);

//line of the 'b'
fill(255,255,255);
rect(55,0,14,100);

