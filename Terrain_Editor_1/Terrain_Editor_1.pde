import de.bezier.data.sql.*;
SQLite db;
TerrainDatabase td;
TerrainVisual tv;
TerrainPoint tp;
PShape s;

ArrayList<TerrainPoint> points;

Boolean shapedone = false;

void setup() {
  size(600, 600, P2D);

  db = new SQLite(this, "Terrain_2.db" );
  td = new TerrainDatabase();
  tv = new TerrainVisual();

  if (db.connect()) {
    td.initiate();
  }

  points = new ArrayList<TerrainPoint>();
}

void mousePressed() {
  points.add(new TerrainPoint(mouseX, mouseY));
  //td.addto();
}

void draw() {
  background(255);

  for (TerrainPoint tp : points) {
    tp.display();
  }
  tv.display();
  
}
