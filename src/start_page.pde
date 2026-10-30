StartMenu startMenu;

void setup() {
  size(800, 600);
  startMenu = new StartMenu("Dragon Dungeon");
}

void draw() {
  startMenu.display();
}

void mousePressed() {
  String action = startMenu.handleClick();
  if (action.equals("start")) println("Start Game clicked!");
  if (action.equals("settings")) println("Settings clicked!");
  if (action.equals("tutorial")) println("Tutorial clicked!");
}

// ==========================================
// CLASS RENAMED TO "StartMenu" TO PREVENT NAMING CONFLICTS
// ==========================================
class StartMenu {
  String title;
  Button[] buttons;

  StartMenu(String title) {
    this.title = title;

    float bw = width / 3.5f;
    float bh = height / 10.0f;
    float gap = height / 7.5f;
    float cx = width / 2.0f;
    float cy = height * 0.45f;

    buttons = new Button[3];
    buttons[0] = new Button("Start Game", "start",    cx, cy,           bw, bh);
    buttons[1] = new Button("Settings",   "settings", cx, cy + gap,     bw, bh);
    buttons[2] = new Button("Tutorial",   "tutorial", cx, cy + gap * 2, bw, bh);
  }

  void display() {
    background(#00AF67);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(height / 10.0f);
    text(title, width / 2.0f, height / 5.0f);

    boolean overButton = false;
    for (Button b : buttons) {
      b.display();
      if (b.isHovered()) overButton = true;
    }
    cursor(overButton ? HAND : ARROW);
  }

  String handleClick() {
    for (Button b : buttons) {
      if (b.isHovered()) return b.action;
    }
    return "";
  }
}

// ==========================================
// BUTTON CLASS
// ==========================================
class Button {
  String label, action;
  float x, y, w, h;

  Button(String label, String action, float x, float y, float w, float h) {
    this.label = label;
    this.action = action;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  boolean isHovered() {
    return mouseX > x - w / 2.0f && mouseX < x + w / 2.0f &&
           mouseY > y - h / 2.0f && mouseY < y + h / 2.0f;
  }

  void display() {
    rectMode(CENTER);
    stroke(255);
    strokeWeight(2);
    fill(isHovered() ? color(90, 140, 255) : color(50, 90, 200));
    rect(x, y, w, h, 12);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(h * 0.4f);
    text(label, x, y);
  }
}
