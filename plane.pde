Plane myPlane;

class Plane
{
  
  PVector planePosition;
  
  float planeX;
  float planeY;
  float planeWidth;
  float planeHeight;
  float planeHalfWidth;
  float planeHalfHeight;
  
  float planeWingX;
  float planeWingY;
  float planeWingWidth;
  float planeWingHeight;
  float planeWingHalfWidth;
  float planeWingHalfHeight;
  
  float planeSpeed;
  
  Plane()
  { 
    planeWidth = 125;
    planeHeight = 50;
    planeHalfWidth = planeWidth /2;
    planeHalfHeight = planeHeight / 2;
    
    planePosition = new PVector(0 - planeWidth, 200);
    
    planeWingWidth = 50;
    planeWingHeight = 20;
    planeWingHalfWidth = planeWingWidth / 2;
    planeWingHalfHeight = planeHeight / 2;
    planeWingX = planePosition.x + planeHalfWidth - planeWingHalfWidth;
    planeWingY = planePosition.y - planeWingHeight;
    
    planeSpeed = 4;
  }
  
  void planeDraw()
  {
    fill(155);
    //body of the plane
    rect(planePosition.x, planePosition.y, planeWidth, planeHeight);
    //top wing
    rect(planePosition.x + planeHalfWidth - planeWingHalfWidth, planePosition.y - planeWingHeight, planeWingWidth, planeWingHeight);
    //bottom wing
    rect(planePosition.x + planeHalfWidth - planeWingHalfWidth, planePosition.y + planeHeight, planeWingWidth, planeWingHeight);
    
    planePosition.x += planeSpeed;
  }
}
