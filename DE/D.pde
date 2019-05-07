class Database {

  void initiate() {
    db.query("CREATE TABLE IF NOT EXISTS Hills (Map_id INTEGER,X FLOAT, Y FLOAT)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (Map_id INTEGER, X FLOAT, Y FLOAT)");

    db.query("CREATE TABLE IF NOT EXISTS Player_Army (unit_id INTEGER PRIMARY KEY AUTOINCREMENT, Unit_type STRING)");
    db.query("DELETE FROM Player_Army");
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.ut.Spear_Legion_I);
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.ut.Spear_Legion_I);
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.ut.Sword_Legion_I);
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.ut.Archer_I);
  }

  void keyPressed() {

    //deletes values in tables
    if (keyCode == 77) { //M
      db.query("DELETE FROM Hills");
      db.query("DELETE FROM Rivers");
      println("Databases cleared");
    }

    //deletes tables for full restart
    if (keyCode == 78) { //N
      db.query("drop table if exists Hills");
      db.query("drop table if exists Rivers");
      println("Databases dropped");
    }

//    if (key == 49) { //1
//      gm.te.mapID = 1;
//      println("Map ID = 1");
//      db.query("INSERT INTO Maps (Name) VALUES ('%s')", gm.te.mapName);
//    } else if (key == 50) { //2
//      gm.te.mapID = 2;
//      println("Map ID = 2");
//      db.query("INSERT INTO Maps (Name) VALUES ('%s')", gm.te.mapName);
//    } else if (key == 51) { //3
//      gm.te.mapID = 3;
//      println("Map ID = 3");
//      db.query("INSERT INTO Maps (Name) VALUES ('%s')", gm.te.mapName);
//    }
  }
}
