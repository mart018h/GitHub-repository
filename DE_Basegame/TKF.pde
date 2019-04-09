class TerrainKeyFunctions {

  void keyPressed() {
    tm.th.keyPressed();
    tm.tr.keyPressed();
    d.keyPressed();
  }

  void mousePressed() {
    if ((tm.th.makehill || tm.tr.makeriver) && tm.maketerrain) {
      tm.points.add(new TerrainPoint(mouseX, mouseY));
    }
  }
}
