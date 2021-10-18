
PImage win1; 
void win() {
  win1 = loadImage("win.jpg");
  image(win1,700,450);
      
  
  
  
 

  orbitron = createFont("Orbitron-VariableFont_wght.ttf", 100);
  textFont(orbitron);
  textAlign(CENTER);
  textSize(150); 
  fill(255);
  text ( "YOU WIN", 700, 450);
  
  textSize(50); 
  fill(255);
  text ( "CLICK TO RESTART", 700, 650);
  
  
  
}

void winClick() {
 
  mode = 0;
  SLive = 0;
  
}
