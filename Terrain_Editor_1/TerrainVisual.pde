class TerrainVisual {

  void display() {

    stroke(0);
    fill(0, 150, 0, 150);
    s = createShape();
    s.beginShape();
    for (TerrainPoint tp : points) {
      s.vertex(tp.pointpos.x, tp.pointpos.y);
    }
    s.endShape(CLOSE);
    
    shape(s,0,0);
  }
}
