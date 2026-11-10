//Lachlan Wayment

class Overworld {
  //Member Variables
  int x, y, tileID;
  PImage tileImage;
  String[] tileType = new String[30];
   public void loadTiles() {
  tileType[0] = "Grass01";
  tileType[1] = "Grass02";
  tileType[2] = "Trees01";
  tileType[3] = "Trees02";
  tileType[4] = "Mountains01";
  //tileType[5] = "Mountains02";
  tileType[6] = "Brick01";
  //tileType[7] = "Brick02";
  tileType[8] = "Water01";
  //tileType[9] = "Water02";
  tileType[10] = "BeachS01";
   }
  //Constructor
  Overworld(int x, int y, int tileID) {
    this.x = x;
    this.y = y;
    this.tileID = tileID;
    //tileImage=loadImage(tileType[tileID] + ".png");
    tileImage=loadImage("Grass01" + ".png");
  }
  //Member Method
  void display() {
    image(tileImage, x, y);
  }
}
