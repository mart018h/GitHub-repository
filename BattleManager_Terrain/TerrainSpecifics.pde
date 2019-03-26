class TerrainSpecifics {

  void run() {
    db.query("drop table if exists Terrains");
    db.query("CREATE TABLE IF NOT EXISTS Terrains (save_id INTEGER PRIMARY KEY AUTOINCREMENT, factor FLOAT, range INTEGER)");
    db.query("INSERT INTO Terrains (factor, range) VALUES (0.5,20)");
    db.query("INSERT INTO Terrains (factor, range) VALUES (0.7,25)");
    db.query("INSERT INTO Terrains (factor, range) VALUES (1,20)");
    db.query("SELECT * FROM Terrains WHERE save_id=1");
  }
}
