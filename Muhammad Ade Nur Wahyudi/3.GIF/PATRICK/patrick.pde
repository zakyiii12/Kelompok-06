PImage img;
PImage[] patrick = new PImage[9];
PImage[] gelembung = new PImage[8];
PImage[] gary = new PImage[23];
int patrickX, patrickY, gelembungX, gelembungY, garyX, garyY;
int garySpeed = 2; // Kecepatan pergerakan Gary
int garyFrameCount = 0;
int mainFrameCount = 0;

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("patrick.jpg");
  // Memuat gambar Patrick
  for (int i = 0; i < 9; i++) {
    patrick[i] = loadImage("patrick" + (i == 0 ? "" : i) + ".gif");
  }
  // Memuat gambar gelembung
  for (int i = 0; i < 8; i++) {
    gelembung[i] = loadImage("gelembung" + (i == 0 ? "" : i) + ".gif");
  }
  // Memuat gambar gary
  for (int i = 0; i < 23; i++) {
    gary[i] = loadImage("gary" + (i == 0 ? "" : i) + ".gif");
  }
  
  // Menyesuaikan posisi Patrick
  patrickX = 150;
  patrickY = height - patrick[0].height - 11;
  
  // Menyesuaikan posisi gelembung ke kiri
  gelembungX = 20; // Memberikan sedikit jarak dari tepi kiri
  gelembungY = 311;
  
  // Menyesuaikan posisi awal Gary (mulai dari kanan layar)
  garyX = width;
  garyY = 400;
  frameRate(30); // Meningkatkan frame rate untuk pergerakan yang lebih halus
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Animasi Patrick dan gelembung pada 7 FPS
  if (frameCount % 4 == 0) { // 30 FPS / 4 = 7.5 FPS
    mainFrameCount++;
  }
  image(patrick[mainFrameCount % 9], patrickX, patrickY);
  image(gelembung[mainFrameCount % 8], gelembungX, gelembungY);
  
  // Mengatur ukuran gambar Gary menjadi 20% dari ukuran aslinya
  int newWidth = gary[0].width * 2 / 10;  // 20% dari lebar aslinya
  int newHeight = gary[0].height * 2 / 10;  // 20% dari tinggi aslinya
  
  // Menggambar dan menggerakkan Gary
  image(gary[garyFrameCount % 23], garyX, garyY, newWidth, newHeight);
  garyX -= garySpeed; // Menggerakkan Gary ke kiri
  garyFrameCount++; // Menambah frame count Gary secara terpisah
  
  // Jika Gary telah melewati batas kiri layar, kembalikan ke kanan
  if (garyX + newWidth < 0) {
    garyX = width;
  }
}
