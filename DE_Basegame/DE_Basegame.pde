import de.bezier.data.sql.*;
SQLite db;
import fisica.*;

TerrainManager tm;
Button b;
UserIntefaceManager uim;


void setup() {
  size(600, 600, P2D);

  db = new SQLite(this, "Terrain.db" );
  uim = new UserIntefaceManager();
  tm = new TerrainManager();

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
  //uim.display();
  
  tm.terrainDisplay();
}

void keyPressed() {
  tm.keyPressed();
}
