Player player;
ArrayList<Zombie> zombies;
ArrayList<Bullet> bullets;
int score;
boolean gameOver;

void setup() {
  size(800, 600);
  player = new Player(width/2, height/2);
  zombies = new ArrayList<Zombie>();
  bullets = new ArrayList<Bullet>();
  score = 0;
  gameOver = false;
}

void draw() {
  if (!gameOver) {
    background(50);
    
    player.display();
    player.move();
    
    // Spawn zombie baru setiap 2 detik
    if (frameCount % 120 == 0) {
      zombies.add(new Zombie());
    }
    
    // Update dan tampilkan zombie
    for (int i = zombies.size() - 1; i >= 0; i--) {
      Zombie zombie = zombies.get(i);
      zombie.move();
      zombie.display();
      
      // Cek tabrakan dengan pemain
      if (zombie.hits(player)) {
        gameOver = true;
      }
    }
    
    // Update dan tampilkan peluru
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet bullet = bullets.get(i);
      bullet.move();
      bullet.display();
      
      // Hapus peluru jika keluar layar
      if (bullet.isOffscreen()) {
        bullets.remove(i);
        continue;
      }
      
      // Cek tumbukan peluru dengan zombie
      for (int j = zombies.size() - 1; j >= 0; j--) {
        Zombie zombie = zombies.get(j);
        if (bullet.hits(zombie)) {
          zombies.remove(j);
          bullets.remove(i);
          score++;
          break;
        }
      }
    }
    
    // Tampilkan skor
    fill(255);
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

void mousePressed() {
  if (!gameOver) {
    bullets.add(new Bullet(player.x, player.y, mouseX, mouseY));
  } else {
    setup();
  }
}

class Player {
  float x, y;
  
  Player(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
    fill(0, 255, 0);
    ellipse(x, y, 30, 30);
  }
  
  void move() {
    x = mouseX;
    y = mouseY;
  }
}

class Zombie {
  float x, y;
  float speed;
  
  Zombie() {
    // Spawn zombie di tepi layar
    if (random(1) < 0.5) {
      x = random(1) < 0.5 ? 0 : width;
      y = random(height);
    } else {
      x = random(width);
      y = random(1) < 0.5 ? 0 : height;
    }
    speed = random(0.5, 2);
  }
  
  void display() {
    fill(255, 0, 0);
    ellipse(x, y, 30, 30);
  }
  
  void move() {
    float angle = atan2(player.y - y, player.x - x);
    x += cos(angle) * speed;
    y += sin(angle) * speed;
  }
  
  boolean hits(Player p) {
    return dist(x, y, p.x, p.y) < 30;
  }
}

class Bullet {
  float x, y;
  float speedX, speedY;
  
  Bullet(float startX, float startY, float targetX, float targetY) {
    x = startX;
    y = startY;
    float angle = atan2(targetY - startY, targetX - startX);
    float speed = 10;
    speedX = cos(angle) * speed;
    speedY = sin(angle) * speed;
  }
  
  void display() {
    fill(255, 255, 0);
    ellipse(x, y, 10, 10);
  }
  
  void move() {
    x += speedX;
    y += speedY;
  }
  
  boolean isOffscreen() {
    return x < 0 || x > width || y < 0 || y > height;
  }
  
  boolean hits(Zombie z) {
    return dist(x, y, z.x, z.y) < 20;
  }
}
