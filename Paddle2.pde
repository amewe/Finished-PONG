void drawPaddle2() {
fill(blue);
   rect(paddleX2,paddleY2,paddleW2,paddleH2);

  
}

void movePaddle2() {
  if(up2) {
paddleY2 = paddleY2 - paddleS2;
  }
  if (down2) {
    paddleY2 = paddleY2 + paddleS2;
  }
}

void restrictPaddle2(){
  if(paddleY2 - paddleH2/2 < 0 ) { //If the value of Y - H/2 (350) = less than 0 it will stop at 5, (Y + S)
    paddleY2 = paddleY2 + paddleS2;
  }
  if(paddleY2 + paddleH2/2 > height ) {
    paddleY2 = paddleY2 - paddleS2;
  }
  
}
