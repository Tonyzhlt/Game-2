
class Bullet extends GameObject {

  int timer;
  
  Bullet() {
    timer = 30;
    lives = 1;
    location= new PVector (myShip. location.x, myShip.location.y);
    velocity =  new PVector (myShip. direction.x, myShip.direction.y);
    // velocity =  new PVector (mouseX, mouseY);
    //location= new PVector (mouseX,mouseY);
    
    velocity.setMag(10);
    size = 10;
  }
  void show() {
  
    stroke(255);
    square(location.x, location.y, size);
    
  }


  void act() {
    super.act();
    location. add(velocity);
    

    if (location.y <-50)  location.y=height+50;
    if (location.y > height+50) location.y=-50;
    if (location.x<-50) location.x = width+50;
    if (location.x>width+50) location.x = -50;
    
    timer --;
    if (timer == 0) {
      lives = 0;
    }
  }
}
