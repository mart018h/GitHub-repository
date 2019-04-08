class TerrainPoint {

  PVector pointpos;

  TerrainPoint(int x, int y) {
    pointpos = new PVector(x, y);
    println("X = " + (pointpos.x) + ", Y = " + (pointpos.y) + ", MapID = " + (tm.mapID));

    if (tm.th.makehill) {
      if (pointpos != null) {
        db.query("INSERT INTO Hills (X,Y,Map_id) VALUES ("+pointpos.x+","+pointpos.y+","+tm.mapID+")");
      }
    } else if (tm.tr.makeriver) {
      if (pointpos != null) {
        db.query("INSERT INTO Rivers (X,Y,Map_id) VALUES ("+pointpos.x+","+pointpos.y+","+tm.mapID+")");
      }
    }
  }


  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(151);
    rect( pointpos.x, pointpos.y, 10, 10);
  }
}
