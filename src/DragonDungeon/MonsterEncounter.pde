// Lachlan Wayment

class MonsterEncounter {
  String creatureType, textBox;
  int health, expValue, goldValue;
  float creatureIndex;
  PImage  creatureImage, background;
  

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
        textBox = "You encountered a " + creatureType + "!";
        decideMonster = false;
      } else if (creatureIndex <= 18) {
        creatureType = "DemonicSprite";
        health = 150;
        expValue = 150;
        runBlock =  40;
        goldValue = 30;
        textBox = "You encountered a " + creatureType + "!";
        decideMonster = false;
      } else if (creatureIndex <= 45.8) {
        creatureType = "Gryphon";
        health = 125;
        expValue = 150;
        goldValue = 10;
        textBox = "You encountered a " + creatureType + "!";
        decideMonster = false;
        runBlock =  30;
      } else if (creatureIndex <= 73.9) {
        creatureType = "RedSlime";
        health = 50;
        expValue = 50;
        runBlock =  20;
        goldValue = 5;
        textBox = "You encountered a " + creatureType + "!";
        decideMonster = false;
      } else {
        creatureType = "BlueSlime";
        health = 25;
        expValue = 25;
        runBlock =  10;
        goldValue = 2;
        textBox = "You encountered a " + creatureType + "!";
        decideMonster = false;
      }
    }
    battle();

    creatureImage = loadImage(creatureType + ".png");
    image(creatureImage, 464, 352);
  }
  void battle() {
    image(background, 137, 137, width*2/3, height*2/3);
    fill(255);
    strokeWeight(5);
    rect(139, 416, 676, 64);
    textSize(25);
    strokeWeight(20);
    fill(0);    
    text(textBox, 152, 464);
  }
  void attack() {
    damageModifier = int(random(1,2.9999999));
    health-=damage + damageModifier;
    damageDealt = damage + damageModifier;
    textBox = "You dealt " + damage + " damage to the " +creatureType + "!";
    if (health <= 0) {
      currentXP += expValue;
      goldCount += goldValue;
      fill(255);
      textBox = "You defeated a "+creatureType + "! You gain "+goldValue+ " gold! You gain "+expValue + " EXP!";
      doDelay = true;
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
