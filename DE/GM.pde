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
    
    uim.uiInitiate();
    uim.uiShift();

    world.setGravity(0, 0);

    te.terrainInitiate();
    lt.load();
    //println("amount of shapes = " +tw.shapeList.size());
  }

  void display() {
    uim.display();
  }

  void mousePressed() {
    //if ((te.th.makehill || te.tr.makeriver) && (uim.leveleditorUI && te.maketerrain)) {
    if (uim.leveleditor) {
      te.mousePressed();
    }
  }

  void keyPressed() {
    d.keyPressed();
    if (uim.leveleditor) {
      //te.keyPressed();
      if (gm.te.points != null) {
        //tw.keyPressed();
      }
    }
    if (uim.battle) {
      tw.loadShapes(lt.hillsmap_1);
      tw.loadShapes(lt.riversmap_1);
    }
  }

}
