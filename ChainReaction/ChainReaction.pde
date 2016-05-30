Ball[] balls;

void setup() {
  size(500,500);
  background(255);
  balls = new Ball[10];
}

void draw() {
  clear();
  for (Ball a:balls){
    a.move();
    a.display();
  }
}