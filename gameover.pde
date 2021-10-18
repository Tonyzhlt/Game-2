int TxSize; 
PImage explosion; 
void gameover() {
  explosion = loadImage("explosion.jpg");
  image(explosion,700,450);
      
  
  
  
  TxSize ++;
  if (TxSize > 50) {
    TxSize = 50;
  }

  orbitron = createFont("Orbitron-VariableFont_wght.ttf", 100);
  textFont(orbitron);
  textAlign(CENTER);
  textSize(150); 
  fill(255);
  text ( "GAMEOVER", 700, 450);
  
  textSize(TxSize); 
  fill(255);
  text ( "CLICK TO RESTART", 700, 650);
  
  
  
}

void gameoverClick() {
  mode = 0;
  SLive = 0;
  TxSize = 0;
  
  
}
