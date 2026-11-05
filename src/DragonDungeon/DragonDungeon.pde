//programming group 4
float x, y;
float speed = 5;
boolean up, down, left, right;
Character Player;

void setup() {
  Player = new Character();
  size(1024, 736);
  background(#34CE3D);
  x = width / 2;
  y = height / 2;
  
}

void draw() {
  background(#34CE3D);
Player.display();
  // Update position based on boolean flags
  if (up)    y -= speed;
  if (down)  y += speed;
  if (left)  x -= speed;
  if (right) x += speed;
}



void keyPressed() {
  if (key == 'w' || key == 'W') up = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 'd' || key == 'D') right = true;
}

