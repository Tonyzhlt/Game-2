class shed extends Ship {
  PVector direction;
  int t;
  int colour1;
  int colour2;
  int colour3;
  
  
  
  shed() {
    lives = 1;
    t= 255;
    location = myShip.location.copy();
    direction = myShip.direction.copy();
    colour1 = int( random (0,255));
    colour2 = int( random (0,255));
    colour3 = int( random (0,255));
   
    
  }
  
  void show() {
    pushMatrix();
    translate (location.x,location.y);
    rotate (direction.heading());
    noFill();
    stroke(colour1, colour2, colour3, t);
  
    strokeWeight (2);
   triangle (40,0,0,10,0,-10);
   triangle (0,-10, -20,-10,-20,-30);
   triangle (-1,10,-20,10,-20,30);
    
    popMatrix();
  }
  
  void act() {
    t = t - 8;
    if (t <= 0) lives = 0;
  }
}
  
