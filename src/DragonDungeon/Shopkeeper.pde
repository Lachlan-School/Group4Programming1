//James Jia

class Shopkeeper {
  PImage shop; 
  PImage shopkeeper;

  Shopkeeper() {
    shop = loadImage("shop.png");
    shopkeeper = loadImage("shopkeeper.png");
  }

  void display() {
    image(shop, 137, 137, width*2/3, height*2/3);
    image(shopkeeper, 200,200, 500, 500);
  }
}
