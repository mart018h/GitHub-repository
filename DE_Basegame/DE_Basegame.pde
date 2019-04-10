import de.bezier.data.sql.*;
import fisica.*;
SQLite db;
GameManager gm;

void setup() {
  //For school
  size(1000, 700, P2D);
  //For home
  //size(1920,1080,P2D);

  db = new SQLite(this, "Terrain.db" );
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
