float x, y, runValue, runChance, runBlock;
String weaponEquipped, armorEquipped;
int tileX, tileY, currentTile, str, agi, hp, hpMax, damage, defense, tileCheck, onTile, rightTile, leftTile, upTile, downTile, potionCount, goldCount, holdRandom, damageModifier, damageDealt;
boolean up, down, left, right, inBattle, decideMonster, mouseOverATK, mouseOverITEM, mouseOverRUN, showShop;
PImage attackButton, itemButton, runButton;
int currentXP = 0;
int nextLevelXP = 100;
int currentLevel = 1;
boolean doDelay = false;
int[] tileBiome= new int[736];
//Call the classes, including Overworld as an array to spawn all 736 tiles.
Character Player;
button presser;
MonsterEncounter monster;
Shopkeeper shopkeeper;
Overworld[] tiles = new Overworld[736];

void setup() {
  //Set up the window size, background and other universal variables
  size(1024, 736);
  background(#34CE3D);
  inBattle = false;
  showShop = false;

  //Setup the classes from other tabs, with a for loop to make all 736 of the tiles.
  Player = new Character();
  presser = new button();
  monster = new MonsterEncounter();
  shopkeeper = new Shopkeeper();
  for (int i = 0; i<tiles.length; i++) {
    tileX = i;
    for (int j = 0; j< tileX; j++) {
      if (tileX >=32) {
        tileX = tileX-32;
      }
    }
    tileX *= 32;
    tileY = i/32;
    tileY = int(tileY);
    tileY *= 32;
    tileCheck = i-tileY;
    if (tileCheck == 0 || tileCheck == 31 || tileY == 0 || tileY == 704) {
      //holdRandom = 1;
      //int(random(1, 2.99999999999));
      tiles[i] = new Overworld(tileX, tileY, i, 7);
      tileBiome[i] = 7;
    } else if (tileCheck == 25) {
      tiles[i] = new Overworld(tileX, tileY, i, 16);
      tileBiome[i] = 16;
    } else if (tileCheck == 26) {
      tiles[i] = new Overworld(tileX, tileY, i, 12);
      tileBiome[i] = 12;
    } else {
      tiles[i] = new Overworld(tileX, tileY, i, 0);
      tileBiome[i] = 0;
    }
  }
}

void draw() {
  background(#34CE3D);
  presser.buttonChange();

  for (int i = 0; i<tiles.length; i++) {
    tiles[i].display();
  }
  if (inBattle == false) {
    if (showShop == false) {
      Player.display(up, down, left, right);
    } else {
      // Freeze movement while shop is open
      Player.display(false, false, false, false);
      shopkeeper.display();
    }
  } else {
    monster.display();
    presser.display();
    presser.mouseOver(mouseX, mouseY);
  }

  up = false;
  down = false;
  left = false;
  right = false;
  if (doDelay == true) {
    delay(1000);
  }
}

void mouseReleased() {
  if (mouseOverATK == true) {
    monster.attack();
  } else if (mouseOverITEM == true) {
    monster.item();
  } else if (mouseOverRUN == true) {
    monster.run();
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') up = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 'd' || key == 'D') right = true;
  if ((key == 'q' || key == 'Q') && inBattle == false) {
    showShop = !showShop;
  }
}
