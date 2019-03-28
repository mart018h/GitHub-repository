class Soldier {

  float speed;
  float meleeAttack;
  float meleeDamage;
  float meleeDefence;
  float armour;
  float rangedAttack;
  float rangedDamage;
  float directionAngle;
  int r;
  int g;
  int b;
  PVector soldierpos;
  PVector soldiermove;


  Soldier(float x, float y,int R,int G, int B) { 
    soldierpos = new PVector(x, y);
    r = R;
    g = G;
    b = B;
    directionAngle = 0;
  }

  void update() {
    if (p.pointpos!=null) {
      soldiermove = PVector.sub(p.pointpos, soldierpos).div(100);
      directionAngle = PVector.angleBetween(soldiermove,soldierpos);
      
      soldierpos = PVector.add(soldierpos, soldiermove);
      //println(directionAngle);
    }
  }

  void display() {
    //pushMatrix();
    //translate(soldierpos.x,soldierpos.y);
    //rotate(directionAngle);
    rectMode(CENTER);
    stroke(0);
    fill(r, g, b);
    rect(soldierpos.x, soldierpos.y, 15, 15);
    //popMatrix();
  }
}
