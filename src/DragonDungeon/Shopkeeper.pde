
class Shopkeeper {
  PImage shop;
  PImage shopkeeper;
  PImage weaponButton;
  PImage armorButton;
  boolean showBubble = false;

  Shopkeeper() {
    shop = loadImage("shop.png");
    shopkeeper = loadImage("shopkeeper.png");
    weaponButton = loadImage("weaponButton.png");
    armorButton = loadImage("armorButton.png");
  }

  void display() {
    image(shop, 137, 137, width*1/2, height*1/2);
    image(shopkeeper, 350, 213, 100, 100);
    image(weaponButton, 250, 400, 100, 50);
    image(armorButton, 450, 400, 100, 50);

    if (showBubble) {
      drawBubble();
    }
  }
  void drawBubble() {
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(565, 160, 180, 90, 15);
    fill(0);
    textSize(16);
    textAlign(LEFT, TOP);
    text("Upgrade weapon and armor.", 580, 175, 150, 65);
  }
}
