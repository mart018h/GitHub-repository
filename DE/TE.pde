class TerrainEditor {
  TerrainPoint tp;

  ArrayList<TerrainPoint> points;
  int mapID;

  void terrainInitiate() {

    points = new ArrayList<TerrainPoint>();
  }

  void terrainDisplay() {
    //th.display();
    //tr.display();
    
    for (TerrainPoint tp : points) {
      tp.display();
    }
  }

  void mousePressed() {
    points.add(new TerrainPoint(mouseX, mouseY));
    println("amount of points = " + points.size());
  }

  void keyPressed() {

  }
}
