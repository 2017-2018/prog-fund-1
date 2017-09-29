//==========================================================//
//       Solution for Processing Lab04_Challenge_Exercise03 //
//                                                          //
//   Author(s): Siobhan Drohan & Mairead Meagher, WIT       //
//                                                          //
//  Description:  Chess board using the rect method         //
//                and doing a chequered colour scheme.      //
//                                                          //
//  Instructions: Run the code by clicking the triangle     //
//                button above.                             //
//==========================================================//

size(400,400);
background(150);
  
for (int i=0; i < 8; i++)
{
  for (int j=0; j < 8; j++)
  { 
    if ((i + j + 1) % 2 == 0)
      fill(0);
    else
      fill(255);
    rect(j*50,i*50,50,50);
  }
}
