class LoadUnit {
  String unitOwner;
  String unitType;
  int unitSize;
  int soldierAtk;
  int soldierDef;
  int soldierSpe;
  int soldierHP;
  int soldierW;
  int soldierH;
  int unitID;
  int r;
  int g;
  int b;

  void getUnits() {
    db.query("SELECT * FROM Player_Army");
    unitOwner = "roman";
    while (db.next()) {
      unitSize = db.getInt("unitsize");
      soldierAtk = db.getInt("soldierAtk");
      soldierDef = db.getInt("soldierDef");
      soldierSpe = db.getInt("soldierSpe");
      soldierHP = db.getInt("soldierHP");
      soldierW = db.getInt("soldierW");
      soldierH = db.getInt("soldierH");
      unitID = db.getInt("r_unit_id");
      r = db.getInt("r");
      g = db.getInt("g");
      b = db.getInt("b");

      gm.u.newUnit(unitID, unitOwner, unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b);
    }

    db.query("SELECT * FROM Viking_Army");
    unitOwner = "viking";
    while (db.next()) {
      unitSize = db.getInt("unitsize");
      soldierAtk = db.getInt("soldierAtk");
      soldierDef = db.getInt("soldierDef");
      soldierSpe = db.getInt("soldierSpe");
      soldierHP = db.getInt("soldierHP");
      soldierW = db.getInt("soldierW");
      soldierH = db.getInt("soldierH");
      unitID = db.getInt("v_unit_id");
      r = db.getInt("r");
      g = db.getInt("g");
      b = db.getInt("b");

      gm.u.newUnit(unitID, unitOwner, unitSize, soldierAtk, soldierDef, soldierSpe, soldierHP, soldierW, soldierH, r, g, b);
    }
    println("soldiers " + gm.u.soldierList.size());
  }
}
