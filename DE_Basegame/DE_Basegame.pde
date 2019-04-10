import de.bezier.data.sql.*;
import fisica.*;
SQLite db;
FWorld world;
GameManager gm;

void setup() {
  //For school
  size(1000, 700, P2D);
  //For home
  //size(1920,1080,P2D);
  Fisica.init(this);
  
  db = new SQLite(this, "Terrain.db" );
  world = new FWorld();
  gm = new GameManager();
  
  gm.initiate();
}

//void mouseClicked() {
//  color pix = get(mouseX, mouseY);
//  float a = alpha(pix);
//  println("Alpha = " + a);
//}

void draw() {
  background(255);
  gm.display();
}

void mousePressed() {
  gm.mousePressed();
}

void keyPressed() {
  gm.keyPressed();
}
