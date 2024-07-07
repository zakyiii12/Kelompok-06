void setup() {
  size(800, 600);
  background(255);
  drawFish();
}

void drawFish() {
  // Warna tubuh ikan
  fill(100, 150, 255);
  noStroke();
  
  // Tubuh ikan (ellips)
  ellipse(width/2, height/2, 300, 150);
  
  // Sirip ekor (segitiga)
  beginShape();
  vertex(width/2 - 150, height/2);
  vertex(width/2 - 200, height/2 - 50);
  vertex(width/2 - 200, height/2 + 50);
  endShape(CLOSE);
  
  // Sirip atas (segitiga)
  beginShape();
  vertex(width/2, height/2 - 75);
  vertex(width/2 + 50, height/2 - 125);
  vertex(width/2 + 75, height/2 - 75);
  endShape(CLOSE);
  
  // Sirip bawah (segitiga)
  beginShape();
  vertex(width/2, height/2 + 75);
  vertex(width/2 + 50, height/2 + 125);
  vertex(width/2 + 75, height/2 + 75);
  endShape(CLOSE);
  
  // Mata (ellips kecil)
  fill(0);
  ellipse(width/2 + 100, height/2 - 25, 20, 20);
  
  // Mulut (garis lengkung)
  stroke(0);
  strokeWeight(2);
  noFill();
  arc(width/2 + 120, height/2 + 20, 50, 20, 0, PI);
}

void draw() {
  // Tidak ada pengulangan di draw untuk gambar statis
}
