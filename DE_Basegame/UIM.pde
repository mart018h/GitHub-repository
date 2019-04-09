class UserIntefaceManager {
  Menu m;

  // LAV ALLE DE HER MENUER OG UI
  boolean mainmenu = false;
  boolean savemenu = false;
  boolean newgamemenu = false;
  boolean levelsavemenu = false;
  boolean leaderboardmenu = false;
  boolean leveleditorUI = false;
  boolean battleplanUI = false;
  boolean battleUI = false;
  boolean campaignUI = false;
  boolean pauseUI = false;
  boolean loadingscreen = false;

  ArrayList<Button> buttonList = new ArrayList<Button>();

  void menuInitiate() {
    m = new Menu();
    mainmenu = true;

    if (loadingscreen) {
    } else if (mainmenu) {
      m.mainmenuInitiate();
      //println(buttonList.size());
    } else if (battleUI) {
    } else if (battleplanUI) {
    } else if (pauseUI) {
    } else if (campaignUI) {
    } else if (leveleditorUI) {
    } else if (levelsavemenu) {
    } else if (savemenu) {
    } else if (newgamemenu) {
    } else if (leaderboardmenu){
    }
  }

  void display() {
    
    m.display();
  }
}
