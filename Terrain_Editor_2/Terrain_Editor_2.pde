import de.bezier.data.sql.*;
SQLite db;
TerrainDatabase td;
TerrainHills th;
TerrainRiver tr;
TerrainPoint tp;

ArrayList<TerrainPoint> points;
int mapID = 1;
String mapName;
float locy = height/2;

void setup() {
  size(600, 600, P2D);
  
  db = new SQLite(this, "Terrain_2.db" );
  td = new TerrainDatabase();
  th = new TerrainHills();
  tr = new TerrainRiver();

  if (db.connect()) {
    td.initiate();
    td.addtoMap();
  }

  points = new ArrayList<TerrainPoint>();
}

void mousePressed() {
    points.add(new TerrainPoint(mouseX, mouseY));
}

void draw() {
  background(255, 0); // jeg sætter alpha til 0 for at kunne udnytte alpha effekten til gameplay
  fill(0);
  rect(width/2, locy, 20, 20);
  locy += 0.1;
  th.display();
  tr.display();
  for (TerrainPoint tp : points) {
    tp.display();
  }
}

void mouseClicked() {
  //loadPixels();
  color pix = get(mouseX, mouseY);
  float a = alpha(pix);
  println("Alpha = " + a);
}

void keyPressed() {
  //begin hill shape
  if (keyCode == 66) { //B
    th.makehill = true;
    println("making hill");
  }
  //end hill shape
  if (keyCode == 77) { //M
    th.hShapeList.add(th.h);
    th.makehill = false;
    points.clear();
  }
  //begin river shape
  if (keyCode == 72) { //H
    tr.makeriver = true;
    println("making river");
  }
  //end river shape
  if (keyCode == 75) { //K
    tr.rShapeList.add(tr.r);
    tr.makeriver = false;
    points.clear();
  }

  // change map id
  if (key == 49) {
    mapName = "Level 1";
    mapID = 1;
    println("Map ID = 1");
  } else if (key == 50) {
    mapName = "Level 2";
    mapID = 2;
    println("Map ID = 2");
  } else if (key == 51) {
    mapName = "Level 3";
    mapID = 3;
    println("Map ID = 3");
  }
}
