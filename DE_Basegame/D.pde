class Database {

  void initiate() {
    db.query("CREATE TABLE IF NOT EXISTS Maps (Map_id INTEGER PRIMARY KEY AUTOINCREMENT, Name STRING)");
    db.query("CREATE TABLE IF NOT EXISTS Hills (Map_id INTEGER PRIMARY KEY,X FLOAT, Y FLOAT)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (Map_id INTEGER PRIMARY KEY, X FLOAT, Y FLOAT)");

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
      db.query("DELETE FROM Maps");
      db.query("DELETE FROM Hills");
      db.query("DELETE FROM Rivers");
      println("Databases cleared");
    }

    //deletes tables for full restart
    if (keyCode == 78) { //N
      db.query("drop table if exists Maps");
      db.query("drop table if exists Hills");
      db.query("drop table if exists Rivers");
      println("Databases dropped");
    }

    if (key == 49) { //1
      gm.te.maketerrain = true;
      gm.te.mapName = "Level 1";
      gm.te.mapID = 1;
      println("Map ID = 1");
      db.query("INSERT INTO Maps (Name) VALUES ('%s')", gm.te.mapName);
    } else if (key == 50) { //2
      gm.te.maketerrain = true;
      gm.te.mapName = "Level 2";
      gm.te.mapID = 2;
      println("Map ID = 2");
      db.query("INSERT INTO Maps (Name) VALUES ('%s')", gm.te.mapName);
    } else if (key == 51) { //3
      gm.te.maketerrain = true;
      gm.te.mapName = "Level 3";
      gm.te.mapID = 3;
      println("Map ID = 3");
      db.query("INSERT INTO Maps (Name) VALUES ('%s')", gm.te.mapName);
    }
  }

  //void loadTerrain() {
  //  db.query("SELECT * FROM Maps, Hills, Rivers WHERE Map_id = "+tm.mapID+" AND Map_id = Hills.Map_id AND Map_id = Rivers.Map_id"); //virker ikke!!!
  //  ArrayList<PVector> list = new ArrayList();

  //  if ( db.connect() )
  //  {
  //    db.query( "SELECT COUNT(*) FROM Hills" );
  //    db.next();
  //    int x = db.getInt("X");
  //    int y = db.getInt("Y") ;

  //    if (x>0 && y>0) {
  //      points.add(new TerrainPoint(db.getInt("X"), db.getInt("X")));
  //    } else {
  //      println("connection failed !");
  //    }
  //  }
  //}
}
