class Database {

  void initiate() {
    db.query("CREATE TABLE IF NOT EXISTS Hills (Map_id INTEGER,X FLOAT, Y FLOAT)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (Map_id INTEGER, X FLOAT, Y FLOAT)");

    db.query("CREATE TABLE IF NOT EXISTS Player_Army (unit_id INTEGER PRIMARY KEY AUTOINCREMENT, Unit_type STRING)");
    db.query("DELETE FROM Player_Army");
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.bm.u.Spear_Legion_I);
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.bm.u.Spear_Legion_I);
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.bm.u.Sword_Legion_I);
    db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.bm.u.Archer_I);
    
    db.query("CREATE TABLE IF NOT EXISTS Opponent_Army (unit_id INTEGER PRIMARY KEY AUTOINCREMENT, Unit_type STRING");
    db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.bm.u.Spear_Legion_I);
    db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.bm.u.Spear_Legion_I);
    db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.bm.u.Sword_Legion_I);
    db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.bm.u.Archer_I);
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
  }
}
