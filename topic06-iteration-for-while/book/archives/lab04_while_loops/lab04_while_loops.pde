//======================================================//
//       Solution for Processing Lab04_while_loops      //
//                                                      //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT   //
//                                                      //
//  Description:  Using while loops                     //
//                                                      //
//  Instructions: Run the code by clicking the triangle //
//                button above.                         //
//======================================================//

size(600, 300);
background(102);
fill(255);
noStroke();

int i = 60; 
while(i  <= 120)
{
    rect(50, i, 500, 10);
    i += 20;
}

