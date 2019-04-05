class TerrainPoint {

  PVector pointpos;

  TerrainPoint(int x, int y) {
    pointpos = new PVector(x, y);
    println("X = " + (pointpos.x) + ", Y = " + (pointpos.y) + ", MapID = " + (mapID));
    
    db.query("INSERT INTO Hills (X,Y, Map_id) VALUES ("+tp.pointpos.x+","+tp.pointpos.y+","+mapID+")");
    //if (th.makehill) {
    //  if (pointpos != null) {
    //    //td.addtoHills();

    //db.query("INSERT INTO Hills (X,Y, Map_id) VALUES ("+tp.pointpos.x+","+tp.pointpos.y+","+mapID+")");
    //  }
    //} else if (tr.makeriver) {
    //  if (pointpos != null) {
    //    td.addtoRivers();
    //  }
    //}
  }

  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(151);
    rect( pointpos.x, pointpos.y, 10, 10);
  }
}
