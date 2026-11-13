//James Jia

class Shopkeeper {
  PImage shop; 
  PImage shopkeeper;
  boolean showBubble = false;

  Shopkeeper() {
    shop = loadImage("shop.png");
    shopkeeper = loadImage("shopkeeper.png");
    
  }

  void display() {
    image(shop, 137, 137, width*2/3, height*2/3);
    image(shopkeeper, 350,173, 200, 200);
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
    text("...", 580, 175, 150, 65);
  }
  void toggleDialogue() {
    showBubble = !showBubble;
  }
}
