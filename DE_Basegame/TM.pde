class TerrainManager {
  TerrainKeyFunctions tkf;
  TerrainHill th;
  TerrainRiver tr;
  TerrainPoint tp;

  ArrayList<TerrainPoint> points;
  int mapID;
  String mapName;
  boolean maketerrain = false;

  void terrainInitiate() {
    tkf = new TerrainKeyFunctions();
    th = new TerrainHill();
    tr = new TerrainRiver();

    points = new ArrayList<TerrainPoint>();
  }

  void terrainDisplay() {
    background(255, 0); // jeg sætter alpha til 0 for at kunne udnytte alpha effekten til gameplay
    //tv.display();
    th.display();
    tr.display();
    for (TerrainPoint tp : points) {
      tp.display();
    }
  }

  void mousePressed() {
    tkf.mousePressed();
  }

  void keyPressed() {
    tkf.keyPressed();
  }
}
