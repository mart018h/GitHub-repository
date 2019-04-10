class UserIntefaceManager {
  Menu m;
  UserInterface ui;
  Button b;

  // LAV ALLE DE HER MENUER OG UI
  boolean mainMenu = false;
  boolean leveleditorUI = false;
  boolean battleplanUI = false;
  boolean battleUI = false;
  boolean campaignUI = false;
  boolean pauseUI = false;
  boolean ingame = false;
  boolean inmenu = false;

  ArrayList<Button> buttonList = new ArrayList<Button>();

  void menuInitiate() {
    m = new Menu();
    ui = new UserInterface();

    if (ingame) {
      ui.initiate();
    } else if (inmenu) {
      m.mainmenuInitiate();
    }
  }

  void display() {
    if (ingame) {
      ui.display();
    } else if (inmenu) {
      m.display();
    } else {
      //loadingscreen
    }
  }

  void keyPressed() {
    if (keyCode == 81) { //Q
      mainMenu = true;
      leveleditorUI = false;
      battleplanUI = false;
      battleUI = false;
      campaignUI = false;
      pauseUI = false;
      ingame = false;
      inmenu = true;
      println("Main Menu");
    }
    if (keyCode == 69) { //E
      mainMenu = false;
      leveleditorUI = true;
      battleplanUI = false;
      battleUI = false;
      campaignUI = false;
      pauseUI = false;
      ingame = true;
      inmenu = false;
      println("Level Editor");
    }
    if (keyCode == 82) { //R
      mainMenu = false;
      leveleditorUI = false;
      battleplanUI = true;
      battleUI = false;
      campaignUI = false;
      pauseUI = false;
      ingame = true;
      inmenu = false;
      println("Battle planer");
    }
    if (keyCode == 84) { //T
      mainMenu = false;
      leveleditorUI = false;
      battleplanUI = false;
      battleUI = true;
      campaignUI = false;
      pauseUI = false;
      ingame = true;
      inmenu = false;
      println("Battle");
    }
    if (keyCode == 89) { //Y
      mainMenu = false;
      leveleditorUI = false;
      battleplanUI = false;
      battleUI = false;
      campaignUI = true;
      pauseUI = false;
      ingame = true;
      inmenu = false;
      println("Campaign");
    }
    if (keyCode == 85) { //U
      mainMenu = false;
      leveleditorUI = false;
      battleplanUI = false;
      battleUI = false;
      campaignUI = false;
      pauseUI = true;
      ingame = true;
      inmenu = false;
      println("Pause");
    }
  }
}
