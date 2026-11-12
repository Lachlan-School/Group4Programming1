// Lachlan Wayment

class MonsterEncounter {
  String creatureType;
  int health, expValue;
  float creatureIndex;
  PImage  creatureImage, attackButton, itemButton, runButton, background;

  MonsterEncounter() {


  background = loadImage("background.png");
    attackButton = loadImage("attackButton.png");
    itemButton = loadImage("itemButton.png");
    runButton = loadImage("runButton.png");
  }

  void display() {
    if (decideMonster == true) {
      creatureIndex = random(1, 100);
      if (creatureIndex <= 4) {
        creatureType = "MysteriousFae";
        health = 200;
        expValue = 200;
        runBlock =  50;
        decideMonster = false;
      } else if (creatureIndex <= 18) {
        creatureType = "DemonicSprite";
        health = 150;
        expValue = 150;
        runBlock =  40;
        decideMonster = false;
      } else if (creatureIndex <= 45.8) {
        creatureType = "Gryphon";
        health = 125;
        expValue = 150;
        decideMonster = false;
        runBlock =  30;
      } else if (creatureIndex <= 73.9) {
        creatureType = "RedSlime";
        health = 50;
        expValue = 50;
        runBlock =  20;
        decideMonster = false;
      } else {
        creatureType = "BlueSlime";
        health = 25;
        expValue = 25;
        runBlock =  10;
        decideMonster = false;
      }
    }
    battle();

    creatureImage = loadImage(creatureType + ".png");
    image(creatureImage, 384, 320);
  }
  void battle() {
    image(background, 128, 128);
    image(attackButton, 224, 512);
    image(itemButton, 384, 512);
    image(runButton, 544, 512);
  }
  void attack() {
    health-=damage;
  }
  void run() {
    runValue = random(1, 100);
    runChance = 50+agi-runBlock;
    if (runValue < runChance) {
      inBattle = false;
    } else {
      monsterTurn();
    }
  }
  void monsterTurn() {
  }
  void mouseOver(float tempX, float tempY) {
  if (tempX <= 224 && tempX >= 320 && tempY <= 512 && tempY >= 574) {
    mouseOverATK = true;
      } else if (tempX <= 384 && tempX >= 480 && tempY <= 512 && tempY >= 574) {
    mouseOverITEM = true;
      } else if (tempX <= 544 && tempX >= 640 && tempY <= 512 && tempY >= 574) {
        mouseOverRUN = true;
  }
}
