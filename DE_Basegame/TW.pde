class TerrainWorld {

  FPoly p;
  ArrayList<PVector> list = new ArrayList();
  ArrayList<FPoly> shapeList = new ArrayList();
  float x;
  float y;

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
    shapeList.add(p);

    list.clear();

    db.next();
  }

  void runShapes() {
    for (FPoly p : shapeList) {
      world.add(p);
    }
  }
}
