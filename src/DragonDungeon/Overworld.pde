//Lachlan Wayment

class Overworld {
  //Member Variables
  int x, y, tileID;
  PImage tileImage;
  string[] tileType = new string[20];
  tileType[0] = "Grass01"
  //Constructor
  Overworld(int x, int y, int tileID) {
    this.x = x;
    this.y = y;
    tileImage=loadImage(tileType[tileID] + ".png");
  }
  //Member Method
  void display() {
    image(tileImage, x, y);
  }
}
