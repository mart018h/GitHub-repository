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
    uim.menuInitiate();
    tm.terrainInitiate();
  }

  void display() {
    uim.display();
    if (tm.inbattle || tm.editterrain) {
      tm.terrainDisplay();
    }
  }

  void mousePressed() {
    if ((tm.th.makehill || tm.tr.makeriver) && tm.maketerrain) {
      tm.mousePressed();
    }
    
    if (uim.b != null) {
      uim.b.mousePressed();
    }
  }

  void keyPressed() {
    if ((tm.th.makehill || tm.tr.makeriver) && tm.maketerrain) {
      tm.keyPressed();
    }
  }
}
