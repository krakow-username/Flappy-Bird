

void gameover(){
  background(255,255,255);
  image(shedinja,width/2,height/2);
  image(lose,width/2,height/4);
  textFont(font);
  textAlign(CENTER);
  textSize(50);
  text("Score: " + score + " !", width/2,height*3/4);
}

void gameoverClicks(){
  
}
