  int colour1;
  int colour2;
  int colour3;
class Particle extends GameObject {
  int tran; //transparency

  Particle ( PVector locationn,PVector velocityy) {
    lives = 1;
    size= 15;
    tran = int (random(200, 255));

    location = locationn.copy();

    velocity = velocityy.copy();
 
    velocity.rotate(random(-PI, PI));
  
    
    colour1 = int( random (0,255));
    colour2 = int( random (0,255));
    colour3 = int( random (0,255));
    velocity.setMag(3);
    
  }



  void show() {
    
    noStroke();
    
    
    fill(colour1,colour2,colour3, tran);
    square(location.x, location.y, size);
    
     
 

  }
  void act() {
    super.act();
    tran = tran - 2;
    if (tran <= 0) lives=0;
  }
}
