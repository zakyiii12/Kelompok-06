
PImage img;
PImage[] fish = new PImage[8];
PImage[] paus = new PImage[24];
PImage[] badut = new PImage[27];
PImage[] bubble = new PImage[30];


int fishX = -100;
int fishX2 = -100;
int fishX3 = -100;
int ikanX = -100;
int pausX = width + 1000;
int badutX = width + 10000;
int badutX2 = width + 10000;
int badutX3 = width + 10000;
int badutX4 = width + 10000;
int supermanX = width + 500;
int bubbleX = - 500;


float[] volumes = new float[1];

void setup() {
  size (1000, 600);
  smooth();
  img = loadImage ("ocean.jpg");

  fish[0] = loadImage ("fish_01.gif");
  fish[1] = loadImage ("fish_02.gif");
  fish[2] = loadImage ("fish_03.gif");
  fish[3] = loadImage ("fish_04.gif");
  fish[4] = loadImage ("fish_05.gif");
  fish[5] = loadImage ("fish_06.gif");
  fish[6] = loadImage ("fish_07.gif");
  fish[7] = loadImage ("fish_08.gif");

  paus[0] = loadImage ("Paus.gif");
  paus[1] = loadImage ("Paus1.gif");
  paus[2] = loadImage ("Paus2.gif");
  paus[3] = loadImage ("Paus3.gif");
  paus[4] = loadImage ("Paus4.gif");
  paus[5] = loadImage ("Paus5.gif");
  paus[6] = loadImage ("paus6.gif");
  paus[7] = loadImage ("paus7.gif");
  paus[8] = loadImage ("paus8.gif");
  paus[9] = loadImage ("paus9.gif");
  paus[10] = loadImage ("paus10.gif");
  paus[11] = loadImage ("paus11.gif");
  paus[12] = loadImage ("paus12.gif");
  paus[13] = loadImage ("paus13.gif");
  paus[14] = loadImage ("paus14.gif");
  paus[15] = loadImage ("paus15.gif");
  paus[16] = loadImage ("paus16.gif");
  paus[17] = loadImage ("paus17.gif");
  paus[18] = loadImage ("paus18.gif");
  paus[19] = loadImage ("paus19.gif");
  paus[20] = loadImage ("paus20.gif");
  paus[21] = loadImage ("paus21.gif");
  paus[22] = loadImage ("paus22.gif");
  paus[23] = loadImage ("paus23.gif");

  badut[0] = loadImage ("badut.gif");
  badut[1] = loadImage ("badut1.gif");
  badut[2] = loadImage ("badut2.gif");
  badut[3] = loadImage ("badut3.gif");
  badut[4] = loadImage ("badut4.gif");
  badut[5] = loadImage ("badut5.gif");
  badut[6] = loadImage ("badut6.gif");
  badut[7] = loadImage ("badut7.gif");
  badut[8] = loadImage ("badut8.gif");
  badut[9] = loadImage ("badut9.gif");
  badut[10] = loadImage ("badut10.gif");
  badut[11] = loadImage ("badut11.gif");
  badut[12] = loadImage ("badut12.gif");
  badut[13] = loadImage ("badut13.gif");
  badut[14] = loadImage ("badut14.gif");
  badut[15] = loadImage ("badut15.gif");
  badut[16] = loadImage ("badut16.gif");
  badut[17] = loadImage ("badut17.gif");
  badut[18] = loadImage ("badut18.gif");
  badut[19] = loadImage ("badut19.gif");
  badut[20] = loadImage ("badut20.gif");
  badut[21] = loadImage ("badut21.gif");
  badut[22] = loadImage ("badut22.gif");
  badut[23] = loadImage ("badut23.gif");
  badut[24] = loadImage ("badut24.gif");
  badut[25] = loadImage ("badut25.gif");
  badut[26] = loadImage ("badut26.gif");

  bubble[0] = loadImage ("bubble.gif");
  bubble[1] = loadImage ("bubble1.gif");
  bubble[2] = loadImage ("bubble2.gif");
  bubble[3] = loadImage ("bubble3.gif");
  bubble[4] = loadImage ("bubble4.gif");
  bubble[5] = loadImage ("bubble5.gif");
  bubble[6] = loadImage ("bubble6.gif");
  bubble[7] = loadImage ("bubble7.gif");
  bubble[8] = loadImage ("bubble8.gif");
  bubble[9] = loadImage ("bubble9.gif");
  bubble[10] = loadImage ("bubble10.gif");
  bubble[11] = loadImage ("bubble11.gif");
  bubble[12] = loadImage ("bubble12.gif");
  bubble[13] = loadImage ("bubble13.gif");
  bubble[14] = loadImage ("bubble14.gif");
  bubble[15] = loadImage ("bubble15.gif");
  bubble[16] = loadImage ("bubble16.gif");
  bubble[17] = loadImage ("bubble17.gif");
  bubble[18] = loadImage ("bubble18.gif");
  bubble[19] = loadImage ("bubble19.gif");
  bubble[20] = loadImage ("bubble20.gif");
  bubble[21] = loadImage ("bubble21.gif");
  bubble[22] = loadImage ("bubble22.gif");
  bubble[23] = loadImage ("bubble23.gif");
  bubble[24] = loadImage ("bubble24.gif");
  bubble[25] = loadImage ("bubble25.gif");
  bubble[26] = loadImage ("bubble26.gif");
  bubble[27] = loadImage ("bubble27.gif");
  bubble[28] = loadImage ("bubble28.gif");
  bubble[29] = loadImage ("bubble29.gif");
  

  frameRate (20);
}

