class UserInterface {

  void uimainmenuInitiate() {
    b1 = new IFButton ("New Game", 2, 2);
    b2 = new IFButton ("Terrain Editor", 2, 2);
    b3 = new IFButton ("Quit", 2, 2);

    c.add (b1);
    c.add (b2);
    c.add (b3);
  }

  void uimainmenuDisplay() {
  }

  void uicampaignInitiate() {
    b10 = new IFButton (" ", 2, 2);
    b12 = new IFButton ("back", 2, 2);

    c.add (b10);
    c.add (b12);
  }

  void uicampaignDisplay() {
    fill(0, 0, 200, 150);
    rect(0, 0, width, height);

    fill(0, 200, 0);
    beginShape();
    vertex(105, 348);
    vertex(130, 248);
    vertex(207, 179);
    vertex(261, 112);
    vertex(349, 104);
    vertex(458, 66);
    vertex(577, 80);
    vertex(678, 59);
    vertex(772, 83);
    vertex(871, 86);
    vertex(947, 69);
    vertex(1097, 116);
    vertex(1067, 188);
    vertex(1064, 302);
    vertex(989, 377);
    vertex(952, 481);
    vertex(941, 591);
    vertex(846, 636);
    vertex(749, 618);
    vertex(676, 580);
    vertex(663, 498);
    vertex(724, 448);
    vertex(754, 392);
    vertex(728, 339);
    vertex(653, 322);
    vertex(595, 374);
    vertex(577, 448);
    vertex(586, 515);
    vertex(503, 585);
    vertex(413, 614);
    vertex(329, 624);
    vertex(241, 613);
    vertex(171, 567);
    vertex(121, 484);
    vertex(73, 416);
    endShape();
  }

  void uileveleditorInitiate() {
    b4 = new IFButton ("New Hill", 2, 2);
    b5 = new IFButton ("New River", 2, 2);
    b6 = new IFButton ("Back", 2, 2);

    c.add (b4);
    c.add (b5);
    c.add (b6);
  }

  void uileveleditorDisplay() {
  }

  void uileveleditorselectInitiate() {
    b7 = new IFButton ("HIlly Terrain", 2, 2);
    b8 = new IFButton ("Flat Terrain", 2, 2);
    b9 = new IFButton ("Moderate Terrain", 2, 2);
    b11 = new IFButton ("Back", 2, 2);

    c.add (b7);
    c.add (b8);
    c.add (b9);
    c.add (b11);
  }

  void uileveleditorselectDisplay() {
    textAlign(CENTER);
    stroke(30);
    fill(0);
    text("If you choose to edit a Terrain it will permanently be erased", width/2, height*7/8);
  }

  void uibattleInitiate() {
    
  }

  void uibattleDisplay() {
    strokeWeight(5);
    stroke(0, 0, 200);
    noFill();
    rect(20, 50, 200, 600);

    stroke(200, 0, 0);
    rect(980, 50, 200, 600);
  }
}
