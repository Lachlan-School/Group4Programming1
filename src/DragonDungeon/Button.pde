//Lachlan Wayment, James Jia

class button {
  PImage attackButton, itemButton, runButton;

button() {
 attackButton = loadImage("attackButton.png");
    itemButton = loadImage("itemButton.png");
    runButton = loadImage("runButton.png");
}
void display() {
    image(attackButton, 224, 512);
    image(itemButton, 384, 512);
    image(runButton, 544, 512);
}
void mouseOver(float tempX, float tempY) {
    if (tempX <= 224 && tempX >= 320 && tempY <= 512 && tempY >= 574) {
      mouseOverATK = true;
      mouseOverITEM = false;
      mouseOverRUN = false;
    } else if (tempX <= 384 && tempX >= 480 && tempY <= 512 && tempY >= 574) {
      mouseOverITEM = true;
      mouseOverATK = false;
      mouseOverRUN = false;
    } else if (tempX <= 544 && tempX >= 640 && tempY <= 512 && tempY >= 574) {
      mouseOverRUN = true;
      mouseOverITEM = false;
      mouseOverATK = false;
    } else {
      mouseOverATK = false;
      mouseOverITEM = false;
      mouseOverRUN = false;
    }
  }
}

