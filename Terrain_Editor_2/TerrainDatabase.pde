class TerrainDatabase {

  void initiate() {
    db.query("drop table if exists Maps");
    db.query("drop table if exists Hills");
    db.query("drop table if exists Rivers");
    db.query("CREATE TABLE IF NOT EXISTS Maps (Map_id INTEGER PRIMARY KEY AUTOINCREMENT, Name STRING)");
    db.query("CREATE TABLE IF NOT EXISTS Hills (X FLOAT, Y FLOAT, Map_id INTEGER)");
    db.query("CREATE TABLE IF NOT EXISTS Rivers (X FLOAT, Y FLOAT,Map_id INTEGER)");
    db.query("INSERT INTO Hills (X,Y, Map_id) VALUES ("+150+","+200+","+1+")");
  }

  void addtoMap() {
    String ATM ="INSERT INTO Maps (Name) VALUES ("+mapName+")";
    db.query(ATM);
  }

  void addtoHills() {
    String ATH = "INSERT INTO Hills (X,Y, Map_id) VALUES ("+tp.pointpos.x+","+tp.pointpos.y+","+mapID+")";
    db.query(ATH);
  }

  void addtoRivers() {
    String ATR = "INSERT INTO Rivers (X,Y, Map_id) VALUES ("+tp.pointpos.x+","+tp.pointpos.y+","+mapID+")";
    db.query(ATR);
  }

  //void getShapes() {
  // db.query("SELECT * FROM Maps, Hills, Rivers WHERE Map_id = "+mapID+" AND Map_id = Hills.Map_id AND Map_id = Rivers.Map_id"); //virker ikke!!!
  //  ArrayList<PVector> list = new ArrayList();

  //  if ( db.connect() )
  //  {
  //    db.query( "SELECT COUNT(*) FROM Shapes" );
  //    db.next();
  //    int x = db.getInt("x");
  //    int y = db.getInt("y") ;

  //    if (x>0 && y>0)
  //      list.add(new PVector( db.getInt("x"), db.getInt("y") ));
  //  } else
  //  {
  //    // connection failed !
  //  }
  //}
}
