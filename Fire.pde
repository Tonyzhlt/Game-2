class Fire extends GameObject {
  int t; //transparency
  int colour1;
  int colour2;
  PVector nudge;
  int colour3;
  Fire() {
    lives = 1;
    size= int(random(4,13));
    t = int (random(200,255));
    //location = new PVector (myShip.location.x, myShip.location.y); 
    location = myShip.location.copy();
   nudge = myShip.direction.copy(); 
   nudge.rotate(PI);
   nudge.setMag(3);
   velocity = myShip.direction.copy();
   velocity.rotate(PI + random(-0.5,0.5));
   velocity.setMag(3);
    colour1 = int( random (1,255));
    colour2 = int( random (1,255));
    colour3 = int( random (1,255));
   
   
   
   
  }
  
  void show(){
    noStroke();
    fill(colour1, colour2, colour3,t);
    square(location.x,location.y,size);
  }
  void act() {
    super.act();
    t = t - 10;
    if (t <= 0) lives=0;
    
  }
  
  
}
