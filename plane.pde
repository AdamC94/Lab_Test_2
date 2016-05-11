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
  
  float planeSpeed;
  
  Plane()
  {
    planePosition = new PVector(0, 200);
    
    planeWidth = 125;
    planeHeight = 50;
    planeHalfWidth = planeWidth /2;
    planeHalfHeight = planeHeight / 2;
    
    planeSpeed = 4;
  }
  
  void planeDraw()
  {
    fill(155);
    rect(planePosition.x, planePosition.y, planeWidth, planeHeight);
    
    planePosition.x += planeSpeed;
  }
}
