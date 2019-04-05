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
      for (TerrainPoint tp : points) {
        r.vertex(tp.pointpos.x, tp.pointpos.y);
        //td.addtoRivers();
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
}
