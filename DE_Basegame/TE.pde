class TerrainEditor {
  TerrainHill th;
  TerrainRiver tr;
  TerrainPoint tp;

  ArrayList<TerrainPoint> points;
  int mapID;
  String mapName;
  boolean maketerrain = false;

  void terrainInitiate() {
    th = new TerrainHill();
    tr = new TerrainRiver();

    points = new ArrayList<TerrainPoint>();
  }

  void terrainDisplay() {
    th.display();
    tr.display();
    for (TerrainPoint tp : points) {
      tp.display();
    }
  }

  void mousePressed() {
    points.add(new TerrainPoint(mouseX, mouseY));
  }

  void keyPressed() {
    th.keyPressed();
    tr.keyPressed();
  }
}
