// Lachlan Wayment

class MonsterEncounter {
  String creatureType;
  int health, expValue;
  float creatureIndex;
  PImage  creatureImage;


   MonsterEncounter() {
    
    creatureIndex = random(1, 100);
    if (creatureIndex <= 5) {
      creatureType = "MysteriousFae";
      health = 200;
      expValue = 200;
    } else if (creatureIndex <= 20) {
      creatureType = "DemonicSprite";
      health = 150;
      expValue = 150;
    } else if (creatureIndex <= 50) {
      creatureType = "Gryphon";
      health = 125;
      expValue = 150;
    } else if (creatureIndex <= 70) {
      creatureType = "BlueSlime";
      health = 50;
      expValue = 50;
    } else {
      creatureType = "Gnome";
      health = 25;
      expValue = 25;
    }
    creatureImage = loadImage(creatureType + ".png");
  }

void display() {
  image(creatureImage, 100, 50);
}
}
