class Unit {
  Soldier s;

  //unit values
  ArrayList <Soldier> soldierList = new ArrayList();

  //unit formation
  int rows;
  int cols;

  //faktor som bruges til at ændre rettningen af hvordan soldater bliver placeret. mod venstre for player units, og mod højre for modstander units.
  int mineORyours;

  int startx;
  int starty;
  int Width;
  int Height;
  int unitId;

  //afstand mellem soldater i et unit.
  int yoffset;
  int xoffset;

  FBox soldier;

  void newUnit(int unit_id, String unit_owner, int unit_size, int soldier_atk, int soldier_def, int soldier_spe, int soldier_hp, int soldier_w, int soldier_h, int r, int g, int b) {
    println("unitOwner" + unit_owner);
    println("unitSize = " + unit_size);

    if (unit_owner == "roman") {
      println("Roman");
      mineORyours = 1;
      startx = 210;
      unitId = db.getInt("r_unit_id");
    } else if (unit_owner == "viking") {
      println("Viking");
      mineORyours = -1;
      startx = 990;
      unitId = db.getInt("v_unit_id");
    }
    println("unitId = " + unitId);

    rows = 10;
    cols = unit_size / rows;
    Width = soldier_w;
    Height = soldier_h;
    starty = 60;
    yoffset = 5;
    xoffset = 5;

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        s = new Soldier(unit_id, unit_owner, soldier_atk, soldier_def, soldier_spe, soldier_hp, soldier_w, soldier_h, r, g, b, startx - j * mineORyours * (Width + xoffset), starty + (unitId-1) * rows * 12 + i * (Height + yoffset));
        world.add(s.sb);
        soldierList.add(s);
      }
    }
    println("soldiers " + soldierList.size());
  }
}
