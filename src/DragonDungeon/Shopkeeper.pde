
class Shopkeeper {
  PImage shop;
  PImage shopkeeper;
  PImage weapon;
  PImage armor;
  PImage potion;


  Shopkeeper() {
    shop = loadImage("shop.png");
    shopkeeper = loadImage("shopkeeper.png");
    weapon = loadImage("weapon.png");
    armor = loadImage("armor.png");
    potion = loadImage("potion.png");
  }

  void display() {
    image(shop, 137, 137, width*1/2, height*1/2);
    image(shopkeeper, 350, 213, 100, 100);
    image(weapon, 400,138, 150, 100);
    image(armor, 450, 180, 120, 120);
    image(potion, 350, 140, 60,60);


    drawBubble();
  }
  void drawBubble() {
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(565, 160, 180, 90, 15);
    fill(0);
    textSize(16);
    textAlign(LEFT, TOP);
    text("Buy weapon, armor or potion.", 580, 175, 150, 65);
  }
}
