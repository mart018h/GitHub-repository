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

    //begin river shape
    if (keyCode == 79) { //O
      tm.tr.makeriver = true;
      println("making river");
    }
    //end river shape
    if (keyCode == 80) { //P
      tm.tr.rShapeList.add(tm.tr.r);
      tm.tr.makeriver = false;
      tm.points.clear();
      db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+-10+","+-10+","+tm.mapID+")");
    }
  }
}
