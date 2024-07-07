PImage img;
PImage[] spongebob = new PImage[17]; // Mengubah ukuran array sesuai jumlah gambar SpongeBob
PImage[] gelembung = new PImage[8];
PImage[] gary = new PImage[3];
int spongebobX, spongebobY, gelembungX, gelembungY, garyX, garyY;

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("nanas.jpg");

  // Memuat gambar SpongeBob
  spongebob[0] = loadImage("spongebob.gif");
  spongebob[1] = loadImage("spongebob1.gif");
  spongebob[2] = loadImage("spongebob2.gif");
  spongebob[3] = loadImage("spongebob3.gif");
  spongebob[4] = loadImage("spongebob4.gif");
  spongebob[5] = loadImage("spongebob5.gif");
  spongebob[6] = loadImage("spongebob6.gif");
  spongebob[7] = loadImage("spongebob7.gif");
  spongebob[8] = loadImage("spongebob8.gif");
  spongebob[9] = loadImage("spongebob9.gif");
  spongebob[10] = loadImage("spongebob10.gif");
  spongebob[11] = loadImage("spongebob11.gif");
  spongebob[12] = loadImage("spongebob12.gif");
  spongebob[13] = loadImage("spongebob13.gif");
  spongebob[14] = loadImage("spongebob14.gif");
  spongebob[15] = loadImage("spongebob15.gif");
  spongebob[16] = loadImage("spongebob16.gif");

  // Memuat gambar gelembung
  gelembung[0] = loadImage("gelembung.gif");
  gelembung[1] = loadImage("gelembung1.gif");
  gelembung[2] = loadImage("gelembung2.gif");
  gelembung[3] = loadImage("gelembung3.gif");
  gelembung[4] = loadImage("gelembung4.gif");
  gelembung[5] = loadImage("gelembung5.gif");
  gelembung[6] = loadImage("gelembung6.gif");
  gelembung[7] = loadImage("gelembung7.gif");
  
  // Memuat gambar Gary
  gary[0] = loadImage("gary.gif");
  gary[1] = loadImage("gary1.gif");
  gary[2] = loadImage("gary2.gif");
 

  // Menyesuaikan posisi SpongeBob
  spongebobX = 240;
  spongebobY = height - spongebob[0].height - 11;

  // Menyesuaikan posisi gelembung 
  gelembungX = width - gelembung[0].width - 19;
  gelembungY = 355;
  
  // Menyesuaikan posisi Gary
  garyX = width - gary[0].width - 700;
  garyY = 435;

  frameRate(7);
}

void draw() {
  image(img, 0, 0, width, height);
  image(spongebob[frameCount % 17], spongebobX, spongebobY);
  image(gelembung[frameCount % 8], gelembungX, gelembungY);
  
  // Mengatur ukuran gambar Gary menjadi 20% dari ukuran aslinya
  int newWidth = gary[0].width * 4 / 10;  // 20% dari lebar aslinya
  int newHeight = gary[0].height * 4 / 10;  // 20% dari tinggi aslinya
  
  image(gary[frameCount % 3], garyX, garyY, newWidth, newHeight);
}
