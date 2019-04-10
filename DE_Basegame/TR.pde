class TerrainRiver {
  PShape r;
  boolean makeriver = false;
  ArrayList<PShape> rShapeList =new ArrayList();

  void display() {
    stroke(0);
    fill(0, 0, 100, 100);
    if (makeriver) {
      r = createShape();
      r.beginShape();
      for (TerrainPoint tp : gm.te.points) {
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

    //begin river shape
    if (keyCode == 75) { //K
      makeriver = true;
      gm.te.th.makehill = false;
      println("making river");
    }
    //end river shape
    if (keyCode == 76) { //L
      rShapeList.add(r);
      makeriver = false;
      gm.te.points.clear();
      println("river made");
      db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+-10+","+-10+","+gm.te.mapID+")");
    }
  }
}
