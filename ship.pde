int SLive;
PImage heart;

int invincible;
int Cdown; 
class Ship extends GameObject {

  PVector direction;
  int shotTimer, threshold;


  Ship() {
   
    
    invincible = 60;
    heart = loadImage("heart.png");
    lives = 3;
    location = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector (0, -0.1);
    shotTimer = 0;
    threshold = 30;
    size = 40;
 

  }

  void show() {

    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    noFill();
    stroke(255);
    triangle (40, 0, 0, 10, 0, -10);
    triangle (0, -10, -20, -10, -20, -30);
    triangle (-1, 10, -20, 10, -20, 30);
    if (Cdown != 0) {
      stroke(0,255,0);
      ellipse( 0,0,100,100);
      
    }
    popMatrix();
  }
  void act() {
    super.act();

    if (velocity.mag() > 6)
      velocity.setMag(6);


    int i = 0;
    while (i < myObjects.size() && Cdown ==0) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof BulletUFO) {

        if (dist(location.x, location.y, myObj.location.x, myObj.location.y) <= size/2 + myObj.size) {

          myObj.lives=0;
          lives=0;
          SLive ++;
          Cdown = 180; 
        }
      }
      i++;
    }

    int s = 0;
    while (s < myObjects.size() && Cdown == 0) {
      GameObject myObj = myObjects.get(s);
      if (myObj instanceof Asteroid) {

        if (dist(location.x, location.y, myObj.location.x, myObj.location.y) <= size/2 + myObj.size) {

          Cdown = 180; 
          SLive ++;
        }
      }
      s++;
    }


if (Cdown != 0) {
  Cdown --;
  noStroke();
  fill(0,255,0);
  rect (700, 850, 180, 10);
  fill(255,0,0);
  rect (700, 850, Cdown, 10);
}



    // Ship Lives
    if (SLive == 6) {
      mode = gameover;
    }

    if (SLive == 0) {
      image(heart, 50, 50);
      image(heart, 100, 50);
      image(heart, 150, 50);
      image(heart, 200, 50);
      image(heart, 250, 50);
      image(heart, 300, 50);
    }
    if (SLive == 1) {
      image(heart, 50, 50);
      image(heart, 100, 50);
      image(heart, 150, 50);
      image(heart, 200, 50);
      image(heart, 250, 50);
    }
    if (SLive == 2) {
      image(heart, 50, 50);
      image(heart, 100, 50);
      image(heart, 150, 50);
      image(heart, 200, 50);
    }
    if (SLive == 3) {
      image(heart, 50, 50);
      image(heart, 100, 50);
      image(heart, 150, 50);
    }
    
    if (SLive == 4) {
      image(heart, 50, 50);
      image(heart, 100, 50);
    }
    
    if (SLive == 5) {
      image(heart, 50, 50);
    }


    shotTimer++;

    if (upkey) {

      velocity. add(direction);
      myObjects.add (new Fire());
      myObjects.add (new shed());
    }
    if (downkey) {

      velocity.sub(direction);
    }
    if (leftkey) {
      direction. rotate(radians(-5));
      //velocity.rotate(radians(-5));
      myObjects.add (new shed());
    }
 
    if (rightkey) {
      direction. rotate(radians(5));
      //velocity.rotate(radians(5));
      myObjects.add (new shed());
    }
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer=0;
    }
    
   if ( fkey) {
       lives=0;
       myShip= new Ship();
      

     
   }
 
  }
}
