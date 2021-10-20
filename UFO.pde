class UFO extends GameObject{
  
  //instance variables
  PVector direction;
  int shotTimer, threshold;
  
  UFO(float x, float y, float gx, float gy) {
    lives = 1;
    location = new PVector(x, y);
    direction = new PVector(gx, gy);
    velocity = new PVector(direction.x*50,direction.y*50);
    shotTimer = 0;
    threshold = 100;
  }
  
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    fill(0,225,0);
    noStroke();
    ellipse(10, 0, 20, 10);
    ellipse(-10, 0, -20, 10);
    ellipse(0, 10, 10, 20);
    ellipse(0, -10, 10, -20);
    popMatrix();
  }
  
  void act() {
    location.add(velocity);
    
   
    
    shotTimer++;
    if (shotTimer > threshold) {
      myObjects.add(new BulletUFO(location.x, location.y));
      shotTimer = 0;
    }

    
    if (location.y < -60)  location.y = lives=0;
 
    
    if (location.y > height+60)  lives=0;
    
    if (location.x < -60) location.x  = lives=0;
      
    
    if (location.x > width+60) lives=0;
      
    
    
    if (velocity.mag() > 5) 
    velocity.setMag(5);
    
    
     int u = 0;
    while (u < myObjects.size() ) {
      GameObject UFO = myObjects.get(u);
      if (UFO instanceof Bullet) {


        if (dist(location.x, location.y, UFO.location.x, UFO.location.y) <= size/2 + UFO.size) {
          UFO.lives = 0;
          lives = 0; 
          int r = 0;
          while (r<10) {
            myObjects.add(new Particle(location, velocity));
            r++;
          }
        }
      }
      u++;
    }

    
    
  }
}
