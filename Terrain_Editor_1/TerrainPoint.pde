class TerrainPoint {
  
  PVector pointpos;
  
  TerrainPoint(int x, int y){
    
    pointpos = new PVector(x,y);
    
  }
  
  void display(){
    rectMode(CENTER);
    stroke(0);
    fill(151);
    rect( pointpos.x, pointpos.y,10,10);
  }
  
}
