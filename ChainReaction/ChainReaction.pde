
Baller[] balls = {new Baller(), new Baller()};

void setup()
{
  size(1024,760);
  background(0);
}

void draw()
{
  background(0);
  for (Baller b : balls)
  {
    b.update();
  }
}