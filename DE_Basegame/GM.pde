class GameManager {
  Database d;
  TerrainManager tm;
  UserIntefaceManager uim;

  void initiate() {

    d = new Database();
    uim = new UserIntefaceManager();
    tm = new TerrainManager();

    if (db.connect()) {
      d.initiate();
    }
    //uim.menuInitiate();
    tm.terrainInitiate();
    
  }

  void display() {
    uim.display();
    if (uim.battleUI || uim.battleplanUI || (uim.leveleditorUI && tm.maketerrain)) {
      tm.terrainDisplay();
    }
  }

  void mousePressed() {
    if ((tm.th.makehill || tm.tr.makeriver) && (uim.leveleditorUI && tm.maketerrain)) {
      tm.mousePressed();
    }

    if (uim.b != null) {
      uim.b.mousePressed();
    }
  }

  void keyPressed() {
    uim.keyPressed();
    uim.menuInitiate();
    d.keyPressed();
    if ((uim.leveleditorUI && tm.maketerrain)) {
      tm.keyPressed();
    }
  }
}
