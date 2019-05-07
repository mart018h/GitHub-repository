class UserIntefaceManager {
  //Menu m;
  UserInterface ui;

  // LAV ALLE DE HER MENUER OG UI
  boolean mainmenu = true;
  boolean leveleditor = false;
  boolean leveleditorselect = false;
  boolean battle = false;
  boolean campaign = false;
  boolean pause = false;

  void uiInitiate() {
    ui = new UserInterface();
    ui.mainmenuInitiate();
    ui.leveleditorInitiate();
    ui.leveleditorselectInitiate();
    ui.battleInitiate();
    ui.campaignInitiate();
  }

  void uiShift() {
    //relocate all buttons to avoid unwanted interferance
    b1.setPosition(0, 0);
    b1.setSize(1,1);
    b2.setPosition(0, 0);
    b2.setSize(1,1);
    b3.setPosition(0, 0);
    b3.setSize(1,1);
    b4.setPosition(0, 0);
    b4.setSize(1,1);
    b5.setPosition(0, 0);
    b5.setSize(1,1);
    b6.setPosition(0, 0);
    b6.setSize(1,1);
    b7.setPosition(0, 0);
    b7.setSize(1,1);
    b8.setPosition(0, 0);
    b8.setSize(1,1);
    b9.setPosition(0, 0);
    b9.setSize(1,1);
    
    if (mainmenu) {
      //button size: x= 200, y= 100
      b1.setPosition((width-200)/2, height/4-100/2);
      b1.setSize(200,100);
      b2.setPosition((width-200)/2, height*2/4-100/2);
      b2.setSize(200,100);
      b3.setPosition((width-200)/2, height*3/4-100/2);
      b3.setSize(200,100);
    } else if (leveleditorselect){
      b7.setPosition(width/4-200/2,(height-100)/2);
      b7.setSize(200,100);
      b8.setPosition(width*2/4-200/2,(height-100)/2);
      b8.setSize(200,100);
      b9.setPosition(width*3/4-200/2,(height-100)/2);
      b9.setSize(200,100);
    }else if (leveleditor) {
      
      //button size: x= 60, y= 40
      b4.setPosition(1100, 650);
      b4.setSize(60,40);
      b5.setPosition(1200, 650);
      b5.setSize(60,40);
      b6.setPosition(60, 40);
      b6.setSize(60,40);
    } else if (campaign) {
    } else if (battle) {
    }
  }

  void display() {
    if (mainmenu) {
      ui.mainmenuDisplay();
    } else if (leveleditor) {
      gm.te.terrainDisplay();
      world.step();
      world.draw();
    } else if (battle) {
      world.step();
      world.draw();
    } else if (campaign) {
      ui.campaignDisplay();
    }
  }

  void uiCampaign() {
    mainmenu = false;
    leveleditor = false;
    leveleditorselect = false;
    battle = false;
    campaign = true;
    pause = false;
    println("Campaign");
  }
  void uiMainmenu() {
    mainmenu = true;
    leveleditor = false;
    leveleditorselect = false;
    battle = false;
    campaign = false;
    pause = false;
    println("Main Menu");
  }
  void uiLeveleditor() {
    mainmenu = false;
    leveleditor = true;
    leveleditorselect = false;
    battle = false;
    campaign = false;
    pause = false;
    println("Level Editor");
  }
  void uiLeveleditorselect(){
    mainmenu = false;
    leveleditor = false;
    leveleditorselect = true;
    battle = false;
    campaign = false;
    pause = false;
    println("Level Editor Selector");
  }
  void uiBattle() {
    mainmenu = false;
    leveleditor = false;
    leveleditorselect = false;
    battle = true;
    campaign = false;
    pause = false;
    println("Battle");
  }
}
