class TerrainHills {
  PShape h;
  boolean makehill = false;
  ArrayList<PShape> hShapeList =new ArrayList();

  void display() {
    stroke(0);
    fill(0, 150, 0, 100);
    if (makehill) {
      h = createShape();
      h.beginShape();
      for (TerrainPoint tp : points) {
        h.vertex(tp.pointpos.x, tp.pointpos.y);
        //td.addtoHills();
      }
      h.endShape(CLOSE);
    }
    //println(hShapeList.size());
    if (h != null) {
      for (PShape hh : hShapeList) {
        shape(hh);
      }
    }
  }
}
