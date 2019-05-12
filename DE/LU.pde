class LoadUnit {
  String unitOwner;
  String unitType;
  String unitId;

  void getUnits() {
    db.query("SELECT * FROM Player_Army");
    unitOwner = "player_unit";
    while (db.next()) {
      unitType = db.getString("Unit_type");
      //unitId = db.getString("unit_id");
      gm.u.newUnit(unitOwner, unitType);
    }
    
    db.query("SELECT * FROM Opponent_Army");
    unitOwner = "opponent_unit";
    while (db.next()) {
      unitType = db.getString("Unit_type");
      //unitId = db.getString("unit_id");
      gm.u.newUnit(unitOwner, unitType);
    }
  }
}
