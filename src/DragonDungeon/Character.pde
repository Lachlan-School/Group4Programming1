//Gaven Leef

class Player {
  //Member Variables
  int x, y;
  PImage p1 ;

//Constructor
Player() {
  x=50;
  y=50;
  p1=loadImage("CharacterS01");
}
//Member Method
void display() {
  fill(1, 20, 1);
  image(p1, x, y);
}

 void keyPressed() {
  if(keyPressed==true);
  
}
}
