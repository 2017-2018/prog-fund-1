void setup()
{
  size(100,100);
  drawLines(10,4);
}

void drawLines(int x, int num)
{
    line (x, 20, x, 80);
    if (num > 0)
    {
      drawLines(x+5, num-1);
    }
} 


