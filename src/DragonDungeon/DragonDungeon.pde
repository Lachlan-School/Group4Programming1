//Gaven Leef and Lachlan Wayment
//Set up all of the variables
float x, y;
int tileX, tileY, currentTile;
boolean up, down, left, right, tileLess32;
//Call the classes, including Overworld as an array to spawn all 736 tiles.
Character Player;
Overworld[] tiles = new Overworld[736];
void setup() {
  //Set up the window size, background and other universal variables
  size(1024, 736);
  background(#34CE3D);

  //Setup the classes from other tabs, with a for loop to make all 736 of the tiles.
  Player = new Character();
  for (int i = 0; i<tiles.length; i++) {
    tileLess32 = true;
      tileX = i;
    for (tileLess32 == true) {
      if (tileX >32) {
        tileX = tileX-32;
      } else {
        tileLess32 = false;
      }
    }
    tileX *=
      tileY = int(i/32);
    tileY *= 22;
      tiles[i] = new Overworld(tileX, tileY, 0);
  }

  x = width / 2;
  y = height / 2;
}

void draw() {
  background(#34CE3D);
  keyPressed();
  for (int i = 0; i<tiles.length; i++) {
    tiles[i].display();
  }
  Player.display(up, down, left, right);
}



void keyPressed() {
  if (key == 'w' || key == 'W') up = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 'd' || key == 'D') right = true;
}
