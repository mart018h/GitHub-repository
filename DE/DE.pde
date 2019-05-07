import de.bezier.data.sql.*;
import interfascia.*;
import fisica.*;
SQLite db;
FWorld world;
GUIController c;
IFButton b1, b2, b3, b4, b5, b6, b7, b8, b9, b10;

GameManager gm;

void setup() {
  fullScreen(P2D);
  Fisica.init(this);
  
  c = new GUIController (this);
  db = new SQLite(this, "Terrain.db" );
  world = new FWorld();
  gm = new GameManager();

  gm.initiate();
  b1.addActionListener(this);
  b2.addActionListener(this);
  b3.addActionListener(this);
  b4.addActionListener(this);
  b5.addActionListener(this);
  b6.addActionListener(this);
  b7.addActionListener(this);
  b8.addActionListener(this);
  b9.addActionListener(this);
  b10.addActionListener(this);
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

void actionPerformed (GUIEvent e) {
  if (e.getSource() == b1) {
    gm.uim.uiCampaign();
    gm.uim.uiShift();
    println("Button one was clicked");
  } else if (e.getSource() == b2) {
    gm.uim.uiLeveleditorselect();
    gm.uim.uiShift();
    println("Button two was clicked");
  } else if (e.getSource() == b3) {
    exit();
    println("Button three was clicked");
  } else if (e.getSource() == b4) {
    gm.tw.makeHill();
    println("Button four was clicked");
  } else if (e.getSource() == b5) {
    gm.tw.makeRiver();
    println("Button five was clicked");
  } else if (e.getSource() == b6) {
    gm.uim.uiMainmenu();
    gm.uim.uiShift();
    println("Button six was clicked");
  } else if (e.getSource() == b7) {
    gm.te.mapID = 1;
    println("Map ID = 1" + " Map Name: Hilly Terrain");
    db.query("DELETE FROM Hills WHERE Map_id = 1");
    gm.uim.uiLeveleditor();
    gm.uim.uiShift();
    println("Button seven was clicked");
  } else if (e.getSource() == b8) {
    gm.te.mapID = 2;
    println("Map ID = 2" + " Map Name: Flat Terrain");
    db.query("DELETE FROM Hills WHERE Map_id = 2");
    gm.uim.uiLeveleditor();
    gm.uim.uiShift();
    println("Button eight was clicked");
  } else if (e.getSource() == b9) {
    gm.te.mapID = 3;
    println("Map ID = 3" + " Map Name: Moderate Terrain");
    db.query("DELETE FROM Hills WHERE Map_id = 3");
    gm.uim.uiLeveleditor();
    gm.uim.uiShift();
    println("Button nine was clicked");
  } else if (e.getSource() == b10) {
    gm.te.mapID = 1;
    gm.uim.uiBattle();
    gm.uim.uiShift();
    println("Button ten was clicked");
  }
}
