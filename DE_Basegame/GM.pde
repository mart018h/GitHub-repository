class GameManager {
  Database d;
  TerrainEditor te;
  UserIntefaceManager uim;
  TerrainWorld tw;
  UnitType ut;

  void initiate() {

    d = new Database();
    uim = new UserIntefaceManager();
    te = new TerrainEditor();
    tw = new TerrainWorld();
    ut = new UnitType();

    if (db.connect()) {
      d.initiate();
    }
    //uim.menuInitiate();

    te.terrainInitiate();
  }

  void display() {
    uim.display();
    if (uim.leveleditorUI && te.maketerrain) {
      te.terrainDisplay();
    }
    if (uim.battleUI || uim.battleplanUI) {
      //tw.loadShapes();
      //tw.runShapes();
      world.step();
      world.draw();
    }
  }

  void mousePressed() {
    if ((te.th.makehill || te.tr.makeriver) && (uim.leveleditorUI && te.maketerrain)) {
      te.mousePressed();
    }

    if (uim.b != null) {
      uim.b.mousePressed();
    }
  }

  void keyPressed() {
    uim.keyPressed();
    uim.menuInitiate();
    d.keyPressed();
    if ((uim.leveleditorUI && te.maketerrain)) {
      te.keyPressed();
    }
  }
}
