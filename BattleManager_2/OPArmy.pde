class Oparmy {

  void run() {
    db.query("drop table if exists Oparmy");
    db.query("CREATE TABLE IF NOT EXISTS Oparmy (save_id INTEGER PRIMARY KEY AUTOINCREMENT, Slot1 STRING, Slot2 STRING, Slot3 STRING, Slot4 STRING, Slot5 STRING, Slot6 STRING, Slot7 STRING, Slot8 STRING, Slot9 STRING, Slot10 STRING)");
    db.query("INSERT INTO Oparmy (Slot1, Slot2, Slot3, Slot4, Slot5, Slot6, Slot7, Slot8, Slot9, Slot10) VALUES ('horse','horse','swordman','swordman','swordman','archer','empty','empty','empty','empty')");
    db.query("INSERT INTO Oparmy (Slot1, Slot2, Slot3, Slot4, Slot5, Slot6, Slot7, Slot8, Slot9, Slot10) VALUES ('horse','horse','swordman','swordman','swordman','swordman','archer','archer','empty','empty')");
    db.query("INSERT INTO Oparmy (Slot1, Slot2, Slot3, Slot4, Slot5, Slot6, Slot7, Slot8, Slot9, Slot10) VALUES ('horse','horse','swordman','swordman','swordman','swordman','swordman','archer','archer','archer')");
  }
}
