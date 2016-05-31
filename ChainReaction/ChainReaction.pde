Baller[] balls = new Baller[10];

void setup()
{
    for (int a = 0; a < 10; a++)
    {
        balls[a] = new Baller();
    }
    size(500,500);
    background(0);
}

void mouseClicked()
{
    balls = (Baller[])expand(balls, balls.length + 1);
    balls[balls.length - 1] = new Baller(mouseX,mouseY);
}

void draw()
{
    background(0);
    for (int i = 0; i < balls.length; ++i)
    {
        if (balls[i].dead) continue;
        for (int j = i+1; j < balls.length; j++)
        {
            if (balls[j].dead) continue;
            balls[i].infecting(balls[j]);
        }
        balls[i].update();
    }
}
