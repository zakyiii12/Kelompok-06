Eye e1;
void setup() {  size(600, 600);
  noStroke();  e1 = new Eye(width/2, height/2 - 55, 140);
}
void draw() {  background(51);
  noStroke();  e1.update(mouseX, mouseY);
  fill(#05FAE3);  ellipse(width/2, height/2, 300, 280);
  stroke(255);
  triangle(width/2 - 30, height/2 + 75, width/2 - 25, height/2 + 67, width/2 - 20, height/2 + 75);  triangle(width/2 + 30, height/2 + 75, width/2 + 25, height/2 + 67, width/2 + 20, height/2 + 75);
    noStroke();
  fill(255, 0, 0);  arc(width/2, height/2 + 75, 30, 50, 0, PI);
    stroke(#FA4A19);
  strokeWeight(7);  line(width/2 - 45, height/2 + 75, width/2 + 45, height/2 + 75);
   e1.display();
  fill(#81BAFF);
  beginShape();  vertex(width/2 - 45, height/2 + 132);
  vertex(width/2 - 20, height/2 + 137);  vertex(width/2 - 10, height/2 + 170);
  vertex(width/2 - 55, height/2 + 170);  endShape(CLOSE);
  beginShape();
  vertex(width/2 + 45, height/2 + 132);
  vertex(width/2 + 20, height/2 + 137);  vertex(width/2 + 10, height/2 + 170);
  vertex(width/2 + 55, height/2 + 170);  endShape(CLOSE);
  
}
class Eye {
  int x, y;  int size;
  float angle = 0.0;
  Eye(int tx, int ty, int ts) {    x = tx;
    y = ty;    size = ts;
  }
  void update(int mx, int my) {    angle = atan2(my-y, mx-x);
  }
  void display() {    noStroke();
    pushMatrix();    translate(x, y);
    fill(255);    ellipse(0, 0, size, size);
    rotate(angle);    fill(0);
    ellipse(size/8, 0, size/2, size/2);    popMatrix();
  }}
