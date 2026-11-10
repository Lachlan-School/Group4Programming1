//Gaven Leef

int currentXP = 20;
int nextLevelXP = 100;
int currentLevel = 1;

class Character {
  //Member Variables
  float MonsterEncounter;
  int x, y, str, agi, hp, hpMax, damage, defense, level, exp;
  String weaponEquipped, armorEquipped;
  PImage p1 ;

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
    } else if (down == true) {
      y = y+32;
      down = false;
    } else if (left == true) {
      x = x-32;
      left = false;
    } else if (right == true) {
      x = x+32;
      right = false;
    }
    fill(1, 20, 1);
    image(p1, x, y);
     MonsterEncounter = random(1, 100);
    if (MonsterEncounter <= 5) {
      inBattle = true;
    }
  }

  void keyPressed() {
    if (keyPressed==true);
  }
}

  void keyPressed() {
    if (keyPressed==true);
  }
}
