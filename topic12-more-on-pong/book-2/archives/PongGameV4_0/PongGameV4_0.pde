//-------------------------------------------------------------------------------------------//
// Idea is based on Reas and Fry (2014) example                                              //
//-------------------------------------------------------------------------------------------//
// EXISTING FUNCIONALITY:                                                                    //
// The Ball class for the Pong game is written. A ball object is created.  The draw() method //
// continually updates the ball's position and re-displays it.                               // 
// The Paddle class is written. A paddle object is created.  The draw() method continually   //
// updates the paddle's position based on the cursor location and re-displays it.            //
// The collision detection method can tell if the ball has hit the paddle.                   //
// ADDED FUNCIONALITY:                                                                       //
// The number of lives lost, maximum lives per game and the score of the game is stored.     //
// The game ends when the user loses the number of lives specified.                          //
//-------------------------------------------------------------------------------------------//

//Objects required in the program
Ball ball;
Paddle paddle;

//Current game data
int livesLost = 0;             //keeps track of the number of lives lost in the current game
int score = 0;                 //high score of the current game
int maxLivesPerGame = 3;       //maximum number of lives that can be lost before the game ends

void setup()
{
   size(600,600);
   noCursor();
   
   //setting up the paddle and the ball with hard-coded sizes.
   paddle = new Paddle(20,100);
   ball = new Ball(20.0);
}

void draw()
{
   background(0);       //Clear the background
  
   paddle.update();     //Update the paddle location in line with the cursor
   paddle.display();    //Draw the paddle in this new location 
  
   //Update the ball position.  If true is returned, the ball has left the display window i.e. a life is lost
   if (ball.update() == true){
       livesLost++;
       println("Lives lost:  "  + livesLost);
   }       

   //If the player still has a life left in the current game, 
   //draw the ball at its new location and check for a collision with the paddle
   if (livesLost < maxLivesPerGame){ 
      ball.display();       
      //Set variable to true if ball and paddle are overlapping, false if not 
      boolean collision = hitPaddle(paddle, ball);
      if (collision == true){
         ball.hit();        //the ball is hit i.e. reverses direction.
         score++;           //increase the score in the current game by 1, if the player hit the ball.
         println("Score:  "  + score);
      }
   }
   //The player has no lives left so the game ends
   else{
      println("Game Over!");
      println("You have lost all of your lives:  "  + livesLost);
      println("Your final score is:  "  + score); 
      exit();     
   } 
}

//method returns true if the ball and paddle overlap (i.e. ball is hit), false otherwise.
boolean hitPaddle(Paddle paddle, Ball ball)
{
   //These variables measure the magnitude of the gap between the paddle and the ball.  
   float circleDistanceX = abs(ball.getXCoord() - paddle.getXCoord());
   float circleDistanceY = abs(ball.getYCoord() - paddle.getYCoord() - paddle.getPaddleHeight()/2);
   
   //The Ball is too far away from the Paddle on the X axis to have a collision, so abandon collision detection
   if (circleDistanceX > (ball.getDiameter()/2)) {
      return false;
   }
   
   //The Ball is too far away from the Paddle on the Y axis to have a collision, so abandon collision detection
   if (circleDistanceY > (paddle.getPaddleHeight()/2 + ball.getDiameter()/2)) {
       return false; 
   }
   
   return true;
   
}