class BattleManager {
  ArrayList<FCircle> movepointList = new ArrayList();
  FCircle mp;


  void battleInitiate() {
    gm.lt.loadTerrain();
    gm.tw.loadShapes(gm.lt.hillsmap_1);
    gm.tw.loadShapes(gm.lt.riversmap_1);
    gm.lu.getUnits();
  }

  void battlerun() {

    for (int i = 0; i < gm.u.soldierList.size(); i++) {
      Soldier s = gm.u.soldierList.get(i);
      //s.sb.setVelocity(1, 0);
      if (s.controlable) {
        if (movepointList.size() > 0) {
          PVector soldierPos = new PVector(s.sb.getX(), s.sb.getY());
          PVector mpPos = new PVector(mp.getX(), mp.getY());
          PVector soldierDirection = new PVector(mpPos.x - soldierPos.x, mpPos.y - soldierPos.y);
          PVector soldierVel = new PVector(cos(atan(soldierDirection.y/soldierDirection.x)) * s.SPEED, sin(atan(soldierDirection.y/soldierDirection.x)) * s.SPEED);
          s.sb.setVelocity(soldierVel.x, soldierVel.y);
        }
      }
    }
    //println("soldierList = " + gm.u.soldierList.size());
  }

  void mousePressed() {
    //mpPos = new PVector(mouseX, mouseY);
    if (movepointList.size() < 1) {
      movePoint(mouseX, mouseY);
    }
  }

  void movePoint(int pos_x, int pos_y) {
    mp = new FCircle(10);
    world.add(mp);
    mp.setSensor(true);
    mp.setPosition(pos_x, pos_y);
    movepointList.add(mp);
  }

  void contactStarted(FContact contact) {
    for (int i = 0; i < gm.u.soldierList.size(); i++) {
      Soldier s = gm.u.soldierList.get(i);
      s.sb.setVelocity(0, 0);
    }
  }
}
