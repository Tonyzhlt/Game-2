PImage one;
PImage two;
PImage three;
PImage four; 
int Tsize; 
int Giftimer;
void intro() {
 Giftimer++;
 if (Giftimer < 30) {
   one = loadImage("0.jpg");
   image(one,700,450);
 }
  if (Giftimer < 60 && Giftimer > 30) {
   two = loadImage("1.jpg");
   image(two,700,450);
 }
  if (Giftimer < 90 && Giftimer > 60) {
   three = loadImage("2.jpg");
   image(three,700,450);
 }
  if (Giftimer < 120 && Giftimer > 90) {
   four = loadImage("3.jpg");
   image(four,700,450);
 }
 if (Giftimer == 120) {
   Giftimer = 0;
 }
  
  if (Tsize < 50) {
    Tsize++;
  }
  
  

  
   
  orbitron = createFont("Orbitron-VariableFont_wght.ttf", 100);
  textFont(orbitron);
  textAlign(CENTER);
  textSize(150); 
  fill(255);
  text ( "ASTEROID", 700, 350);
    textSize(50); 
  fill(255);
  text ( "----- SAVE THE WORLD -----", 700, 450);
  textSize(Tsize); 
  fill(#FFE205);
  text ( "CLICK TO START", 700, 650);
  
  
  
  
  
  
}

void introClick() {
  mode = 1;
Tsize = 0; 
}
