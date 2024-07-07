PImage img;
PImage[] squidward = new PImage[52];
int squidwardX = 500; // Posisi tetap untuk Squidward

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("squidward.jpg");

  squidward[0] = loadImage("squidward.gif");
  squidward[1] = loadImage("squidward1.gif");
  squidward[2] = loadImage("squidward2.gif");
  squidward[3] = loadImage("squidward3.gif");
  squidward[4] = loadImage("squidward4.gif");
  squidward[5] = loadImage("squidward5.gif");
  squidward[6] = loadImage("squidward6.gif");
  squidward[7] = loadImage("squidward7.gif");
  squidward[8] = loadImage("squidward8.gif");
  squidward[9] = loadImage("squidward9.gif");
  squidward[10] = loadImage("squidward10.gif");
  squidward[11] = loadImage("squidward11.gif");
  squidward[12] = loadImage("squidward12.gif");
  squidward[13] = loadImage("squidward13.gif");
  squidward[14] = loadImage("squidward14.gif");
  squidward[15] = loadImage("squidward15.gif");
  squidward[16] = loadImage("squidward16.gif");
  squidward[17] = loadImage("squidward17.gif");
  squidward[18] = loadImage("squidward18.gif");
  squidward[19] = loadImage("squidward19.gif");
  squidward[20] = loadImage("squidward20.gif");
  squidward[21] = loadImage("squidward21.gif");
  squidward[22] = loadImage("squidward22.gif");
  squidward[23] = loadImage("squidward23.gif");
  squidward[24] = loadImage("squidward24.gif");
  squidward[25] = loadImage("squidward25.gif");
  squidward[26] = loadImage("squidward26.gif");
  squidward[27] = loadImage("squidward27.gif");
  squidward[28] = loadImage("squidward28.gif");
  squidward[29] = loadImage("squidward29.gif");
  squidward[30] = loadImage("squidward30.gif");
  squidward[31] = loadImage("squidward31.gif");
  squidward[32] = loadImage("squidward32.gif");
  squidward[33] = loadImage("squidward33.gif");
  squidward[34] = loadImage("squidward34.gif");
  squidward[35] = loadImage("squidward35.gif");
  squidward[36] = loadImage("squidward36.gif");
  squidward[37] = loadImage("squidward37.gif");
  squidward[38] = loadImage("squidward38.gif");
  squidward[39] = loadImage("squidward39.gif");
  squidward[40] = loadImage("squidward40.gif");
  squidward[41] = loadImage("squidward41.gif");
  squidward[42] = loadImage("squidward42.gif");
  squidward[43] = loadImage("squidward43.gif");
  squidward[44] = loadImage("squidward44.gif");
  squidward[45] = loadImage("squidward45.gif");
  squidward[46] = loadImage("squidward46.gif");
  squidward[47] = loadImage("squidward47.gif");
  squidward[48] = loadImage("squidward48.gif");
  squidward[49] = loadImage("squidward49.gif");
  squidward[50] = loadImage("squidward50.gif");
  squidward[51] = loadImage("squidward51.gif");

  frameRate(7);
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Mengubah ukuran gambar Squidward menjadi lebih kecil (misalnya, 50% dari ukuran aslinya)
  int newWidth = squidward[0].width / 2;
  int newHeight = squidward[0].height / 2;
  
  // Mengubah posisi Squidward sedikit ke bawah
  int squidwardY = 300;
  
  image(squidward[frameCount % 52], squidwardX - newWidth / 2, squidwardY, newWidth, newHeight);
}
