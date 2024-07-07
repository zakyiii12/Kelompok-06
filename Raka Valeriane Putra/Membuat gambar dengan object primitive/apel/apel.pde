void setup() {
  size(400, 400);
  smooth();
  noLoop();
}

void draw() {
  background(240);
  
  // Bayangan
  noStroke();
  fill(200, 200, 200, 100);
  ellipse(210, 340, 160, 20);
  
  // Badan apel
  noStroke();
  fill(220, 20, 60); // Merah cherry
  ellipse(200, 220, 200, 180);
  
  // Highlight
  fill(240, 80, 100);
  ellipse(150, 180, 80, 70);
  
  // Bayangan apel
  fill(180, 20, 40);
  ellipse(230, 250, 140, 120);
  
  // Tangkai apel
  stroke(101, 67, 33);
  strokeWeight(6);
  curve(150, 50, 200, 140, 210, 130, 250, 50);
  
  // Daun
  fill(34, 139, 34);
  noStroke();
  beginShape();
  curveVertex(180, 130);
  curveVertex(180, 130);
  curveVertex(140, 100);
  curveVertex(180, 70);
  curveVertex(220, 100);
  curveVertex(180, 130);
  curveVertex(180, 130);
  endShape();
  
  // Kilau daun
  fill(150, 200, 150);
  beginShape();
  curveVertex(170, 110);
  curveVertex(170, 110);
  curveVertex(150, 95);
  curveVertex(170, 85);
  curveVertex(190, 95);
  curveVertex(170, 110);
  curveVertex(170, 110);
  endShape();
  
  // Titik-titik pada apel
  stroke(150, 0, 0);
  strokeWeight(1);
  for (int i = 0; i < 50; i++) {
    point(random(130, 270), random(160, 280));
  }
}
