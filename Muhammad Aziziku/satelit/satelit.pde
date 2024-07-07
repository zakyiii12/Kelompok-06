// Rocket class
class Rocket {
  float x, y;
  float angle;
  float speed;
  float bodyDiameter;
  float finWidth;
  float finHeight;

  Rocket(float x, float y, float angle, float speed, float bodyDiameter, float finWidth, float finHeight) {
    this.x = x;
    this.y = y;
    this.angle = angle;
    this.speed = speed;
    this.bodyDiameter = bodyDiameter;
    this.finWidth = finWidth;
    this.finHeight = finHeight;
  }

  void display() {
    // Draw body
    fill(255);
    ellipse(x, y, bodyDiameter, bodyDiameter);

    // Draw fins
    fill(255);
    rectMode(CENTER);
    rect(x - bodyDiameter/2 - finWidth/2, y, finWidth, finHeight);
    rect(x + bodyDiameter/2 + finWidth/2, y, finWidth, finHeight);
  }

  void move() {
    angle += speed;
    x = width/2 + cos(angle) * 150;
    y = height/2 + sin(angle) * 150;
  }
}

// Planet class
class Planet {
  float x, y;
  float diameter;

  Planet(float x, float y, float diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
  }

  void display() {
    fill(0, 0, 255);
    ellipse(x, y, diameter, diameter);
  }
}

Rocket rocket;
Planet earth;

void setup() {
  size(800, 600);
  rocket = new Rocket(width/2, height/2, 0, 0.05, 40, 10, 20);
  earth = new Planet(width/2, height/2, 100);
}

void draw() {
  background(0);
  rocket.move();
  rocket.display();
  earth.display();
}
