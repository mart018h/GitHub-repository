class Pointer {
  PVector pointpos;

  Pointer() {
  }

  void display() {
    if (mousePressed) {
      pointpos = new PVector(mouseX, mouseY);
    }
    ellipseMode(CENTER);
    stroke(150, 100, 10);
    fill(150, 100, 0,100);
    if (pointpos!=null) ellipse(pointpos.x, pointpos.y, 30, 30);
  }
}
