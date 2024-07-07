float angle = 0;
boolean isOn = false;
float speed = 0;
color baseColor, cageColor, bladeColor;

void setup() {
  size(400, 400);
  baseColor = color(100, 100, 100);
  cageColor = color(180, 180, 180);
  bladeColor = color(220, 220, 220);
}

void draw() {
  background(255);
  
  // Gambar tiang kipas
  fill(baseColor);
  rect(190, 300, 20, 100);
  
  // Gambar base kipas
  ellipse(200, 300, 60, 20);
  
  translate(200, 200);
  
  // Gambar sangkar kipas
  noFill();
  stroke(0);
  strokeWeight(5);
  ellipse(0, 0, 250, 250);
  for (int i = 0; i < 8; i++) {
    pushMatrix();
    rotate(TWO_PI * i / 8);
    line(0, -125, 0, 125);
    popMatrix();
  }
  
  // Putar kipas
  rotate(angle);
  
  // Gambar baling-baling kipas
  noStroke();
  fill(bladeColor);
  for (int i = 0; i < 3; i++) {
    pushMatrix();
    rotate(TWO_PI * i / 3);
    ellipse(0, -60, 40, 120);
    popMatrix();
  }
  
  // Gambar pusat kipas
  fill(baseColor);
  ellipse(0, 0, 30, 30);
  
  // Update kecepatan dan sudut
  if (isOn) {
    speed = lerp(speed, 0.15, 0.02);
  } else {
    speed = lerp(speed, 0, 0.02);
  }
  angle += speed;
}

void mousePressed() {
  isOn = !isOn;
}
