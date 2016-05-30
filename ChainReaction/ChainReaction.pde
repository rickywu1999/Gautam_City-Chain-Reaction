
Baller[] balls = new Baller[10];

void setup()
{
  for (int a = 0; a < 10; a++){
    balls[a] = new Baller();
  }
  size(500,500);
  background(0);
}

void mouseClicked(){
  balls = (Baller[])expand(balls, balls.length + 1);
  balls[balls.length - 1] = new Baller(mouseX,mouseY);
}
void draw()
{
  background(0);
  int count = 1;
  for (Baller b : balls)
  {
    for (int a = count; a < balls.length; a++){
      if (!b.dead){
        b.infecting(balls[a]);
      }
    }
    b.update();
  }
}