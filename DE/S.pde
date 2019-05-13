class Soldier {
  FBox sb;
  int Width;
  int Height;
  int unitId;
  int yoffset;
  int xoffset;
  int HP;
  int ATK;
  int DEF;
  int SPEED;
  int R;
  int G;
  int B;
  int posX;
  int posY;
  int unitID;
  boolean controlable;

  Soldier(int unit_id, String unit_owner, int soldier_atk, int soldier_def, int soldier_spe, int soldier_hp, int soldier_w, int soldier_h, int r, int g, int b, int pos_x, int pos_y) {
    HP = soldier_hp;
    ATK = soldier_atk;
    DEF = soldier_def;
    SPEED = soldier_spe;
    Width = soldier_w;
    Height = soldier_h;
    unitID = unit_id;
    R = r;
    G = g;
    B = b;
    posX = pos_x;
    posY = pos_y;
    if (unit_owner == "roman") {
      controlable = true;
    } else if (unit_owner == "viking") {
      controlable = false;
    }
    sb = new FBox(Width, Height);
    sb.setPosition(posX, posY);

    sb.setFill(R, G, B);
  }
}
