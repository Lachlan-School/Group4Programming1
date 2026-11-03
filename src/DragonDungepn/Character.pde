//Lachlan Wayment
class Player {
  //Member Variables
  int x, y;
  p1 PImage;

//Constructor
Player() {
  x=50;
  y=50;
  p1=loadImage("CharacterS01");
}
//Member Method
void display() {
//todo replace rect with image.
  fill(1, 20, 1);
  image(p1, x, y);
}
