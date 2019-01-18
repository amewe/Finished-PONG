void gameEnd() {
  if ( score == winScore) {
     gameEndScreen("Red takes the win!", color1);
  }
  
    if ( score2 == winScore) {
       gameEndScreen("Blue takes the win!", color2);
    }
  
}

void gameEndScreen(String text, color c) {
  
  speedX = 0;
  speedY = 0;
  
  text("Game over", width /2, height/3 - 40);
  fill(color2);
  text(text, width /2, height/3);
  fill(255);
  text("Click to play again", width/2, height/3 + 40);
   
  if (mousePressed) {
    score = 0;
    score2 = 0;
    speedX = 3;
    speedY = 2;
  }
}
