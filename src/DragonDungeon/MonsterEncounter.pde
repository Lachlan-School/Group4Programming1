// Lachlan Wayment

class MonsterEncounter {
  String creatureType;
  int health, expValue;
  float creatureIndex;
  PImage  creatureImage, attackButton, itemButton, runButton;


  MonsterEncounter() {

   

    attackButton = loadImage("attackButton.png");
    itemButton = loadImage("itemButton.png");
    runButton = loadImage("runButton.png");
  }

  void display()  {
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
      creatureType = "RedSlime";
      health = 50;
      expValue = 50;
    } else {
      creatureType = "BlueSlime";
      health = 25;
      expValue = 25;
    }
       // creatureImage = loadImage(creatureType + ".png");
    //image(creatureImage, 100, 50);
    battle();
  }
  void battle() {
    rect(128, 128, 512, 512);
    image(attackButton, 256, 320);
    image(itemButton, 384, 320);
    image(runButton, 352, 416);
    
  }
}
