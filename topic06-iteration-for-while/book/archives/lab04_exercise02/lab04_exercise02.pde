//======================================================//
//       Solution for Processing Lab04_Exercise02       //
//                                                      //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT   //
//                                                      //
//  Description:  Chess board using the line method     //
//                and using a while loop                //
//                                                      //
//  Instructions: Run the code by clicking the triangle //
//                button above.                         //
//======================================================//

size(400,400);
background(150);
  
int i = 1;
while (i < 9)
{
   //horizontal lines
   line(0,i*50, 400, i*50);
   //vertical lines
   line(i*50,0,i*50,400);
   i++;
}
