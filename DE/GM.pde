class GameManager {
  Database d;
  TerrainEditor te;
  UserIntefaceManager uim;
  TerrainWorld tw;
  UnitType ut;
  LoadTerrain lt;

  void initiate() {

    d = new Database();
    uim = new UserIntefaceManager();
    te = new TerrainEditor();
    tw = new TerrainWorld();
    ut = new UnitType();
    lt = new LoadTerrain();

    if (db.connect()) {
      d.initiate();
    }
    //uim.menuInitiate();

    world.setGravity(0, 0);

    te.terrainInitiate();
    lt.load();
    println("amount of shapes = " +tw.shapeList.size());
  }

  void display() {
    uim.display();
    if (uim.leveleditorUI) {
      te.terrainDisplay();
      world.step();
      world.draw();
    }
    if (uim.battleUI || uim.battleplanUI) {

      world.step();
      world.draw();
    }
  }

  void mousePressed() {
    //if ((te.th.makehill || te.tr.makeriver) && (uim.leveleditorUI && te.maketerrain)) {
    if (uim.leveleditorUI) {
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
    if (uim.leveleditorUI) {
      //te.keyPressed();
      if (gm.te.points != null) {
        tw.keyPressed();
      }
    }
    if (uim.battleUI || uim.battleplanUI) {
      tw.loadShapes(lt.hillsmap_1);
      tw.loadShapes(lt.riversmap_1);
    }
  }

  void keyReleased() {
    tw.keyReleased();
  }
}
