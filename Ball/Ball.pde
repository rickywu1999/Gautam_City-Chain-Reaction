int xPos,yPos,xChange,yChange;
boolean normal, expand, dead;
void Ball() {
  xPos = (int)Math.random() * 500;
  yPos = (int)Math.random() * 500;
  xChange = (int)Math.random() * 20;
  yChange = (int)Math.random() * 20;
  normal = true;
  expand = false;
  dead = false;
}

void move() {
  if (normal){
    xPos += xChange;
    yPos += yChange;
    if (xPos <= 0 ){
      xChange *= -1;
    }
    if (yPos <= 0){
      yChange *= -1;
    }
  }
}

void display() {
  ellipse(xPos,yPos,50,50);
}