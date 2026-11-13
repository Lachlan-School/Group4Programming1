// Lachlan Wayment

class MonsterEncounter {
  String creatureType;
  int health, expValue, goldValue;
  float creatureIndex;
  PImage  creatureImage,  background;

  MonsterEncounter() {


    background = loadImage("background.png");
   
  }

  void display() {
    if (decideMonster == true) {
      creatureIndex = random(1, 100);
      if (creatureIndex <= 4) {
        creatureType = "MysteriousFae";
        health = 200;
        expValue = 200;
        runBlock =  50;
        goldValue = 50;
        decideMonster = false;
      } else if (creatureIndex <= 18) {
        creatureType = "DemonicSprite";
        health = 150;
        expValue = 150;
        runBlock =  40;
        goldValue = 30;
        decideMonster = false;
      } else if (creatureIndex <= 45.8) {
        creatureType = "Gryphon";
        health = 125;
        expValue = 150;
        goldValue = 10;
        decideMonster = false;
        runBlock =  30;
      } else if (creatureIndex <= 73.9) {
        creatureType = "RedSlime";
        health = 50;
        expValue = 50;
        runBlock =  20;
        goldValue = 5;
        decideMonster = false;
      } else {
        creatureType = "BlueSlime";
        health = 25;
        expValue = 25;
        runBlock =  10;
        goldValue = 2;
        decideMonster = false;
      }
    }
    battle();

    creatureImage = loadImage(creatureType + ".png");
    image(creatureImage, 384, 320);
  }
  void battle() {
    image(background, 352, 320);

  }
  void attack() {
    health-=damage;
    if (health <= 0) {
    } else {
      monsterTurn();
    }
  }
   void item() {
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
  
  
}
