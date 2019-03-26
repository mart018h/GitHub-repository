import de.bezier.data.sql.*;
SQLite db;
TerrainRender tr;
TerrainSpecifics ts;

void setup() {
  size(600, 600, P3D);
  db = new SQLite( this, "Terrain.db" );
  ts = new TerrainSpecifics();
  if (db.connect()) {
    ts.run();
  }
  tr = new TerrainRender();
  tr.initiate();
}

void draw() {
  tr.run();
}

void keyPressed() {
  if (keyCode == 49) db.query("SELECT * FROM Terrain WHERE save_id=1");
  if (keyCode == 50) db.query("SELECT * FROM Terrain WHERE save_id=2");
  if (keyCode == 51) db.query("SELECT * FROM Terrain WHERE save_id=3");
}
