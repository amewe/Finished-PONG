int x, y, w, h, speedX,speedY;
int paddleX, paddleY, paddleW, paddleH, paddleS;
int paddleX2, paddleY2, paddleW2, paddleH2, paddleS2;
color blue;
boolean up, down, up2, down2;

color color1 = color(#950F8F);
color color2 = color(#950F8F);

int score = 0;
int score2 = 0;
int winScore = 2;
void setup(){
  size (700,700);
  
  ballColor();
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  speedX = 3;
  speedY = 4;
 
  
 rectMode(CENTER);
 paddleX=40;
 paddleY=height/2;
 paddleW = 30;
 paddleH = 100;
 paddleS = 5;
 
 rectMode(CENTER);
 paddleX2=660;
 paddleY2=height/2;
 paddleW2=30;
 paddleH2=100;
 paddleS2=5;
 
 blue = (#17FFFD); 
 textSize(30);
 textAlign( CENTER, CENTER);
 
}


void draw() {
  
background(0);

bounceOff();
//ball
drawBall();
moveBall();  
bounceOff();
ballBounce();


//First Paddle
drawPaddle();
movePaddle();
restrictPaddle();
contactPaddle();

//Second Paddle
drawPaddle2();
movePaddle2();
restrictPaddle2();

score();
gameEnd();


}


void keyPressed() {
  if(key == 'w' || key == 'W') {
    up = true;
  }
  if(key == 's' || key == 'S') {
    down = true;
  }
  if(key == 'i' || key == 'I') {
    up2 = true;
  }
  if(key == 'k' || key == 'K') {
    down2 = true;
  }
}

void keyReleased(){
  if(key == 'w' || key == 'W') {
    up = false;
  }
  if(key == 's' || key == 'S') {
    down = false;
  }
   if(key == 'i' || key == 'I') {
    up2 = false;
  }
  if(key == 'k' || key == 'K') {
    down2 = false;
  }
}
