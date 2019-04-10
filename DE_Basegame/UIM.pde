class UserIntefaceManager {
  Menu m;
  UserInterface ui;
  Button b;

  // LAV ALLE DE HER MENUER OG UI
  boolean mainMenu = false;
  boolean saveMenu = false;
  boolean newgameMenu = false;
  boolean levelsaveMenu = false;
  boolean leaderboardMenu = false;
  boolean leveleditorUI = false;
  boolean battleplanUI = false;
  boolean battleUI = false;
  boolean campaignUI = false;
  boolean pauseUI = false;
  boolean loadingscreen = false;

  ArrayList<Button> buttonList = new ArrayList<Button>();

  void menuInitiate() {
    m = new Menu();
    ui = new UserInterface();
    
    //ui.initiate();
    m.mainmenuInitiate();
  }

  void display() {
    //ui.display();
    m.display();
  }
}
