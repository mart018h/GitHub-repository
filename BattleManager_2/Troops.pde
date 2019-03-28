class Troops {
  Unit u;
  ArrayList<Unit> unitlist = new ArrayList<Unit>();
  int armysize;

  void initialize() {
    db.query("SELECT * FROM PC WHERE save_id=(SELECT MAX(save_id) FROM PC)");
    armysize = db.getInt("armysize");
    println("Armysize = " + armysize);
  
    p = new Pointer();
    for (int i=0; i< armysize; i++) {
      u = new Unit();
      unitlist.add(u);
    }

    for (int i=0; i < unitlist.size(); i++) {
      unitlist.get(i);
      u.position(i*200+15, 15);
    }
  }

  void run() {
    background(151);
    //println(unitlist.size()+" "+"Units");
    p.display();
    u.display();
    u.update();
  }
}
