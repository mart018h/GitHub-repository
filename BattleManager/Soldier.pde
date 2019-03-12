class Soldier {

  float speed;
  float meleeAttack;
  float meleeDamage;
  float meleeDefence;
  float armour;
  float rangedAttack;
  float rangedDamage;
  float R;
  float G;
  float B;
  float directionAngle;

  PVector soldierpos;
  PVector soldiermove;


  Soldier(float x, float y) { 
    soldierpos = new PVector(x, y);
    R = 100;
    G = 100;
    B = 100;
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
    fill(R, G, B);
    rect(soldierpos.x, soldierpos.y, 15, 15);
    //popMatrix();
  }
}
