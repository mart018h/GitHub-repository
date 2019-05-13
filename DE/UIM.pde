class UserIntefaceManager {
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
    ui.uileveleditorselectInitiate();
    ui.uileveleditorInitiate();
    ui.uicampaignInitiate();
    ui.uimainmenuInitiate();
    ui.uibattleInitiate();
  }

  void uiShift() {
    //relocate all buttons to avoid unwanted interferance
    b1.setPosition(0, 0);
    b1.setSize(1, 1);
    b2.setPosition(0, 0);
    b2.setSize(1, 1);
    b3.setPosition(0, 0);
    b3.setSize(1, 1);
    b4.setPosition(0, 0);
    b4.setSize(1, 1);
    b5.setPosition(0, 0);
    b5.setSize(1, 1);
    b6.setPosition(0, 0);
    b6.setSize(1, 1);
    b7.setPosition(0, 0);
    b7.setSize(1, 1);
    b8.setPosition(0, 0);
    b8.setSize(1, 1);
    b9.setPosition(0, 0);
    b9.setSize(1, 1);
    b10.setPosition(0, 0);
    b10.setSize(1, 1);
    b11.setPosition(0, 0);
    b11.setSize(1, 1);
    b12.setPosition(0, 0);
    b12.setSize(1, 1);
    b13.setPosition(0, 0);
    b13.setSize(1, 1);
    b14.setPosition(0, 0);
    b14.setSize(1, 1);
    b15.setPosition(0, 0);
    b15.setSize(1, 1);
    b16.setPosition(0, 0);
    b16.setSize(1, 1);
    b17.setPosition(0, 0);
    b17.setSize(1, 1);

    if (mainmenu) {
      //button size: x= 200, y= 100
      b1.setPosition((width-200)/2, height/4-100/2);
      b1.setSize(200, 100);
      b2.setPosition((width-200)/2, height*2/4-100/2);
      b2.setSize(200, 100);
      b3.setPosition((width-200)/2, height*3/4-100/2);
      b3.setSize(200, 100);
    } else if (leveleditorselect) {
      //button size: x= 200, y= 100
      b7.setPosition(width/4-200/2, (height-100)/2);
      b7.setSize(200, 100);
      b8.setPosition(width*2/4-200/2, (height-100)/2);
      b8.setSize(200, 100);
      b9.setPosition(width*3/4-200/2, (height-100)/2);
      b9.setSize(200, 100);
      //button size x = 60, y =40
      b11.setPosition(60, 40);
      b11.setSize(60, 40);
    } else if (leveleditor) {
      //button size: x= 60, y= 40
      b4.setPosition(1000, 650);
      b4.setSize(60, 40);
      b5.setPosition(1100, 650);
      b5.setSize(60, 40);
      b6.setPosition(60, 40);
      b6.setSize(60, 40);
    } else if (campaign) {
      //button size: x= 20, y= 20
      b10.setPosition(width/2-10, height/2);
      b10.setSize(20, 20);
      b12.setPosition(0, 0);
      b12.setSize(60, 40);
    } else if (battle) {
      b13.setPosition(width/6, 650);
      b13.setSize(40, 50);
      b14.setPosition(width*2/6, 650);
      b14.setSize(40, 50);
      b15.setPosition(width*3/6, 650);
      b15.setSize(40, 50);
      b16.setPosition(width*4/6, 650);
      b16.setSize(40, 50);
      b17.setPosition(width*5/6, 650);
      b17.setSize(40, 50);
    }
  }

  void display() {
    if (mainmenu) {
      ui.uimainmenuDisplay();
    } else if (leveleditor) {
      gm.te.terrainDisplay();
      world.step();
      world.draw();
    } else if (leveleditorselect) {
      ui.uileveleditorselectDisplay();
    } else if (battle) {
      world.step();
      world.draw();
      ui.uibattleDisplay();
      gm.bm.battlerun();
    } else if (campaign) {
      ui.uicampaignDisplay();
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
  void uiLeveleditorselect() {
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
