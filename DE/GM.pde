class GameManager {
  Database d;
  BattleManager bm;
  TerrainEditor te;
  UserIntefaceManager uim;
  TerrainWorld tw;
  LoadTerrain lt;

  void initiate() {

    d = new Database();
    bm = new BattleManager();
    uim = new UserIntefaceManager();
    te = new TerrainEditor();
    tw = new TerrainWorld();
    lt = new LoadTerrain();

    if (db.connect()) {
      d.initiate();
    }

    world.setEdges();
    world.setGravity(0, 0);
    world.setGrabbable(false);

    uim.uiInitiate();
    uim.uiShift();

    te.terrainInitiate();
    lt.load();
  }

  void display() {
    uim.display();
  }

  void mousePressed() {
    if (uim.leveleditor) {
      te.mousePressed();
    }
  }

  void keyPressed() {
    d.keyPressed();
    if (uim.battle) {
      tw.loadShapes(lt.hillsmap_1);
      tw.loadShapes(lt.riversmap_1);
    }
  }
}
