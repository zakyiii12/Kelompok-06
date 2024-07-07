PImage img;
PImage[] iron = new PImage[4];
PImage[] frame = new PImage[33];  // Mengubah menjadi 33 sesuai dengan jumlah frame yang ada
int ironX = 100;
int frameX = 100;
float frameScale = 0.2;  // Skala untuk memperkecil frame
float frameYOffset = -100;  // Offset vertikal untuk menggeser frame ke atas

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("langit.jpg");
  iron[0] = loadImage("iron_01.gif");
  iron[1] = loadImage("iron_02.gif");
  iron[2] = loadImage("iron_3.gif");
  iron[3] = loadImage("iron_04.gif");
  
  for (int i = 0; i < 33; i++) {
    frame[i] = loadImage("frame_" + nf(i, 2) + "_delay-0.04s.gif");
  }
  
  frameRate(30);  // Mengubah frameRate menjadi 30 untuk animasi yang lebih halus
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Gambar Iron Man
  image(iron[frameCount % 4], ironX, 200);
  ironX = ironX - 5;
  if (ironX < -iron[0].width) {
    ironX = width;
  }
}
