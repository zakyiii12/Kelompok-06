void setup() {
  size(800, 600);
  background(135, 206, 235);  // Warna langit biru muda
  drawMountains();
}

void drawMountains() {
  noStroke();

  // Gunung pertama (besar)
  fill(100, 100, 100);  // Warna abu-abu gelap
  beginShape();
  vertex(200, 500);
  vertex(400, 200);
  vertex(600, 500);
  endShape(CLOSE);

  // Gunung kedua (kecil, depan)
  fill(120, 120, 120);  // Warna abu-abu
  beginShape();
  vertex(100, 500);
  vertex(300, 300);
  vertex(500, 500);
  endShape(CLOSE);

  // Salju di puncak gunung besar
  fill(255);  // Warna putih untuk salju
  beginShape();
  vertex(400, 200);
  vertex(370, 250);
  vertex(430, 250);
  endShape(CLOSE);

  // Salju di puncak gunung kecil
  fill(255);  // Warna putih untuk salju
  beginShape();
  vertex(300, 300);
  vertex(275, 350);
  vertex(325, 350);
  endShape(CLOSE);
}

void draw() {
  // Tidak ada pengulangan di draw untuk gambar statis
}
