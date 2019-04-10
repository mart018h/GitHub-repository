class Menu {

  void mainmenuInitiate() {
    gm.uim.buttonList.add(new Button("New Game", width/2, height/6, 100, 40, 151, 151, 151));
    gm.uim.buttonList.add(new Button("Load Game", width/2, height*2/6, 100, 40, 151, 151, 151));
    gm.uim.buttonList.add(new Button("Terrain Editor", width/2, height*3/6, 100, 40, 151, 151, 151));
    gm.uim.buttonList.add(new Button("Leaderboard", width/2, height*4/6, 100, 40, 151, 151, 151));
    gm.uim.buttonList.add(new Button("Quit", width/2, height*5/6, 100, 40, 151, 151, 151));
  }

  void display() {
    for (Button b : gm.uim.buttonList) {
      b.display();
    }
  }
}
