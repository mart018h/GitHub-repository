import de.bezier.data.sql.*;
SQLite db;
import fisica.*;

Database d;
TerrainManager tm;
Button b;
UserIntefaceManager uim;


void setup() {
  //For school
  //size(600, 600, P2D);
  //For home
  size(2000,1500,P2D);

  db = new SQLite(this, "Terrain.db" );
  d = new Database();
  uim = new UserIntefaceManager();
  tm = new TerrainManager();

  if (db.connect()) {
    d.initiate();
  }
  uim.menuInitiate();
  tm.terrainInitiate();
}

void mousePressed() {
  tm.mousePressed();
  if (b!=null) {
    b.mousePressed();
  }
}

//void mouseClicked() {
//  color pix = get(mouseX, mouseY);
//  float a = alpha(pix);
//  println("Alpha = " + a);
//}

void draw() {
  uim.display();

  //tm.terrainDisplay();
}

void keyPressed() {
  tm.keyPressed();
}
