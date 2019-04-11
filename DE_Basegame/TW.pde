class TerrainWorld {

  FPoly p;
  ArrayList<PVector> list = new ArrayList();
  ArrayList<FPoly> fShapeList = new ArrayList();
  float x;
  float y;
  boolean maketerrainfeature = false;
  boolean makehill = false;
  boolean makeriver = false;

  void display() {
    stroke(0);
    //fill(100,0,0);

    if (maketerrainfeature) {
      if (makehill) {
        fill(0, 200, 0, 50);
      } else if (makeriver) {
        fill(0, 0, 100, 150);
      }
      p = new FPoly();
      for (TerrainPoint tp : gm.te.points) {
        p.vertex(tp.pointpos.x, tp.pointpos.y);
      }
      world.add(p);
      fShapeList.add(p);
    }
  }

  void keyPressed() {
    if (keyCode == 72) {
      makehill = true;
      maketerrainfeature = true;
    }
    if (keyCode == 75) {
      makeriver = true;
      maketerrainfeature = true;
    }
    if (keyCode == 74) {
      makehill = false;
      maketerrainfeature = false;
      gm.te.points.clear();
    }
    if (keyCode == 76) {
      makeriver = false;
      maketerrainfeature = false;
      gm.te.points.clear();
    }
  }



  void loadShapes() {

    db.query("SELECT * FROM Hills WHERE Map_id = "+gm.te.mapID+"");
    db.query("SELECT COUNT(*) FROM Hills");
    x = db.getFloat(X);
    y = db.getFloat(Y);
    if (x>0 && y>0) {
      list.add(new PVector(x, y));
      db.next();
    }

    p = new FPoly();
    for (PVector l : list) {
      p.vertex(x, y);
    }
    fShapeList.add(p);

    list.clear();

    db.next();
  }

  void runShapes() {
    for (FPoly p : fShapeList) {
      world.add(p);
    }
  }
}
