//Gaven Leef and Lachlan Wayment
//Set up all of the variables
float x, y;
float speed = 5;
boolean up, down, left, right;
//Call the classes, including Overworld as an array to spawn all 736 tiles.
Character Player;
Overworld[] tiles = new Overworld[736];
void setup() {
//Set up the window size and the background
size(1024, 736);
  background(#34CE3D);
//Setup the classes from other tabs, with a for loop to make all 736 of the tiles.
  Player = new Character();
for(int i = 0; i<tiles.length; i++) {
tiles[i] = new Overworld(0, 0, 0);
}

  
  x = width / 2;
  y = height / 2;
  
}

void draw() {
  background(#34CE3D);
  keyPressed();
  
Player.display(up,down,left,right);
  // Update position based on boolean flags
  
}



void keyPressed() {
  if (key == 'w' || key == 'W') up = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 'd' || key == 'D') right = true;
}

