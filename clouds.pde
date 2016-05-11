Cloud myCloud;

class Cloud
{
  PVector cloudPosition;
  
  float cloudWidth;
  float cloudHalfWidth;
  float cloudHeight;
  float cloudSpeed;
  float cloudEndsBuff;
  float cloudEndsWidth;
  float cloudEndsHeight;
  
  Cloud()
  {
    cloudPosition = new PVector(400, random(20, 300));
    
    cloudWidth = 100;
    cloudHeight = 50;
    cloudHalfWidth = cloudWidth / 2;
    cloudEndsWidth = cloudWidth /4;
    cloudEndsHeight = cloudHeight /2;
    cloudEndsBuff = 5;
    cloudSpeed = random(1, 5);
  }
  
  void cloudDraw()
  {
    noStroke();
    fill(255);
    //middle
    ellipse(cloudPosition.x, cloudPosition.y, cloudWidth, cloudHeight);
    //end left
    ellipse(cloudPosition.x - cloudHalfWidth + cloudEndsBuff, cloudPosition.y, cloudEndsWidth, cloudEndsHeight);
    //end right
    ellipse(cloudPosition.x + cloudHalfWidth - cloudEndsBuff, cloudPosition.y, cloudEndsWidth, cloudEndsHeight);
    
    cloudPosition.x -= cloudSpeed;
    
    if(cloudPosition.x + cloudHalfWidth + cloudEndsWidth /2 <= 0)
    {
      cloudPosition.x = width + cloudHalfWidth + cloudEndsWidth / 2;
      cloudPosition.y = random(20, 300);
      cloudSpeed = random(1, 5);
    }
  }
}
