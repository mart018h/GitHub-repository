class Database {

  void initiate() {
    db.query("DROP TABLE IF EXISTS Player_army");
    db.query("DROP TABLE IF EXISTS Viking_army");

    db.query("CREATE TABLE IF NOT EXISTS Hills (Map_id INTEGER,X FLOAT, Y FLOAT)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (Map_id INTEGER, X FLOAT, Y FLOAT)");

    db.query("CREATE TABLE IF NOT EXISTS Player_Army (r_unit_id INTEGER PRIMARY KEY AUTOINCREMENT, unitSize INTEGER, soldierAtk INTEGER, soldierDef INTEGER, soldierSpe INTEGER, soldierHP INTEGER, soldierW INTEGER, soldierH INTEGER, r INTEGER, g INTEGER, b INTEGER)");
    db.query("DELETE FROM Player_Army");
    addSpear_I();
    addLegion_I();
    addCommander();
    addCavalry_I();

    db.query("CREATE TABLE IF NOT EXISTS Viking_Army (v_unit_id INTEGER PRIMARY KEY AUTOINCREMENT, unitSize INTEGER, soldierAtk INTEGER, soldierDef INTEGER, soldierSpe INTEGER, soldierHP INTEGER, soldierW INTEGER, soldierH INTEGER, r INTEGER, g INTEGER, b INTEGER)");
    db.query("DELETE FROM Viking_Army");
    addShieldaxe();
    addBerserker();
    addClaymore();
    addHoundmaster();
  }

  //Romans
  void addSpear_I() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (50, 5, 10, 20, 120, 5, 5, 100, 100, 0)");
  }
  void addSpear_II() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (50, 7, 10, 20, 150, 5, 5, 100, 100, 0)");
  }
  void addLegion_I() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (40, 7, 10, 20, 150, 5, 5, 200, 0, 0)");
  }
  void addLegion_II() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (40, 10, 10, 20, 200, 5, 5, 200, 0, 0)");
  }
  void addCavalry_I() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (20, 6, 10, 30, 100, 10, 5, 100, 150, 50)");
  }
  void addCavalry_II() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (20, 8, 10, 35, 150, 10, 5, 100, 150, 50)");
  }
  void addCommander() {
    db.query("INSERT INTO Player_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (10, 15, 10, 20, 250, 5, 5, 200, 200, 0)");
  }

  //Vikings
  void addShieldaxe() {
    db.query("INSERT INTO Viking_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (40, 15, 10, 20, 250, 5, 5, 0, 0, 0)");
  }
  void addBerserker() {
    db.query("INSERT INTO Viking_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (30, 10, 10, 20, 250, 5, 5, 0, 0, 0)");
  }
  void addHoundmaster() {
    db.query("INSERT INTO Viking_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (10, 15, 7, 15, 70, 7, 7, 0, 0, 0)");
  }
  void addClaymore() {
    db.query("INSERT INTO Viking_Army (unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b) VALUES (10, 15, 10, 20, 250, 5, 5, 0, 0, 0)");
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
      db.query("DROP TABLE IF EXISTS Hills");
      db.query("DROP TABLE IF EXISTS Rivers");
      println("Databases dropped");
    }
  }
}
