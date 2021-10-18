class BulletUFO extends GameObject {
  
  int timer;
  PVector direction;
  
  BulletUFO(float x, float y) {
    timer = 200;
    lives = 1;
    location = new PVector(x,y);
    direction = new PVector (myShip.location.x-location.x, myShip.location.y-location.y);
    velocity = new PVector (0, 0);
    velocity = velocity.add(direction);
    velocity.setMag(10);
    size = 10;
  }
  
  void show() {
  noStroke();
  fill(255,0,0);
  square(location.x, location.y, size);
  }

  void act() {
    location.add(velocity);
    
    timer--;
    if (timer == 0) {
      lives = 0;
    }
  }
  
}
