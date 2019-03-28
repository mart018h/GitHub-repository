class TerrainDatabase {

  void initiate() {
    db.query("drop table if exists Terrain_1");
    db.query("CREATE TABLE IF NOT EXISTS Terrain_1 (save_id INTEGER PRIMARY KEY AUTOINCREMENT, X INTEGER, Y INTEGER)");
  }

  void addto() {
    db.query("INSERT INTO Terrain_1 (X,Y) VALUES (tp.pointpos.x, tp.pointpos.y)");
  }
}
