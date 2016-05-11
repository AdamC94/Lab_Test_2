Drop myDrop;

class Drop
{
  
  float dropWidth;
  float dropHeight;
  float dropHalfWidth;
  float dropHalfHeight;
  float dropX;
  float dropY;
  
  PVector dropPosition;
  
  float randomDropPositionX = random(dropWidth, width - dropWidth);
  boolean hasDropped;
  
  float dropSpeed;
  
  
  Drop()
  {
    dropWidth = 50;
    dropHeight = 50;
    dropHalfWidth = dropWidth / 2;
    dropHalfHeight = dropHeight / 2;
    
    dropPosition = new PVector(myPlane.planePosition.x + myPlane.planeHalfWidth - dropHalfWidth, myPlane.planePosition.y);
    
    hasDropped = false;
    
    dropSpeed = 5;
  }
  
    void dropDraw()
    {
     if(myPlane.planePosition.x - myPlane.planeHalfWidth >= randomDropPositionX)
    {
      hasDropped = true;
     
    }
    
    if(hasDropped == true)
    {
      rect(randomDropPositionX, myPlane.planePosition.y + myDrop.dropPosition.y, dropWidth, dropHeight);
      dropPosition.y += dropSpeed;
    }
    
    if(dropPosition.y >= height)
    {
      dropPosition.y = myPlane.planePosition.y;
    }
   }
}
