float x, y, runValue, runChance, runBlock;
String weaponEquipped, armorEquipped;
int tileX, tileY, currentTile, str, agi, hp, hpMax, damage, defense, level, exp, tileCheck, onTile, rightTile, leftTile, upTile, downTile, potionCount;
boolean up, down, left, right, inBattle, decideMonster, mouseOverATK, mouseOverITEM, mouseOverRUN, showShop;
PImage attackButton, itemButton, runButton;

//Call the classes, including Overworld as an array to spawn all 736 tiles.
Character Player;
button presser;
MonsterEncounter Monster;
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
  Monster = new MonsterEncounter();
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
    if (tileCheck == 25) {
      tiles[i] = new Overworld(tileX, tileY, i, 16);
    } else if (tileCheck == 26) {
      tiles[i] = new Overworld(tileX, tileY, i, 12);
    } else {
      tiles[i] = new Overworld(tileX, tileY, i, 0);
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
      Player.display(false, false, false, false); // Freezes movement while shop is open
      shopkeeper.display();
    }
  } else {
    Monster.display();
    presser.display();
    presser.mouseOver(mouseX, mouseY);
  }
  up = false;
  down = false;
  left = false;
  right = false;
}

void mouseReleased() {
  if (mouseOverATK == true) {
    Monster.attack();
  } else if (mouseOverITEM == true) {
    Monster.item();
  } else if (mouseOverRUN == true) {
    Monster.run();
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
