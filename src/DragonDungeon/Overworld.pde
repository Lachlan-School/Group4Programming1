//Lachlan Wayment

class Overworld {
  //Member Variables
  int x, y, tileID;
  PImage tileImage;
  string[] tileType = new string[30];
  tileType[0] = "Grass01"
  tileType[1] = "Grass02"
  tileType[2] = "Trees01"
  tileType[3] = "Trees02"
  tileType[4] = "Mountains01"
//tileType[5] = "Mountains02"
  tileType[6] = "Brick01"
//tileType[7] = "Bricks02"
  tileType[8] = "Water01"
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
