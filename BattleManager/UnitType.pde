class UnitType {
  String a;
  
  UnitType() {
  }

  void run() {
    db.query("SELECT * FROM PCArmy)");
    while(db.next()){
      a = db.getString("type");
      //if (a == "horse") {
      //  R = 250;
      //  G = 0;
      //  B = 0;
      //} else if (a == "archer") {
      //  R = 0;
      //  G = 250;
      //  B = 0;
      //} else if (a == "swordman") {
      //  R = 0;
      //  G = 0;
      //  B = 250;
      //}
    }
  }
}
