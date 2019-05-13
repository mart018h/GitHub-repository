class TerrainWorld {

  FPoly p;
  //ArrayList<PVector> list = new ArrayList();
  ArrayList<FPoly> shapeList = new ArrayList();
  float locX;
  float locY;
  boolean makehill = false;
  boolean makeriver = false;

  void loadShapes(ArrayList<PVector> thisList) {

    for (PVector point : thisList) {
      if (point.x>0 && point.y>0) {
        gm.te.points.add(new TerrainPoint(point.x, point.y));
      } else {
        p = new FPoly();
        for (TerrainPoint t : gm.te.points) {
          p.vertex(t.pointpos.x, t.pointpos.y);
        }
        p.setSensor(true);
        
        if (thisList == gm.lt.hillsmap_1 || thisList == gm.lt.hillsmap_2 || thisList == gm.lt.hillsmap_3) {
          p.setFill(0, 200, 0, 100);
        } else if (thisList == gm.lt.riversmap_1 || thisList == gm.lt.riversmap_2 || thisList == gm.lt.riversmap_3) {
          p.setFill(0, 0, 150, 100);
        }
        
        world.add(p);
        gm.te.points.clear();
      }
    }
  }

  void drawShapes() {
    p = new FPoly();
    for (TerrainPoint t : gm.te.points) {
      p.vertex(t.pointpos.x, t.pointpos.y);
    }
    p.setSensor(true);

    if (makehill) {
      p.setFill(0, 200, 0, 100);
      for (TerrainPoint t : gm.te.points) {
        db.query("INSERT INTO Hills (X,Y,Map_id) VALUES ("+t.pointpos.x+","+t.pointpos.y+","+gm.te.mapID+")");
      }
    } else if (makeriver) {
      p.setFill(0, 0, 150, 100);
      for (TerrainPoint t : gm.te.points) {
        db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+t.pointpos.x+","+t.pointpos.y+","+gm.te.mapID+")");
      }
    }

    world.add(p);
    p.setStatic(true);
    gm.te.points.clear();
  }

  void makeHill() {
    makehill = true;
    drawShapes();
    println("hill made");
    makehill = false;
    db.query("INSERT INTO Hills (X,Y,Map_id) VALUES ("+-10+","+-10+","+gm.te.mapID+")");
  }

  void makeRiver() {
    makeriver = true;
    drawShapes();
    println("river made");
    makeriver = false;
    db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+-10+","+-10+","+gm.te.mapID+")");
  }
}
