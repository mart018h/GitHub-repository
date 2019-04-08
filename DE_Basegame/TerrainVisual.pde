class TerrainVisual {
  PShape h;
  PShape r;
  boolean makehill = false;
  boolean makeriver = false;
  ArrayList<PShape> hShapeList =new ArrayList();
  ArrayList<PShape> rShapeList =new ArrayList();

  void display() {
    stroke(0);
    //hill
    if (makehill) {
      fill(0, 150, 0, 100);
      h = createShape();
      h.beginShape();
      for (TerrainPoint tp : tm.points) {
        h.vertex(tp.pointpos.x, tp.pointpos.y);
      }
      h.endShape(CLOSE);
    }
    //println(hShapeList.size());
    if (h != null) {
      for (PShape hh : hShapeList) {
        shape(hh);
      }
    }
    //river
    if (makeriver) {
      fill(0, 0, 100, 100);
      r = createShape();
      r.beginShape();
      for (TerrainPoint tp : tm.points) {
        r.vertex(tp.pointpos.x, tp.pointpos.y);
      }
      r.endShape(CLOSE);
    }
    //println(rShapeList.size());
    if (r != null) {
      for (PShape rr : rShapeList) {
        shape(rr);
      }
    }
  }

  void keyPressed() {
    //begin hill shape
    if (keyCode == 85) { //U
      makehill = true;
      println("making hill");
    }
    //end hill shape
    if (keyCode == 73) { //I
      hShapeList.add(h);
      makehill = false;
      tm.points.clear();
      db.query("INSERT INTO Hills (X,Y,Map_id) VALUES ("+-10+","+-10+","+tm.mapID+")");
    }
    //begin river shape
    if (keyCode == 79) { //O
      makeriver = true;
      println("making river");
    }
    //end river shape
    if (keyCode == 80) { //P
      rShapeList.add(tm.tr.r);
      makeriver = false;
      tm.points.clear();
      db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+-10+","+-10+","+tm.mapID+")");
    }
  }
}
