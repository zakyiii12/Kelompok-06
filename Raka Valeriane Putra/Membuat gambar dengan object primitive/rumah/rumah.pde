void setup()
{
  size(600,600); 
  background(255);
  translate(width/2-150,height/2-110);
  
  // Warna untuk atap
  fill(165, 42, 42);  // Warna coklat kemerahan
  quad(130,10,220,10,250,40,100,40);
 
  // Warna untuk dinding utama
  fill(255, 253, 208);  // Warna krem muda
  rect(120,40,110,30);
  rect(120,100,110,40);
  
  // Warna untuk jendela
  fill(173, 216, 230);  // Warna biru muda
  rect(130,47,15,15);
  rect(165,47,20,15);
  rect(205,47,15,15);
  rect(130,108,15,20);
  rect(205,108,15,20);
  
  // Warna untuk pintu
  fill(139, 69, 19);  // Warna coklat
  rect(165,105,25,35);
  
  // Kembali ke mode tanpa isi untuk garis-garis
  noFill();
  line(145,55,130,55); 
  line(185,55,165,55);
  line(220,55,205,55);
  line(145,118,130,118);
  line(220,118,205,118);
  
  // Gagang pintu
  fill(255, 215, 0);  // Warna emas
  ellipse(170,123,3,3);
  
  noFill();
  quad(120,70,230,70,250,100,100,100);
 
  // Warna untuk garasi
  fill(192, 192, 192);  // Warna abu-abu muda
  quad(20,70,120,70,106,90,0,90);
  rect(30,105,80,35);
  
  noFill();
  line(20,90,20,140);
  line(-150,140,120,140);
  line(30,110,110,110);
  line(30,115,110,115);
  line(30,120,110,120);
  line(30,125,110,125);
  line(30,130,110,130);
  line(30,135,110,135);
 
  line(-150,140,800,140);
  
  // Menambahkan pohon kecil di sebelah rumah
  drawTree(300, 70, 40, 70);
  drawTree(350, 50, 50, 90);
  drawTree(-70, 50, 65, 90);
}

void drawTree(float x, float y, float w, float h) {
  // Batang pohon
  fill(139, 69, 19);  // Warna coklat
  rect(x - w/6, y + h/2, w/3, h/2);
  
  // Daun pohon
  fill(34, 139, 34);  // Warna hijau
  ellipse(x, y + h/3, w, h);
}
