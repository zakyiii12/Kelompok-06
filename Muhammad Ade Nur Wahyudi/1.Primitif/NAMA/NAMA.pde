int x, y;
String name;

void setup() {
  x = width/2;
  y = height/2;
  size(500, 500);
  name = "M. Ade";
}

void draw() {
  background(5);
  stroke(255);
  strokeWeight(3);
  line(x + 100, y + 50, x + 100, y + - 20);
  ellipse(170, 250, 10, 10);
  ellipse(170, 280, 10, 10);
  ellipse(230, 300, 5, 5);
  line(x + 15, y + 30, x - 10, y + 60);
  line(x + 50, y + 00, x + 25, y + 30);
}
