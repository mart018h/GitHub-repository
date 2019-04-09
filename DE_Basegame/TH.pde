class TerrainHill {
  PShape h;
  boolean makehill = false;
  ArrayList<PShape> hShapeList =new ArrayList();

  void display() {
    stroke(0);
    fill(0, 150, 0, 100);
    if (makehill) {
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
  }
}
