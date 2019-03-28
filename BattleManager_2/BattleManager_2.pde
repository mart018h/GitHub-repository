//database library
import de.bezier.data.sql.*;
SQLite db;
//mouse interaktion
Pointer p;
//creating troops
Troops t;
Oparmy op;
void setup() {
  size(650, 600);
  //database laves først for at alle classer bare kan fylde i
  op = new Oparmy();
  db = new SQLite( this, "DD_Saves.db" );
  if (db.connect()) {
    db.query("CREATE TABLE IF NOT EXISTS PC (save_id INTEGER PRIMARY KEY AUTOINCREMENT,armysize INTEGER, gold INTEGER, turn INTERGER)");
    db.query("INSERT INTO PC (armysize, gold, turn) VALUES (3, 500, 1)");
    db.query("SELECT * FROM PC WHERE save_id=(SELECT MAX(save_id) FROM PC)");
    println("Army size = " + db.getInt("armysize"));
    println("Gold amount = " + db.getInt("gold"));
    println("Turn number = " + db.getInt("turn"));

    db.query("CREATE TABLE IF NOT EXISTS PCArmy (save_id INTEGER PRIMARY KEY AUTOINCREMENT, type STRING)");
    db.query("INSERT INTO PCArmy (type) VALUES ('horse')");
    db.query("SELECT * FROM PCArmy");
    while (db.next()) {
      println("Unit type = " + db.getString("type"));
      //println("Armyslot2 number = " + db.getString("armyslot2"));
      //println("Armyslot3 number = " + db.getString("armyslot3"));
    }
    op.run();
  }
  t = new Troops();
  t.initialize();
}

void draw() {
  t.run();
}
