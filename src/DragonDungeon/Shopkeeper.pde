class Shopkeeper {
  PImage shop;
  PImage shopkeeper;
  PImage weapon;
  PImage armor;
  PImage potion;
  PImage buyButton;
  boolean showBuyButton = false;
  String selectedItem = "";
  int itemPrice = 0;

  Shopkeeper() {
    shop = loadImage("shop.png");
    shopkeeper = loadImage("shopkeeper.png");
    weapon = loadImage("weapon.png");
    armor = loadImage("armor.png");
    potion = loadImage("potion.png");
    buyButton = loadImage("buyButton.png");
  }

  void display() {
    image(shop, 137, 137, width*1/2, height*1/2);
    image(shopkeeper, 350, 213, 100, 100);
    image(weapon, 400, 138, 150, 100);
    image(armor, 450, 180, 120, 120);
    image(potion, 350, 140, 60, 60);

    drawBubble();

    if (showBuyButton) {
      image(buyButton, width*1/3, 400, 120, 50);
    }
  }

  void drawBubble() {
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(480, 265, 160, 45, 8);
    fill(0);
    textSize(12);
    textAlign(LEFT, TOP);

    if (showBuyButton) {
      text(selectedItem + ": " + itemPrice + " gold", 488, 273, 144, 35);
    } else {
      text("Buy weapon, armor or potion.", 488, 271, 144, 38);
    }
  }

  void checkClick() {
    if (mouseX >= 350 && mouseX <= 410 && mouseY >= 140 && mouseY <= 200) {
      toggleItem("Potion", 50);
    } else if (mouseX >= 410 && mouseX <= 550 && mouseY >= 138 && mouseY <= 210) {
      toggleItem("Weapon", 100);
    } else if (mouseX >= 450 && mouseX <= 570 && mouseY >= 210 && mouseY <= 300) {
      toggleItem("Armor", 75);
    }
  }
  void toggleItem(String item, int price) {
    if (selectedItem.equals(item) && showBuyButton) {
      showBuyButton = false;
      selectedItem = "";
      itemPrice = 0;
    } else {
      selectedItem = item;
      itemPrice = price;
      showBuyButton = true;
    }
  }
}
