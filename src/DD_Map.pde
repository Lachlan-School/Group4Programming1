// Green map game for Processing (Java mode)
// Move with WASD or arrow keys. Press ESC to quit.
// All names are prefixed with "mg" to avoid clashing with other code.

final int MG_MAP_W = 10000;
final int MG_MAP_H = 10000;
final int MG_TILE_SIZE = 100;
final float MG_SPEED = 400;      // pixels per second
final float MG_PLAYER_R = 20;
final int MG_DECOR_COUNT = 4000;

float mgPx = MG_MAP_W / 2.0;     // player position in map coordinates
float mgPy = MG_MAP_H / 2.0;
float mgCamX, mgCamY;            // top-left of the visible area in map coordinates

boolean mgUp, mgDown, mgLeft, mgRight;
int mgLastMillis;

float[] mgDecorX = new float[MG_DECOR_COUNT];
float[] mgDecorY = new float[MG_DECOR_COUNT];
int[] mgDecorType = new int[MG_DECOR_COUNT];

void setup() {
  fullScreen();
  noStroke();
  randomSeed(42);
  for (int i = 0; i < MG_DECOR_COUNT; i++) {
    mgDecorX[i] = random(MG_MAP_W);
    mgDecorY[i] = random(MG_MAP_H);
    mgDecorType[i] = int(random(3));
  }
  mgLastMillis = millis();
}

void draw() {
  int now = millis();
  float dt = (now - mgLastMillis) / 1000.0;
  mgLastMillis = now;
  dt = min(dt, 0.05);

  // --- input / movement ---
  float mx = (mgRight ? 1 : 0) - (mgLeft ? 1 : 0);
  float my = (mgDown ? 1 : 0) - (mgUp ? 1 : 0);
  if (mx != 0 || my != 0) {
    float len = sqrt(mx * mx + my * my);
    mgPx += mx / len * MG_SPEED * dt;
    mgPy += my / len * MG_SPEED * dt;
  }
  mgPx = constrain(mgPx, MG_PLAYER_R, MG_MAP_W - MG_PLAYER_R);
  mgPy = constrain(mgPy, MG_PLAYER_R, MG_MAP_H - MG_PLAYER_R);

  // --- camera: follows player, but stops at map edges ---
  mgCamX = constrain(mgPx - width / 2.0, 0, MG_MAP_W - width);
  mgCamY = constrain(mgPy - height / 2.0, 0, MG_MAP_H - height);

  background(34, 139, 34);

  // --- draw only the visible tiles ---
  int startCol = int(mgCamX / MG_TILE_SIZE);
  int startRow = int(mgCamY / MG_TILE_SIZE);
  int endCol = int((mgCamX + width) / MG_TILE_SIZE) + 1;
  int endRow = int((mgCamY + height) / MG_TILE_SIZE) + 1;

  for (int r = startRow; r <= endRow; r++) {
    for (int c = startCol; c <= endCol; c++) {
      if (c >= MG_MAP_W / MG_TILE_SIZE || r >= MG_MAP_H / MG_TILE_SIZE) continue;
      if ((c + r) % 2 == 0) fill(46, 160, 56);
      else fill(38, 148, 48);
      rect(c * MG_TILE_SIZE - mgCamX, r * MG_TILE_SIZE - mgCamY, MG_TILE_SIZE, MG_TILE_SIZE);
    }
  }

  

  // --- player ---
  float screenX = mgPx - mgCamX;
  float screenY = mgPy - mgCamY;
  fill(#000000);
  ellipse(screenX, screenY, MG_PLAYER_R * 2, MG_PLAYER_R * 2);

}

void keyPressed() {
  mgSetKey(true);
}

void keyReleased() {
  mgSetKey(false);
}

void mgSetKey(boolean state) {
  if (key == CODED) {
    if (keyCode == UP) mgUp = state;
    else if (keyCode == DOWN) mgDown = state;
    else if (keyCode == LEFT) mgLeft = state;
    else if (keyCode == RIGHT) mgRight = state;
  } else {
    char k = Character.toLowerCase(key);
    if (k == 'w') mgUp = state;
    else if (k == 's') mgDown = state;
    else if (k == 'a') mgLeft = state;
    else if (k == 'd') mgRight = state;
  }
}
