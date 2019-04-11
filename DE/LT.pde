class LoadTerrain {

  ArrayList<PVector> hillsmap_1 = new ArrayList();
  ArrayList<PVector> hillsmap_2 = new ArrayList();
  ArrayList<PVector> hillsmap_3 = new ArrayList();
  ArrayList<PVector> riversmap_1 = new ArrayList();
  ArrayList<PVector> riversmap_2 = new ArrayList();
  ArrayList<PVector> riversmap_3 = new ArrayList();

  void load() {
    db.query("SELECT * FROM Hills");

    while (db.next()) {
      if (db.getInt("Map_id") == 1) {
        hillsmap_1.add(new PVector(db.getFloat("X"), db.getFloat("Y")));
        //println("first hill");
      } else if (db.getInt("Map_id") == 2) {
        hillsmap_2.add(new PVector(db.getFloat("X"), db.getFloat("Y")));
        //println("second hill");
      } else if (db.getInt("Map_id") == 3) {
        hillsmap_3.add(new PVector(db.getFloat("X"), db.getFloat("Y")));
        //println("third hill");
      }
    }
    println("hill map 1 elements = " +hillsmap_1.size());
    println("hill map 2 elements = " +hillsmap_2.size());
    println("hill map 3 elements = " +hillsmap_3.size());
    
    db.query("SELECT * FROM Rivers");
    
    while(db.next()){
      if (db.getInt("Map_id") == 1) {
        riversmap_1.add(new PVector(db.getFloat("X"), db.getFloat("Y")));
        //println("first river");
      } else if (db.getInt("Map_id") == 2) {
        riversmap_2.add(new PVector(db.getFloat("X"), db.getFloat("Y")));
        //println("second river");
      } else if (db.getInt("Map_id") == 3) {
        riversmap_3.add(new PVector(db.getFloat("X"), db.getFloat("Y")));
        //println("third river");
      }
    }
    println("river map 1 elements = " +riversmap_1.size());
    println("river map 2 elements = " +riversmap_2.size());
    println("river map 3 elements = " +riversmap_3.size());
  }
}
