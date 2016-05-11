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
    playerWidth = 50;
    playerHeight = 50;
    playerHalfWidth = playerWidth /2;
    playrHalfHeight = playerHeight /2;
    playerSpeed = 5;
  }
  
  void playerDraw()
  { 
    fill(255);
    rect(playerPosition.x, playerPosition.y, playerWidth, playerHeight);
    
    if (keyPressed)
    {
      if(key == 'w')
      {
       playerPosition.y += playerSpeed;
      }
    }
  }
}
