//Gaven Leef

//int currentXP = 0;
//int nextLevelXP = 100;
//int currentLevel = 1;

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
    damage = 5;
    defense = 0;
    tempIntX = x/32;
    tempIntY = y/32;
    tempIntY = tempIntY*32;
    onTile = tempIntY + tempIntX;
    rightTile = onTile + 1;
    leftTile = onTile - 1;
    downTile = onTile + 32;
    upTile = onTile -32;
    weaponEquipped = "rustedDagger";
    armorEquipped = "none";

    p1=loadImage("CharacterS01.png");
  }
  //Member Method
  void display(boolean up, boolean down, boolean left, boolean right) {
    if (up == true) {
      if (tileBiome[upTile] >= 6 && tileBiome[upTile] <= 17) {
        print("movement failed");
      } else {
        y = y-32;
        up = false;
        monsterSpawn();
        tileOn();
      }
    } else if (down == true) {
      if (tileBiome[downTile] >= 6 && tileBiome[downTile] <= 17) {
        print("movement failed");
      } else {
        y = y+32;
        down = false;
        monsterSpawn();
        tileOn();
      }
    } else if (left == true) {
      if (tileBiome[leftTile] >= 6 && tileBiome[leftTile] <= 17) {
        print("movement failed");
      } else {
        x = x-32;
        left = false;
        monsterSpawn();
        tileOn();
      }
    } else if (right == true) {
      if (tileBiome[rightTile] >= 6 && tileBiome[rightTile] <= 17) {
        print("movement failed");
      } else {
        x = x+32;
        right = false;
        monsterSpawn();
        tileOn();
      }
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
    tempIntX = x/32;
    tempIntY = y/32;
    tempIntY = tempIntY*32;
    onTile = tempIntY + tempIntX;
    rightTile = onTile + 1;
    leftTile = onTile - 1;
    downTile = onTile + 32;
    upTile = onTile -32;
    print(" onTile: " + onTile);
    print(" upTile: " + upTile);
    print(" downTile: " + downTile);
    print(" leftTile: " + leftTile);
    print(" rightTile: " + rightTile);
  }
}
