

//Ball Values, cleaner code x,y,w,h defined previously
void drawBall(){
   fill(255,0,0);
  ellipse(x, y, w,h);
}

void moveBall() {
  x = x + speedX;
  y = y + speedY;
}

void ballBounce(){
   //width and height variable used instead of integers to make changing values easier later on
  if( x > width - w/2) {
   speedX = -speedX; 
  }
  
  else if ( x < 0 + w/2) {
   speedX = -speedX; 
  }
  
  if(y > height - h/2){
   speedY = -speedY;
  }
   else if (y <0 + h/2){
     speedY = -speedY;
   }
  
}

void ballColor(){
  
 if( x < 0 + w/2){
  fill(blue);
}

}
