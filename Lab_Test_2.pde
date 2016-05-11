void setup()
{
  size(600, 700);
  myPlayer = new Player();
  myCloud = new Cloud();
}

void draw()
{
  background(0);
  fill(0, 0, 255);
  rect(0, 0, width, height/2);
  fill(0, 255, 0);
  rect(0, height/2, width, height/2);
  myPlayer.playerDraw();
  myCloud.cloudDraw();
}
