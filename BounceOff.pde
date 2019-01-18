void bounceOff() {
 if ( x > width - w/2) {
   setup();
   speedX = -speedX;
   score = score + 1;
 } else if ( x < 0 + w/2 ) {
   setup();
    score2 = score2 + 1;
 }
 
 if ( y > height - h/2 ) {
   speedY = -speedY;
 } else if ( y < 0 + h/2) {
   speedY = -speedY;
 }
 
}
  
  
  
