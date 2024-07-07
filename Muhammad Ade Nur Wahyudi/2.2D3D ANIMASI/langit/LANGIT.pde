void setup() {
  size(800, 600);
  frameRate(30);
}

void draw() {
  background(135, 206, 235);  // Warna langit biru muda

  // Gambar awan
  drawCloud(width/2 - 150, height/2 - 100);
  drawCloud(width/2 + 150, height/2 - 150);

  // Setiap beberapa frame, gambar petir
  if (frameCount % 60 < 10) {
    drawLightning(width/2, height/2);
  }

  // Efek hujan
  drawRain();
}

void drawCloud(float x, float y) {
  fill(150);  // Warna abu-abu untuk awan
  noStroke();
  
  ellipse(x, y, 150, 100);
  ellipse(x + 50, y, 150, 100);
  ellipse(x - 50, y, 150, 100);
  ellipse(x + 25, y - 25, 150, 100);
  ellipse(x - 25, y - 25, 150, 100);
}

void drawLightning(float x, float y) {
  stroke(255, 255, 0);
  strokeWeight(14);
  
  float startX = x;
  float startY = y;
  
  for (int i = 0; i < 10; i++) {
    float endX = startX + random(-30, 30);
    float endY = startY + random(20, 40);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void drawRain() {
  stroke(0, 0, 255);  // Warna biru untuk hujan
  strokeWeight(1);
  
  for (int i = 0; i < 100; i++) {
    float x = random(width);    // Koordinat x acak di kanvas
    float y = random(height);   // Koordinat y acak di kanvas
    line(x, y, x, y + 10);      // Gambar garis ke bawah untuk efek hujan
  }
}
