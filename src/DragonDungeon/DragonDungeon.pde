//Gaven Leef

int currentXP = 20;
int nextLevelXP = 100;
int currentLevel = 1;

class Character {
  //Member Variables
  float MonsterEncounter;
  int x, y, tempIntX, tempIntY;
  PImage p1;

  //Constructor
  Character() {
    x=512;
    y=352;
    hp = 100;
    hpMax = 100;
    str = 5;
    agi = 5;
    level = 1;
    exp = 0;
    damage = 5;
    defense = 0;
    tempIntX = 0;
    tempIntY = 0;
    weaponEquipped = "rustedDagger";
    armorEquipped = "none";

    p1=loadImage("CharacterS01.png");
  }
  //Member Method
  void display(boolean up, boolean down, boolean left, boolean right) {
    if (up == true) {
      y = y-32;
      up = false;
      monsterSpawn();
      tileOn();
    } else if (down == true) {
      y = y+32;
      down = false;
      monsterSpawn();
      tileOn();
    } else if (left == true) {
      x = x-32;
      left = false;
      monsterSpawn();
      tileOn();
    } else if (right == true) {
      x = x+32;
      right = false;
      monsterSpawn();
      tileOn();
    }
    fill(1, 20, 1);
    imageMode(CORNER);
    image(p1, x, y);
  }
  void monsterSpawn() {
    MonsterEncounter = random(1, 100);
    if (MonsterEncounter <= 5) {
      inBattle = true;
      decideMonster = true;
    }
  }
  void tileOn() {
    tempIntX = 0;
    tempIntY = 0;
    tempIntX = x/32;
    tempIntY = y/32;
    tempIntY = tempIntY*32;
    if (tempIntY==0) {
    } else {
      tempIntY = tempIntY+32;
    }
     onTile = tempIntY + tempIntX;
    rightTile = onTile + 1;
    leftTile = onTile - 1;
    downTile = onTile + 32;
    upTile = onTile -32;
    print(" onTile: " + y);
  }
}
