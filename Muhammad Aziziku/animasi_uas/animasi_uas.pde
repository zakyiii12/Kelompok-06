float rocketY;      // Koordinat vertikal roket
float rocketSpeed;  // Kecepatan naik roket
float angle;        // Sudut untuk perputaran planet

void setup() {
  size(800, 600);   // Ukuran jendela
  rocketY = height; // Memulai roket dari bagian bawah layar
  rocketSpeed = 2;  // Kecepatan naik roket
  angle = 0;        // Sudut awal planet
}

void draw() {
  background(0); // Warna latar belakang hitam
  
  // Menggambar roket
  drawRocket();
  
  // Menggambar dan mengatur planet-planet
  drawPlanets();
  
  // Mengatur pergerakan roket ke atas
  rocketY -= rocketSpeed;
  if (rocketY < 100) {
    rocketY = height; // Memulai kembali roket dari bagian bawah setelah mencapai atas
  }
  
  // Memperbarui sudut untuk perputaran planet
  angle += 0.005;
}

void drawRocket() {
  // Menggambar badan roket
  fill(#BCB8B8); // Warna merah
  rectMode(CENTER);
  rect(width/2, rocketY, 50, 150);
  
  // Menggambar kepala roket
  triangle(width/2 - 25, rocketY - 75, width/2, rocketY - 150, width/2 + 25, rocketY - 75);
  
  // Menggambar api roket
  fill(255, 165, 0); // Warna jingga
  triangle(width/2 - 15, rocketY + 75, width/2, rocketY + 150, width/2 + 15, rocketY + 75);
}

void drawPlanets() {
  // Planet 1 (biru)
  float planet1X = width/2 + cos(angle) * 200;
  float planet1Y = height/2 + sin(angle) * 200;
  fill(0, 0, 255); // Warna biru
  ellipse(planet1X, planet1Y, 80, 80);
  
  // Planet 2 (hijau)
  float planet2X = width/2 + cos(angle + PI) * 300;
  float planet2Y = height/2 + sin(angle + PI) * 300;
  fill(#FF7C58); // Warna hijau
  ellipse(planet2X, planet2Y, 60, 60);
}
