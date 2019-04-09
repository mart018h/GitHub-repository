class Database {

  void initiate() {
    db.query("CREATE TABLE IF NOT EXISTS Maps (Map_id INTEGER PRIMARY KEY AUTOINCREMENT, Name STRING)");
    db.query("CREATE TABLE IF NOT EXISTS Hills (X FLOAT, Y FLOAT, Map_id INTEGER)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (X FLOAT, Y FLOAT,Map_id INTEGER)");
  }

  void keyPressed() {
    
    //deletes values in tables
    if (key == 77) { //Shift + M
      db.query("DELETE FROM Maps");
      db.query("DELETE FROM Hills");
      db.query("DELETE FROM Rivers");
      println("Databases cleared");
    }

    //deletes tables for full restart
    if (key == 78) { //Shift + N
      db.query("drop table if exists Maps");
      db.query("drop table if exists Hills");
      db.query("drop table if exists Rivers");
      println("Databases dropped");
    }

    if (key == 49) { //1
      tm.maketerrain = true;
      tm.mapName = "Level 1";
      tm.mapID = 1;
      println("Map ID = 1");
      db.query("INSERT INTO Maps (Name) VALUES ('%s')", tm.mapName);
    } else if (key == 50) { //2
      tm.maketerrain = true;
      tm.mapName = "Level 2";
      tm.mapID = 2;
      println("Map ID = 2");
      db.query("INSERT INTO Maps (Name) VALUES ('%s')", tm.mapName);
    } else if (key == 51) { //3
      tm.maketerrain = true;
      tm.mapName = "Level 3";
      tm.mapID = 3;
      println("Map ID = 3");
      db.query("INSERT INTO Maps (Name) VALUES ('%s')", tm.mapName);
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
