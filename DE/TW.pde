class TerrainWorld {

  FPoly p;
  ArrayList<PVector> list = new ArrayList();
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
        world.add(p);
        //shapeList.add(p);
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
      fill(0, 200, 0);
      for (TerrainPoint t : gm.te.points) {
        db.query("INSERT INTO Hills (X,Y,Map_id) VALUES ("+t.pointpos.x+","+t.pointpos.y+","+gm.te.mapID+")");
      }
    } else if (makeriver) {
      fill(0, 0, 100);
      for (TerrainPoint t : gm.te.points) {
        db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+t.pointpos.x+","+t.pointpos.y+","+gm.te.mapID+")");
      }
    }

    world.add(p);

    gm.te.points.clear();
  }

  void keyPressed() {
    if (key == 'h') {
      makehill = true;
      drawShapes();
      println("hill made");
    }
    if (key == 'k') {
      makeriver = true;
      drawShapes();
      println("river made");
    }
  }


  void keyReleased() {
    if (key == 'h') {
      makehill = false;
      db.query("INSERT INTO Hills (X,Y,Map_id) VALUES ("+-10+","+-10+","+gm.te.mapID+")");
    }
    if (key == 'k'){
      makeriver = false;
      db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+-10+","+-10+","+gm.te.mapID+")");
    }
  }
}
