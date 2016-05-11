Player myPlayer;

class Player
{
  PVector playerPosition;
  
  float playerWidth;
  float playerHeight;
  float playerHalfWidth;
  float playerHalfHeight;
  float playerSpeed;
  
  Player()
  {
    playerPosition = new PVector(200, 200);
    
    playerWidth = 50;
    playerHeight = 50;
    playerHalfWidth = playerWidth /2;
    playerHalfHeight = playerHeight /2;
    playerSpeed = 5;
  }
  
  void playerDraw()
  { 
    fill(255);
    rect(playerPosition.x, playerPosition.y, playerWidth, playerHeight);
    
    if (keyPressed)
    {
      //general up down left and right movement
      if(key == 'a')
      {
       playerPosition.x -= playerSpeed;
      }
      if(key == 'd')
      {
       playerPosition.x += playerSpeed;
      } 
      if(key == 'w')
      {
        playerPosition.y -= playerSpeed;
      }
      if(key == 's')
      {
        playerPosition.y += playerSpeed;
      }
    }
  }
}
