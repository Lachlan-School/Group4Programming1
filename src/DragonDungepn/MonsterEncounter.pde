// Lachlan Wayment

class Encounter() {
String creatureType;
int health;
float creatureIndex;
}
Encounter(){
health = 100;
creatureIndex = random(1,100);
if(creatureIndex <= 5) {
creatureType = MysteriousFae;
} else if (creatureIndex <= 20) {
creatureType = DemonicSprite;
} else if (creatureIndex <= 50) {
creatureType = Gryphon;
} else if (creatureIndex <= 70) {
creatureType = BlueSlime
} else {
creatureType = Gnome
}
}
