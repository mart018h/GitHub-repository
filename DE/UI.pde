class UserInterface {

  void mainmenuInitiate() {
    b1 = new IFButton ("New Game", 2, 2);
    b2 = new IFButton ("Terrain Editor", 2, 2);
    b3 = new IFButton ("Quit", 2, 2);

    c.add (b1);
    c.add (b2);
    c.add (b3);
  }

  void mainmenuDisplay() {
  }

  void campaignInitiate() {
    b10 = new IFButton (" ", 2, 2);
    c.add (b10);
  }

  void campaignDisplay() {
    noStroke();
    fill(200, 0, 50);
    beginShape();
    vertex(0, 0);
    vertex(width, 0);
    vertex(width, height);
    vertex(0, height);
    endShape(CLOSE);

    fill(255);
    beginShape();
    vertex(20, 50);
    vertex(50, 20);
    vertex(width-50, 20);
    vertex(width-20, 50);
    vertex(width-20, height-50);
    vertex(width-50, height-20);
    vertex(50, height-20);
    vertex(20, height-50);
    endShape(CLOSE);
  }

  void leveleditorInitiate() {
    b4 = new IFButton ("New Hill", 2, 2);
    b5 = new IFButton ("New River", 2, 2);
    b6 = new IFButton ("Back", 2, 2);

    c.add (b4);
    c.add (b5);
    c.add (b6);
  }

  void leveleditorDisplay() {
  }

  void leveleditorselectInitiate() {
    b7 = new IFButton ("HIlly Terrain", 2, 2);
    b8 = new IFButton ("Flat Terrain", 2, 2);
    b9 = new IFButton ("Moderate Terrain", 2, 2);
    b11 = new IFButton ("Back", 2, 2);
    
    c.add (b7);
    c.add (b8);
    c.add (b9);
    c.add (b11);
  }

  void leveleditorselectDisplay() {
    textAlign(CENTER);
    stroke(30);
    fill(0);
    text("If you choose to edit a Terrain it will permanently be erased", width/2, height*7/8);
  }

  void battleInitiate() {
  }

  void battleDisplay() {
  }
}
