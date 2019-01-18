void drawPaddle(){
  fill(#FF1717);
  rect(paddleX,paddleY,paddleW,paddleH);
}



void movePaddle() {
  if(up) {
paddleY = paddleY - paddleS;
  }
  if (down) {
    paddleY = paddleY + paddleS;
  }
}


//Paddle goes off screen, must set boundries so this doesnt happen

void restrictPaddle(){
  if(paddleY - paddleH/2 < 0 ) { //If the value of Y - H/2 (350) = less than 0 it will stop at 5, (Y + S)
    paddleY = paddleY + paddleS;
  }
  if(paddleY + paddleH/2 > height ) {
    paddleY = paddleY - paddleS;
  }
}

void contactPaddle(){
 if(x - w/2 < paddleX + paddleW/2 && y - h/2 < paddleY + paddleH/2 && y + h/2 > paddleY - paddleH/2) {
  if(speedX < 0){ //Checks to make sure speed is only being changed when needed, prevets ball from getting stuck in paddle
   speedX = -speedX; 
  }
 }
 else if (x + w/2 > paddleX2 - paddleW/2 && y - h/2 < paddleY2 + paddleH/2 && y +h/2 > paddleY2 - paddleH/2) {
   if(speedX > 0){
   speedX = -speedX;
   }
 }
}
