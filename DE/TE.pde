class TerrainEditor {
  TerrainPoint tp;

  ArrayList<TerrainPoint> points;
  int mapID;
  int b4x;
  int b4y;
  int b4width;
  int b4height;
  int b5x;
  int b5y;
  int b5width;
  int b5height;
  int b6x;
  int b6y;
  int b6width;
  int b6height;

  void terrainInitiate() {
    points = new ArrayList<TerrainPoint>();
  }

  void terrainDisplay() {
    for (TerrainPoint tp : points) {
      tp.display();
    }
  }

  void mousePressed() {
    b4x = b4.getX();
    b4y = b4.getY();
    b4width = b4.getWidth();
    b4height = b4.getHeight();
    b5x = b4.getX();
    b5y = b4.getY();
    b5width = b4.getWidth();
    b5height = b4.getHeight();
    b6x = b4.getX();
    b6y = b4.getY();
    b6width = b4.getWidth();
    b6height = b4.getHeight();
    boolean condition1 = ((mouseX < b4x) || (mouseX > b4x + b4width)) && ((mouseY < b4y) || (mouseY > b4y + b4height));
    boolean condition2 = ((mouseX < b5x) || (mouseX > b5x + b5width)) && ((mouseY < b5y) || (mouseY > b5y + b5height));
    boolean condition3 = ((mouseX < b6x) || (mouseX > b6x + b6width)) && ((mouseY < b6y) || (mouseY > b6y + b6height));
    if (condition1 && condition2 && condition3) {
      points.add(new TerrainPoint(mouseX, mouseY));
      println("amount of points = " + points.size());
    }
  }
}
