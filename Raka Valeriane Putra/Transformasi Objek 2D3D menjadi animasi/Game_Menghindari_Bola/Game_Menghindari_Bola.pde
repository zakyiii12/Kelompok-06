float playerX, playerY;
float[] obstacleX = new float[5];
float[] obstacleY = new float[5];
int score;
boolean gameOver;

void setup() {
  size(400, 600);
  playerX = width/2;
  playerY = height - 50;
  for (int i = 0; i < obstacleX.length; i++) {
    obstacleX[i] = random(width);
    obstacleY[i] = random(-100, -10);
  }
  score = 0;
  gameOver = false;
}

void draw() {
  if (!gameOver) {
    background(200);
    
    // Gambar pemain
    fill(0, 255, 0);
    rect(playerX - 25, playerY - 25, 50, 50);
    
    // Gerakkan dan gambar rintangan
    for (int i = 0; i < obstacleX.length; i++) {
      fill(255, 0, 0);
      ellipse(obstacleX[i], obstacleY[i], 20, 20);
      obstacleY[i] += 5;
      
      // Reset rintangan jika keluar layar
      if (obstacleY[i] > height) {
        obstacleY[i] = random(-100, -10);
        obstacleX[i] = random(width);
        score++;
      }
      
      // Cek tabrakan
      if (dist(playerX, playerY, obstacleX[i], obstacleY[i]) < 35) {
        gameOver = true;
      }
    }
    
    // Tampilkan skor
    fill(0);
    textSize(24);
    text("Score: " + score, 40, 30);
  } else {
    background(0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("Game Over\nScore: " + score + "\nClick to restart", width/2, height/2);
  }
}

void mouseMoved() {
  if (!gameOver) {
    playerX = mouseX;
  }
}

void mousePressed() {
  if (gameOver) {
    setup();
  }
}
