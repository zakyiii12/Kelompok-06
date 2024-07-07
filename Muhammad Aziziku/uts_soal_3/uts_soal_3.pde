void setup() {
  size(350, 350);
  strokeWeight(8);
  stroke(255);
}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  rotate(radians(frameCount));
  fill(#FF3B42);
  for (int i = 0; i < 8; i++) {
    ellipse(0, -70, 60, 60);
    rotate(radians(360/8));
  }

  fill(#FFFF6C);
  ellipse(0, 0, 100, 100);
}
