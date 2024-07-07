
PImage img; 
PImage[] money = new PImage[8]; 
 
int moneyX = width + 4800;
int moneyX1 = width + 4800;
int moneyX2 = width + 4800;
int moneyX3 = width + 4800;
int moneyX4 = width + 4800;
void setup () { 
  size (1000, 600); 
  smooth(); 
     
     
  img = loadImage ("sky.png"); 
   
  money[0] = loadImage ("money0.gif"); 
  money[1] = loadImage ("money1.gif"); 
  money[2] = loadImage ("money2.gif"); 
  money[3] = loadImage ("money3.gif"); 
  money[4] = loadImage ("money4.gif"); 
  money[5] = loadImage ("money5.gif"); 
  money[6] = loadImage ("money6.gif"); 
  money[7] = loadImage ("money7.gif"); 
   
  frameRate (50); 
 
} 
 
void draw() { 
   
  image (img, 0, 0, width, height); 
   
  pushMatrix(); 
  scale(0.2); 
  image (money[frameCount%8], moneyX, 500); //  -200 Makin kecil angka makin ke kiri, 650 makin besar angka makin ke bawah  
  moneyX = moneyX - 50; 
    if (moneyX < -500) { 
      moneyX = + 4800; 
    } 
     
  popMatrix();  
  
  pushMatrix(); 
  scale(0.2); 
  image (money[frameCount%8], moneyX1, 1230); //  -200 Makin kecil angka makin ke kiri, 650 makin besar angka makin ke bawah  
  moneyX1 = moneyX1 - 80; 
    if (moneyX1 < -500) { 
      moneyX1 = + 4800; 
    } 
     
  popMatrix();  
  
  pushMatrix(); 
  scale(0.2); 
  image (money[frameCount%8], moneyX2, 1630); //  -200 Makin kecil angka makin ke kiri, 650 makin besar angka makin ke bawah  
  moneyX2 = moneyX2 - 70; 
    if (moneyX2 < -500) { 
      moneyX2 = + 4800; 
    } 
     
  popMatrix();  
  
  pushMatrix(); 
  scale(0.2); 
  image (money[frameCount%8], moneyX3, 1900); //  -200 Makin kecil angka makin ke kiri, 650 makin besar angka makin ke bawah  
  moneyX3 = moneyX3 - 230; 
    if (moneyX3 < -500) { 
      moneyX3 = + 4800; 
    } 
     
  popMatrix();
  
    pushMatrix(); 
  scale(0.2); 
  image (money[frameCount%8], moneyX4, 1030); //  -200 Makin kecil angka makin ke kiri, 650 makin besar angka makin ke bawah  
  moneyX4 = moneyX4 - 150; 
    if (moneyX4 < -500) { 
      moneyX4 = + 4800; 
    } 
     
  popMatrix();
 
} 
