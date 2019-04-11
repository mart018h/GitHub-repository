class UserInterface {

  void initiate(){
  }
  
  void display(){
    noStroke();
    fill(200,0,50);
    beginShape();
    vertex(0,0);
    vertex(width,0);
    vertex(width,height);
    vertex(0,height);
    endShape(CLOSE);
    
    fill(255);
    beginShape();
    vertex(20,50);
    vertex(50,20);
    vertex(width-50,20);
    vertex(width-20,50);
    vertex(width-20,height-50);
    vertex(width-50,height-20);
    vertex(50,height-20);
    vertex(20,height-50);
    endShape(CLOSE);
  }
}
