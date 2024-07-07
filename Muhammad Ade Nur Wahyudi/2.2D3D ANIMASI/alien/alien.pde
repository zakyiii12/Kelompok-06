float x = 75, y = 300;
float xSpeed = 10, ySpeed = 10;
boolean pause = false;

void setup() {
  size(600, 600);
  smooth();
  frameRate(30);
};

void draw() {

  background(0);
  
  ellipseMode(CENTER);

  stroke(0);
  fill(255);
  ellipse(x, y-25, 80, 100);

  noStroke();
  fill(#FF3B42);
  ellipse(x, y, 150, 60);


  noStroke();
  fill(255);
  ellipse(x, y-23, 80, 15);
  
  if (!pause) {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  if (x + 75 > width || x < 75) {
    xSpeed = xSpeed * -1;
  }

  if (y + 40 > height || y < 80) {
    ySpeed = ySpeed * -1;
  }
};

void mousePressed(){
  pause = !pause;
}
