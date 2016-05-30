int resX = 500;
int resY = 500;

class Baller
{
  boolean normal, dead, expand;
  float posX, posY, velX, velY, diameter, colorr,colorg,colorb;
  Baller()
  {
    colorr = random(1,255);
    colorg = random(1,255);
    colorb = random(1,255);
    posX = random(1,500);
    posY = random(1,500);
    velX = random(-10,10);
    velY = random(-10,10);
    diameter = 25;
    normal = true;
    dead = false;
    expand = false;
  }
  
  Baller(int x, int y){
    colorr = random(1,255);
    colorg = random(1,255);
    colorb = random(1,255);
    expand = true;
    normal = false;
    dead = false;
    posX = x;
    posY = y;
  }
  
  void update(){ 
    if (dead){
      return;
    }
    
    else if (expand){
      diameter += 1;
      if (diameter >= 70){
        expand = false;
      }
    }
    
    else if (!normal && !expand){
      diameter -= 1;
      if (diameter <= 0){
        dead = true;
      }
    }

    else if (normal){
      if (posX >= resX || posX <= 0)
        velX = -velX;
      if (posY >= resY || posY <= 0)
        velY = -velY;
      posX += velX;
      posY += velY;
    }
    fill(colorr,colorg,colorb);
    ellipse(posX, posY, diameter, diameter);
  }
  
  void infect(){
    if (normal){
      normal = false;
      expand = true;
    }
  }
  
  void infecting(Baller hi){
    if (dist(posX,posY,hi.posX,hi.posY) <= (hi.diameter + diameter)/2){
      if (!hi.normal){
        infect();
      }
      if (!normal){
        hi.infect();
      }
    }
  }
  
  
}