import de.bezier.data.sql.*;
SQLite db;

Pointer p;
Troops t;

void setup() {
  size(650, 600);
  t = new Troops();
  t.initialize();

  db = new SQLite( this, "DD_Saves.db" );

  if (db.connect()) {
    db.query("CREATE TABLE IF NOT EXISTS saves (save_id INTEGER PRIMARY KEY AUTOINCREMENT,armysize INTEGER , armyslot1 INTEGER, armyslot2 INTEGER, armyslot3 INTERGER)");
    db.query("INSERT INTO saves (armysize, armyslot1, armyslot2, armyslot3) VALUES (3,255,255,255)");
    db.query("SELECT * FROM saves WHERE save_id=(SELECT MAX(save_id) FROM Saves)");
    println("Works");
    println("Army Size = " + db.getInt("armysize")+1);
    println("Armyslot1 number = " + db.getInt("armyslot1"));
    println("Armyslot2 number = " + db.getInt("armyslot2"));
    println("Armyslot3 number = " + db.getInt("armyslot3"));
    //while (db.next()){
    //textSize(26);
    //text(db.getInt("level"),width/2,height/2);
    //}
  }
}

void draw() {
  t.run();
}
