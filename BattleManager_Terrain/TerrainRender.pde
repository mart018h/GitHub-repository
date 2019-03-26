class TerrainRender {

  int cols, rows;
  int scl = 20;
  int w = 600;
  int h = 600;
  float[][] terrain;
  float flying = 0;
  float angle = 0;

  void initiate() {
    cols = w /scl;
    rows = h / scl;
    terrain = new float[cols][rows];
  }

  void run() {
    float yoff = 0; //y-akse offset
    for (int y = 0; y < rows; y++) {
      float xoff = 0; //x-akse offset
      for (int x = 0; x < cols; x++) {
        if (db != null) {
          terrain[x][y] = map(noise(xoff, yoff), 0, db.getFloat("factor"), -db.getInt("range"), db.getInt("range")); //noise, bund
          xoff += 0.2;
          //println("IT'S ALIVE!");
        } else {
          println("Der er fejl");
        }
      }
      yoff += 0.2;
    }
    background(0);
    stroke(255);
    fill(0, 100, 0);

    translate(width/2, height/2);
    rotateX(PI/3);
    rotateZ(angle);
    angle += 0.005;

    translate(-w/2, -h/2);
    for (int y=0; y < rows-1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x=0; x < cols; x++) {
        vertex(x*scl, y*scl, terrain[x][y]);
        vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
      }
      endShape();
    }
  }
}
