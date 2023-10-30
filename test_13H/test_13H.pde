PImage playerImage;
PImage bossImage;
PVector playerPos;
PVector bossPos;
int playerHealth = 100;
int bossHealth = 200;
boolean isPlayerAttacking = false;
boolean isBossAttacking = false;

void setup() {
  size(800, 600);
  playerImage = loadImage("link.png");
  bossImage = loadImage("boss.png");
  playerPos = new PVector(width / 2, height - 100);
  bossPos = new PVector(width / 2, 100);
}

void draw() {
  background(220);

  // Draw boss
  image(bossImage, bossPos.x, bossPos.y);

  // Draw player
  image(playerImage, playerPos.x, playerPos.y);

  // Display health
  fill(255, 0, 0);
  rect(10, 10, playerHealth * 3, 20);
  fill(0, 0, 255);
  rect(10, 40, bossHealth * 3, 20);

  // Check for player and boss attacks
  if (isPlayerAttacking && dist(playerPos.x, playerPos.y, bossPos.x, bossPos.y) < 50) {
    bossHealth -= 10;
  }

  if (isBossAttacking && dist(playerPos.x, playerPos.y, bossPos.x, bossPos.y) < 50) {
    playerHealth -= 5;
  }

  // Display game over message
  if (playerHealth <= 0) {
    textSize(32);
    fill(255, 0, 0);
    text("Game Over", width / 2 - 100, height / 2);
    noLoop();
  }

  // Display victory message
  if (bossHealth <= 0) {
    textSize(32);
    fill(0, 255, 0);
    text("You Win!", width / 2 - 100, height / 2);
    noLoop();
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    playerPos.x -= 10;
    isPlayerAttacking = true;
  } else if (key == 'd' || key == 'D') {
    playerPos.x += 10;
    isPlayerAttacking = true;
  }
}

void keyReleased() {
  isPlayerAttacking = false;
}

void mouseClicked() {
  if (dist(bossPos.x, bossPos.y, mouseX, mouseY) < 50) {
    isBossAttacking = true;
  }
}

void mouseReleased() {
  isBossAttacking = false;
}
