//Gaven Leef 


class Character {
  //Member Variables
  int x, y;
  PImage p1 ;

//Constructor
Character() {
  x=512;
  y=368;
  p1=loadImage("CharacterS01.png");
}
//Member Method
void display(boolean up, boolean down, boolean left, boolean right) {
  if (up == true)  {  y = y-32;
up = false;}
  if (down == true)  {y = y+32; }
  down = false;}
  if (left == true)  {x = x-32;}
  if (right == true)  {x = x+32;}
  fill(1, 20, 1);
  image(p1, x, y);
}

 void keyPressed() {
  if(keyPressed==true);
  
}
}
void display() {
  
}
