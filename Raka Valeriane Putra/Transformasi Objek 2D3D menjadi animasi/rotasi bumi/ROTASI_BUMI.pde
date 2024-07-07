PShape globe;
PShape globe_2;
PImage backgroundImg;
PImage sunTexture;
PImage earthTexture;

int y;

float theta;
float thetaB;

// Pergerakan kamera
float eyeX;
float eyeY;
float eyeZ;

// Zoom in/out
float zoomFactor = 1;

// Bintang jatuh
int numStars = 100; // Jumlah bintang
float[] starX = new float[numStars];
float[] starY = new float[numStars];
float[] starZ = new float[numStars];
float[] starSpeed = new float[numStars];

void setup() {
  size(1200, 675, P3D);
  noStroke();

  // Load background image
  backgroundImg = loadImage("Langit.jpg");

  // Load textures
  sunTexture = loadImage("matahari.jpg");
  earthTexture = loadImage("bumi.jpg");

  // Create planet shapes
  globe = createShape(SPHERE, 100);
  globe_2 = createShape(SPHERE, 55);

  // Apply textures
  globe.setTexture(sunTexture);
  globe_2.setTexture(earthTexture);

  // Initial camera position
  eyeX = width / 2;
  eyeY = height / 2;
  eyeZ = (height / 2) / tan(PI/6);

  // Initialize star positions and speeds
  for (int i = 0; i < numStars; i++) {
    starX[i] = random(-width, width);
    starY[i] = random(-height, height);
    starZ[i] = random(0, 2000);
    starSpeed[i] = random(1, 5);
  }
}

void draw() {
  // Background
  background(backgroundImg);
  stroke(226, 284, 0);
  y++;
  if (y > height) {
    y = 0;
  }

  // Update camera position based on mouse
  moveEye();

  // Draw falling stars
  drawStars();

  // Sun
  translate(width / 2, height / 2);
  rotateY(radians(theta));
  shape(globe);

  // Earth
  pushMatrix();
  rotateY(radians(thetaB));
  translate(600, 0);
  shape(globe_2);
  popMatrix();

  // Update rotation angles
  theta += 4;
  thetaB += 4;
}

void moveEye() {
  float dx = mouseX - eyeX;
  float dy = mouseY - eyeY;
  float dz = 0; // Tidak mengubah jarak kamera

  // Update camera position
  eyeX += dx * 0.05;
  eyeY += dy * 0.05;
  eyeZ += dz * 0.05;
}

void drawStars() {
  // Draw falling stars
  for (int i = 0; i < numStars; i++) {
    // Update star position
    starZ[i] -= starSpeed[i];
    if (starZ[i] < 1) {
      // Reset star if it goes out of screen
      starX[i] = random(-width, width);
      starY[i] = random(-height, height);
      starZ[i] = 2000;
      starSpeed[i] = random(1, 5);
    }

    // Calculate screen position
    float starScreenX = map(starX[i] / starZ[i], 0, 1, 0, width);
    float starScreenY = map(starY[i] / starZ[i], 0, 1, 0, height);
    float starScreenSize = map(starZ[i], 0, 2000, 5, 0);

    // Draw star
    fill(255);
    noStroke();
    ellipse(starScreenX, starScreenY, starScreenSize, starScreenSize);
  }
}
