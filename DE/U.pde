class Unit {
  //player units
  String L_I = "Sword_Legion_I";
  String L_II = "Sword_Legion_II";
  String L_III = "Sword_Legion_III";

  String S_I = "Spears_I";
  String S_II = "Spears_II";

  String A_I = "Archer_I";
  String A_II = "Archer_II";

  String H_I = "Horsemen_I";
  String H_II = "Horsemen_I";

  //opponent units
  String Berserker = "Berserker";
  String Pillager = "Pillager";
  String Hunter = "Hunter";

  //unit values
  //ArrayList <> units = new ArrayList();
  ArrayList <FBox> soldiers = new ArrayList();
  //int unitSize;
  int rows;
  int cols;
  int placefactor;
  int startx;
  int starty;
  int Width;
  int Height;
  int unitId;
  int yoffset;
  int xoffset;
  int HP;
  int ATK;
  int DEF;
  int SPEED;
  int R;
  int G;
  int B;
  boolean DoIt = true;
  FBox soldier;

  void newUnit(String unit_owner, int unit_size, int soldier_atk, int soldier_def, int soldier_spe, int soldier_hp, int soldier_w, int soldier_h, int r, int g, int b) {
    println("unitOwner" + unit_owner);
    println("unitSize = " + unit_size);

    if (unit_owner == "roman") {
      println("Roman");
      placefactor = 1;
      startx = 210;
      unitId = db.getInt("r_unit_id");
    } else if (unit_owner == "viking") {
      println("Viking");
      placefactor = -1;
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
    R = r;
    G = g;
    B = b;
    
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        soldier = new FBox(Width, Height);
        HP = soldier_hp;
        soldiers.add(soldier);
        world.add(soldier);
        soldier.setPosition(startx - j * placefactor * (Width + xoffset), starty + (unitId-1) * rows * 12 + i * (Height + yoffset));
        soldier.setFill(R,G,B);
      }
    }
    println("soldiers " + soldiers.size());
  }
}
