//Gaven Leef


class Character {
  //Member Variables
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
  }

  void keyPressed() {
    if (keyPressed==true);
  }
}
