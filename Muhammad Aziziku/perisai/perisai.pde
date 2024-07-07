void setup() {
  size(400, 400);
  background(220);
  smooth();
  noStroke();
}

void draw() {
  translate(width/2, height/2);
  scale(1.5);
  
  // Perisai
  fill(0);
  beginShape();
  vertex(-60, -80);
  vertex(60, -80);
  vertex(80, 0);
  vertex(0, 100);
  vertex(-80, 0);
  endShape(CLOSE);
  
  // Garis putih perisai
  fill(220);
  beginShape();
  vertex(-50, -70);
  vertex(50, -70);
  vertex(70, 0);
  vertex(0, 90);
  vertex(-70, 0);
  endShape(CLOSE);
  
  // Pedang
  fill(0);
  rect(-5, -120, 10, 240);
  ellipse(0, -120, 20, 20);
  rect(-30, -90, 60, 10);
  
  noLoop();
}
