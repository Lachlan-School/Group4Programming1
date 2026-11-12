//Gaven Leef

int currentXP = 20;
int nextLevelXP = 100;
int currentLevel = 1;

class Character {
  //Member Variables
  float MonsterEncounter;
  int x, y;
  PImage p1;

  //Constructor
  Character() {
    x=512;
    y=368;
    hp = 100;
    hpMax = 100;
    str = 5;
    agi = 5;
    level = 1;
    exp = 0;
    damage = 5;
    defense = 0;
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
    } else if (down == true) {
      y = y+32;
      down = false;
      monsterSpawn();
    } else if (left == true) {
      x = x-32;
      left = false;
      monsterSpawn();
    } else if (right == true) {
      x = x+32;
      right = false;
      monsterSpawn();
    }
    fill(1, 20, 1);
    image(p1, x, y);
  }
  void monsterSpawn() {
    MonsterEncounter = random(1, 100);
    if (MonsterEncounter <= 5) {
      inBattle = true;
      decideMonster = true;
    }
  }
  void keyPressed() {
    if (keyPressed==true);
  }
}
