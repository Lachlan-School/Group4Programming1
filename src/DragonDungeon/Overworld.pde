//Lachlan Wayment
class Overworld {
  //Member Variables
  int x, y;
  p1 PImage;

//Constructor
Overworld() {
  x=50;
  y=50;
  p1=loadImage("Brick01");
}
//Member Method
void display() {
  image(p1, x, y);
}
