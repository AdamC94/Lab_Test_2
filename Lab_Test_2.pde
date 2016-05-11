void setup() // setup method
{
  size(600, 700);
  myPlayer = new Player();
  myCloud = new Clouds();
  myPlane = new Plane();
  myDrop = new Drop();
  
}

void draw() // draw method
{
  background(0); // background of the sketch
  fill(0, 0, 255);
  rect(0, 0, width, height/2);
  fill(0, 255, 0);
  rect(0, height/2, width, height/2);
  myPlayer.playerDraw();
  myCloud.cloudDraw();
  myPlane.planeDraw();
  myDrop.dropDraw();
}
