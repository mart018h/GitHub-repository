class Troops {
  Unit u;
  ArrayList<Unit> unitlist = new ArrayList<Unit>();
  int armysize;

  void initialize() {
    //armysize = db.getInt("armysize");

    p = new Pointer();
    for (int i=0; i< 3; i++) {
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
