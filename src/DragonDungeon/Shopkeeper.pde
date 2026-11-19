
class Shopkeeper {
  PImage shop;
  PImage shopkeeper;
  PImage weapon;
  PImage armor;
  PImage potion;
  PImage buyButton;
  boolean showBuyButton = false;
  String selectedItem = "";


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
    image(weapon, 400,138, 150, 100);
    image(armor, 450, 180, 120, 120);
    image(potion, 350, 140, 60,60);


    drawBubble();
    
    if (showBuyButton) {
      image(buyButton, width*1/3, 400, 120, 50);
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
    text("Buy weapon, armor or potion.", 580, 175, 150, 65);
  }
  
  void checkClick() {
    if (mouseX >= 350 && mouseX <= 350 + 60 && mouseY >= 140 && mouseY <= 140 + 60) {
      toggleItem("potion");
    } else if (mouseX >= 450 && mouseX <= 450 + 120 && mouseY >= 180 && mouseY <= 180 + 120) {
      toggleItem("armor");
    } else if (mouseX >= 400 && mouseX <= 400 + 150 && mouseY >= 138 && mouseY <= 138 + 100) {
      toggleItem("weapon");
    }
  }

  void toggleItem(String item) {
    if (selectedItem.equals(item) && showBuyButton) {
      showBuyButton = false;
      selectedItem = "";
    } else {
      selectedItem = item;
      showBuyButton = true;
    }
  }
}
