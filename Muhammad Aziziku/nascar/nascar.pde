PImage img;
PImage[] mobil = new PImage[11]; // 3 Jumlah frame dalam GIF setelah di SPLIT
PImage[] mobil1 = new PImage[2];

int mobilX = -500;
int mobil1X = -500;



void setup() {
  size(1000, 600);
  smooth();
  
  // Background
  img = loadImage("latar.jpg");

  // Motor Pertama
  mobil [0] = loadImage("F1.gif");
  mobil [1] = loadImage("F2.gif");
  mobil [2] = loadImage("F3.gif");
  mobil [3] = loadImage("F4.gif");
  mobil [4] = loadImage("F5.gif");
  mobil [5] = loadImage("F6.gif");
  mobil [6] = loadImage("F7.gif");
  mobil [7] = loadImage("F8.gif");
  mobil [8] = loadImage("F9.gif");
  mobil [9] = loadImage("F10.gif");
  mobil [10] = loadImage("F11.gif");
  
  // Motor Kedua
  mobil1[0] = loadImage("L1.gif");
  mobil1[1] = loadImage("L2.gif");
  
  
  frameRate(15); // Mengatur kecepatan gerak GIF agar terlihat smooth

 
}

void draw() {
  image(img, 0, 0, width, height);
  pushMatrix();
  scale(0.7); // Mengatur ukuran GIF
  image(mobil[frameCount % 11], mobilX, 280); // %3 Jumlah frame, 280 Mengatur posisi GIF ke atas / ke bawah
  mobilX = mobilX + 40; // 25 Kecepatan gerak GIF ke arah kanan
  if (mobilX > width + 400) { // + 400 Titik akhir GIF
    mobilX = -1000; // Titik awal GIF makin besar makin ke kiri
  }
  
  popMatrix();
  pushMatrix();
  image(mobil1[frameCount % 2], mobil1X, 240);
  mobil1X = mobil1X + 30;
  if (mobil1X > width) {
    mobil1X = -900;
  } 
  popMatrix();
}
