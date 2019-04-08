class Button {
  
  boolean buttonclicked = false;
  int locX, locY;
  int dimX, dimY;
  int R,G,B;
  String buttonName;

  Button(String name, int x, int y, int X, int Y, int r, int g,int b) {
    locX = x;
    locY = y;
    dimX = X;
    dimY = Y;
    R = r;
    B = g;
    G = b;
    buttonName = name;
  }
  
  void display(){
    rectMode(CENTER);
    textAlign(CENTER,CENTER);
    fill(R,G,B);
    stroke(0);
    rect(locX,locY,dimX,dimY);
    fill(0);
    text(buttonName,locX,locY);
  }
  
  void mousePressed(){
    if((locX-dimX/2 < mouseX) && (mouseX < locX+dimX/2) &&(locY-dimY/2 < mouseY) && (mouseY < locY+dimY/2)){
     buttonclicked = true;
     println("button was clicked");
    } else {
      println("failed");
    }
  }
  
}
