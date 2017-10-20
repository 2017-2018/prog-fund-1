void draw()
{
   background(204);

// Drawing a thick, light gray X
   //drawX();

// Drawing a thick, black X
   //drawX(0);

// Drawing a very thick, black X
   //drawX(0, 30);

// Drawing a small, very thick, black X
   //drawX(0, 30, 40, 30, 36);

//Drawing three different X's
     //drawX(160, 20, 0, 5, 60);
     //drawX(0, 10, 30, 20, 60);
     //drawX(255, 2, 20, 38, 60);   

//Drawing shadowed effect X's
     for (int i = 0; i < 20; i++){
          drawX(200-i*10, (20-i)*2, i, i/2, 70);
     } 
}


void drawX()
{
  stroke(160);
  strokeWeight(20);
  line(0,5,60,65);
  line(60,5,0,65);
}

void drawX(int gray)
{
  stroke(gray);
  strokeWeight(20);
  line(0,5,60,65);
  line(60,5,0,65);
}

void drawX(int gray, int weight)
{
  stroke(gray);
  strokeWeight(weight);
  line(0,5,60,65);
  line(60,5,0,65);
}

void drawX(int gray, int weight, int x, int y, int size)
{
  stroke(gray);
  strokeWeight(weight);
  line(x, y, x+size, y+size);
  line(x+size, y, x, y+size);
}
