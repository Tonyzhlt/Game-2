PFont orbitron;


import processing.javafx.*;
PImage universe;
Ship myShip;
boolean upkey, downkey, leftkey, rightkey, spacekey, Fkey;

ArrayList < GameObject> myObjects;
int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;
final int win = 3; 
final int pause = 4; 


//UFO
float r, r2, r3, UFOgx, UFOgy;
int UFOx;
int UFOy;
int UFOTimer;


void setup () {
  mode = 0;
 
  size (1400, 900, FX2D);
  imageMode(CENTER);
  myShip= new Ship();
  myObjects = new ArrayList<GameObject>();

  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
 
  

  rectMode(CENTER);
  

  // add a UFO
  r3 = random(0, 1);
  if (r3 < 0.5) {
    r = random(0, 1);
    if (r < 0.5) {
      UFOx = -50;
      UFOy = int(random(50, height -50));
      UFOgx = 0.1;
      UFOgy = random(-0.1, 0.1);
    } else {
      UFOx = width +50;
      UFOy = int(random(50, height-50));
      UFOgx = -0.1;
      UFOgy = random(-0.1, 0.1);
    }
  } else {
    r2 = random(0, 1);
    if (r2 < 0.5) {
      UFOy =-50;
      UFOx = int(random(50, width-50));
      UFOgx = 0.1;
      UFOgy = random(-0.1, 0.1);
    } else {
      UFOy = height +50;
      UFOx = int(random(50, width-50));
      UFOgy = -0.1;
      UFOgx = random(-0.1, 0.1);
    }
  }

  UFOTimer = 500;
  myObjects.add(new UFO(UFOx, UFOy, UFOgx, UFOgy));
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode== game) {
    games();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == win) {
    win();
  } else if (mode == pause) {
    pause();
  }
    //rect( 50,50,Cdown,Cdown);
}
 
void keyPressed() {
  if (keyCode == 'w' || keyCode == 'W') upkey = true;
  if (keyCode == 's' || keyCode == 'S') downkey = true;
  if (keyCode == 'a'|| keyCode == 'A') leftkey = true;
  if (keyCode == 'd'|| keyCode == 'D') rightkey = true;
  if (keyCode == ' ') spacekey = true;
  if (keyCode == 'f'|| keyCode == 'F') Fkey = true;
}

void keyReleased() {
  if (keyCode == 'w'|| keyCode == 'W') upkey = false;
  if (keyCode == 's'|| keyCode == 'S') downkey = false;
  if (keyCode == 'a'|| keyCode == 'A') leftkey = false;
  if (keyCode == 'd'|| keyCode == 'D') rightkey = false;
  if (keyCode == ' ') spacekey = false;
  if (keyCode == 'f'|| keyCode == 'F') Fkey = false;
}
