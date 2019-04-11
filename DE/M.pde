class Menu {
  PFont mono;

  int bWidth;
  int bHeight;
  int r;
  int g;
  int b;

  void mainmenuInitiate() {
    bWidth = 200;
    bHeight = 100;
    r = 151;
    g = 151;
    b = 151;
    
    mono = loadFont("Algerian.vlw");
    textFont(mono);
    gm.uim.buttonList.add(new Button("New Game", width/2, height/4, bWidth, bHeight, r, g, b));
    gm.uim.buttonList.add(new Button("Terrain Editor", width/2, height*2/4, bWidth, bHeight, r, g, b));
    gm.uim.buttonList.add(new Button("Quit", width/2, height*3/4, bWidth, bHeight, r, g, b));
  }

  void display() {
    for (Button b : gm.uim.buttonList) {
      b.display();
    }
  }
}
