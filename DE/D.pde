class Database {

  void initiate() {
    db.query("DROP TABLE IF EXISTS Hills");
    db.query("DROP TABLE IF EXISTS Rivers");
    db.query("DROP TABLE IF EXISTS Player_army");
    db.query("DROP TABLE IF EXISTS Oppenent_army");

    db.query("CREATE TABLE IF NOT EXISTS Hills (Map_id INTEGER,X FLOAT, Y FLOAT)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (Map_id INTEGER, X FLOAT, Y FLOAT)");

    db.query("CREATE TABLE IF NOT EXISTS Player_Army (unit_id INTEGER PRIMARY KEY AUTOINCREMENT, Unit_type STRING)");
    //db.query("DELETE FROM Player_Army");
    //db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.u.Spear_Legion_I);
    //db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.u.Spear_Legion_I);
    //db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.u.Sword_Legion_I);
    //db.query("INSERT INTO Player_Army (Unit_type) VALUES ('%s')", gm.u.Archer_I);

    db.query("CREATE TABLE IF NOT EXISTS Opponent_Army (unit_id INTEGER PRIMARY KEY AUTOINCREMENT, Unit_type STRING");
    //db.query("DELETE FROM Opponent_Army");
    //db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.u.Berserker);
    //db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.u.Pillager);
    //db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.u.Pillager);
    //db.query("INSERT INTO Opponent_Army (Unit_type) VALUES ('%s')", gm.u.Hunter);
  }

  void keyPressed() {
    //deletes values in tables
    if (keyCode == 77) { //M
      db.query("DELETE FROM Hills");
      db.query("DELETE FROM Rivers");
      db.query("DELETE FROM Player_army");
      db.query("DELETE FROM Opponent_army");
      println("Databases cleared");
    }

    //deletes tables for full restart
    if (keyCode == 78) { //N
      db.query("DROP TABLE IF EXISTS Hills");
      db.query("DROP TABLE IF EXISTS Rivers");
      db.query("DROP TABLE IF EXISTS Player_army");
      db.query("DROP TABLE IF EXISTS Oppenent_army");
      println("Databases dropped");
    }
  }
}
