//Lachlan Wayment
class Overworld {
  //Member Variables
  int x, y;
  PImage p1 ;

  //Constructor
  Overworld() {
    x=50;
    y=50;
    p1=loadImage("Brick01.png");
  }
  //Member Method
  void display() {
    image(p1, x, y);
  }
}
