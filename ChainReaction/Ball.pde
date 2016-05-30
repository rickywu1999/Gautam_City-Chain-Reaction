int resX = 1024;
int resY = 760;

class Baller
{
  float posX, posY, velX, velY;
  Baller()
  {
    posX = random(1,50);
    posY = random(1,50);
    velX = random(1,50);
    velY = random(1,50);
  }
  void update()
  {
    if (posX >= resX || posX <= 0)
      velX = -velX;
    if (posY >= resY || posY <= 0)
      velY = -velY;
    posX += velX;
    posY += velY;
    ellipse(posX, posY, 100, 100);
  }
}