void draw() {

  image (img, 0, 0, width, height);

  pushMatrix();
  scale(0.6);
  image (bubble[frameCount%30], -200, 650); //  5 Makin kecil angka makin ke kiri, 650 makin besar angka makin ke bawah
  bubbleX = bubbleX - 0;
  if (bubbleX > width) {
    bubbleX = 500;
  }

  popMatrix();

  pushMatrix();
  scale(0.3); // Mengatur ukuran GIF
  image (fish[frameCount%8], fishX, 200); // Menggatur posisi atas / bawah GIF
  fishX = fishX + 80; // Kecepatan gerak GIF
  if (fishX > width + 2500) { // Titik akhir gerak GIF
    fishX = -400; // Titik awal gerak GIF
  }

  popMatrix();

  // Fish bagian bawah
  pushMatrix();
  scale(0.3);
  image (fish[frameCount%8], fishX2, 1800);
  fishX2 = fishX2 + 50;
  if (fishX2 > width + 2500) {
    fishX2 = -400;
  }

  popMatrix();

  // Fish bagian atas
  pushMatrix();
  scale(0.3);
  image (fish[frameCount%8], fishX3, 1250);
  fishX3 = fishX3 + 11;
  if (fishX3 > width + 2500) {
    fishX3 = -400;
  }

  popMatrix();

  pushMatrix();
  scale(1.1);
  image (paus[frameCount%24], pausX, - 1);
  pausX = pausX - 35;
  if (pausX < - 1000) {
    pausX = width + 100;
  }

  popMatrix();


  pushMatrix();
  scale(0.1); // Mengatur ukuran GIF
  image (badut[frameCount%27], badutX, 3500); // Posisi atas / bawah GIF
  badutX = badutX - 75; // Kecepatan gerak GIF
  if (badutX < - 600) { // Titik akhir gerak GIF ke arah kiri
    badutX = width + 10000; // Titik awal gerak GIF
  }

  popMatrix();

  pushMatrix();
  scale(0.1);
  image (badut[frameCount%27], badutX2, 2000);
  badutX2 = badutX2 - 40;
  if (badutX2 < - 600) {
    badutX2 = width + 10000;
  }

  popMatrix();

  pushMatrix();
  scale(0.1);
  image (badut[frameCount%27], badutX3, 1250);
  badutX3 = badutX3 - 87;
  if (badutX3 < - 600) {
    badutX3 = width + 10000;
  }

  popMatrix();
  pushMatrix();
  scale(0.1);
  image (badut[frameCount%27], badutX4, 1500);
  badutX4 = badutX4 - 51;
  if (badutX4 < - 600) {
    badutX4 = width + 10000;
  }


  popMatrix();
}
