class BattleManager {

  void battleInitiate() {
    gm.lt.loadTerrain();
    gm.tw.loadShapes(gm.lt.hillsmap_1);
    gm.tw.loadShapes(gm.lt.riversmap_1);
    gm.lu.getUnits();
  }

  void battlerun() {

    for (int i = 0; i < gm.u.soldierList.size(); i++) {
    //for (Soldier s : gm.u.soldierList) {
      Soldier s = gm.u.soldierList.get(i);
      s.sb.setVelocity(1, 0);
    }
    println("soldierList = " + gm.u.soldierList.size());
  }
}
