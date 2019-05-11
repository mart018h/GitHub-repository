class Unit {
  //player units
  String Sword_Legion_I = "Sword_Legion_I";
  String Sword_Legion_II = "Sword_Legion_II";
  String Sword_Legion_III = "Sword_Legion_III";

  String Spear_Legion_I = "Spear_Legion_I";
  String Spear_Legion_II = "Spear_Legion_II";

  String Archer_I = "Archer_I";
  String Archer_II = "Archer_II";

  String Horsemen_I = "Horsemen_I";
  String Horsemen_II = "Horsemen_I";

  //opponent units


  //unit values
    //ArrayList <> units = new ArrayList();
  ArrayList <FBox> soldiers = new ArrayList();
  int unitSize;
  FBox b;
  
  void newUnit(String unit_owner, String unit_id){
    pushMatrix();
    if (unit_owner == "player_unit") {
      translate(210, 70);
    } else if (unit_owner == "opponent_unit") {
      translate(990, 70);
      rotate(PI);
    }

    for (int i = 0; i < unitSize; i++) {
      b = new FBox(20, 20);
      b.addToWorld(world);
      b.setPosition(i * 20, i * unitSize);
      soldiers.add(b);
    }
    popMatrix();
  }
  
}
