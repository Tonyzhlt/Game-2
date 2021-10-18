void games() {
  background(0);
    myShip.show();
    myShip.act();
    orbitron = createFont("Orbitron-VariableFont_wght.ttf", 100);
  textFont(orbitron);
  textAlign(CENTER);
  fill (255);
  textSize (20);
    text("PAUSE", 1350, 30);
    
    // Direct to PAUSE
    if (mousePressed) {
  if (mouseY < 50)  { 
  if (mouseX > 1300) {
  mode = 4; 
  }
  }
  }
  
  println(myObjects.size());
  
   int i = 0;
    while (i<myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      myObj.show();
      myObj.act();
      if (myObj.lives == 0) {
        myObjects. remove(i);
      } else {
        i++;
      }
    }
    
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
    



    //UFO
    UFOTimer = UFOTimer - 1;
    if (UFOTimer == 0) {
      myObjects.add (new UFO( UFOx, UFOy, UFOgx, UFOgy));
      UFOTimer = 500;
    }

  }
  
