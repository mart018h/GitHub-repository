class BattleManager {

  void battleInitiate() {
    gm.lt.loadTerrain();
    gm.tw.loadShapes(gm.lt.hillsmap_1);
    gm.tw.loadShapes(gm.lt.riversmap_1);
    gm.lu.getUnits();
  }
}
