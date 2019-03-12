class Unit { //<>// //<>//
  Soldier s;
  UnitType ut;
  ArrayList<Soldier> soldierlist = new ArrayList<Soldier>();
  int rows;
  int columns;

  Unit() {
    columns = 5;
    rows = 3;
  }

  void position(float x, float y) {
    for (int r=0; r < rows; r++) {
      for (int c=0; c < columns; c++) {
        ut = new UnitType();
        soldierlist.add(new Soldier(20*c +x, 20*r +y));
      }
    }
  }

  void display() {
    for (Soldier s : soldierlist) {
      s.display();
    }
    //println(soldierlist.size()+" "+"soldiers");
  }

  void update() {
    for (Soldier s : soldierlist) {
      s.update();
    }
  }
}
