//Lachlan Wayment

class Overworld {
  //Member Variables
  int x, y, tileID, tileForm;
  PImage tileImage;
  String[] tileType = new String[18];
  void loadTiles() {
    tileType[0] = "Grass01";
    tileType[1] = "Grass02";
    tileType[2] = "Trees01";
    tileType[3] = "Trees02";
    tileType[4] = "Mountains01";
    tileType[5] = "Mountains02";
    tileType[6] = "Brick01";
    tileType[7] = "Brick02";
    tileType[8] = "Water01";
    tileType[9] = "Water02";
    tileType[10] = "BeachN01";
    tileType[11] = "BeachN02";
    tileType[12] = "BeachE01";
    tileType[13] = "BeachE02";
    tileType[14] = "BeachS01";
    tileType[15] = "BeachS02";
    tileType[16] = "BeachW01";
    tileType[17] = "BeachW02";
  }
  {
    loadTiles();
  }
  //Constructor
  Overworld(int x, int y, int tileID, int tileForm) {
    this.x = x;
    this.y = y;
    this.tileID = tileID;
    this.tileForm = tileForm;
    tileImage=loadImage(tileType[tileForm] + ".png");
    // tileImage=loadImage("Grass01" + ".png");
  }
  //Member Method
  void display() {
    image(tileImage, x, y);
   // text(tileID, x+10, y+10);
  }
}
