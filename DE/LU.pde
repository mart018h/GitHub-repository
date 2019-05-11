class LoadUnit {
  String unitType;
  String unitId;

  void getplayerUnits() {
    db.query("SELECT * FROM Player_Army");

    while (db.next()) {
      unitType = db.getString("Unit_type");
      unitId = db.getString("unit_id");
      gm.bm.u.newUnit(unitType, unitId);
    }
  }

  void getopponentUnits() {
    db.query("SELECT * FROM Opponent_Army");

    while (db.next()) {
      unitType = db.getString("Unit_type");
      unitId = db.getString("unit_id");
      gm.bm.u.newUnit(unitType, unitId);
    }
  }
}
