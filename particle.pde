class Particle extends GameObject {
  int tran; //transparency
  int colour1;
  int colour3;
  int colour2;
  Particle ( PVector locationn,PVector velocityy) {
    lives = 1;
    size= int(random(4, 13));
    tran = int (random(200, 255));

    location = locationn.copy();

    velocity = velocityy.copy();
    velocity.rotate(random(PI, -PI));
    velocity.setMag(3);
    colour1 = int( random (1, 255));
    colour2 = int( random (1, 255));
    colour3 = int( random (1, 255));
  }



  void show() {
    noStroke();
    fill(colour1, colour2, colour3, tran);
    square(location.x, location.y, size);
  }
  void act() {
    super.act();
    tran = tran - 10;
    if (tran <= 0) lives=0;
  }
}
