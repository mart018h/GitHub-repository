class Menu {

  int bWidth;
  int bHeight;
  int r;
  int g;
  int b;

  void mainmenuInitiate() {
    bWidth = 100;
    bHeight = 40;
    r = 151;
    g = 151;
    b = 151;

    gm.uim.buttonList.add(new Button("New Game", width/2, height/6, bWidth, bHeight, r, g, b));
    gm.uim.buttonList.add(new Button("Load Game", width/2, height*2/6, bWidth, bHeight, r, g, b));
    gm.uim.buttonList.add(new Button("Terrain Editor", width/2, height*3/6, bWidth, bHeight, r, g, b));
    gm.uim.buttonList.add(new Button("Leaderboard", width/2, height*4/6, bWidth, bHeight, r, g, b));
    gm.uim.buttonList.add(new Button("Quit", width/2, height*5/6, bWidth, bHeight, r, g, b));
  }

  void display() {
    for (Button b : gm.uim.buttonList) {
      b.display();
    }
  }
}
