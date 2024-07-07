void setup() {
  size(400, 400);
  background(255);

  // Wajah emoji
  fill(255, 204, 0); 
  ellipse(200, 200, 300, 300);

  // Mata
  fill(200, 160, 0); 
  ellipse(150, 180, 40, 60); 
  ellipse(250, 180, 40, 60); 

  // Kacamata
  noFill(); 
  strokeWeight(8); 
  stroke(0); 
  ellipse(150, 180, 100, 80); 
  ellipse(250, 180, 100, 80); 
  line(50, 180, 100, 180); 
  line(300, 180, 350, 180);

  // Senyum
  noFill();
  stroke(0);
  strokeWeight(4);
  arc(200, 240, 120, 80, radians(0), radians(180)); 
}

void draw() {
  
}
