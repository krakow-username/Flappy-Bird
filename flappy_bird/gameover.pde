

void gameover(){
  background(156,222,255);
  image(shedinja,width/2,height/2);
  image(lose,width/2,height/4);
  textFont(font);
  textAlign(CENTER);
  textSize(100);
  fill(16,156,205);
  text("Score: " + score + " !", width/2,height*3/4);
  rectMode(CENTER);
  rect(width/2,850,220,100);
  fill(90,197,255);
  text("Retry?",width/2,880);
}

void gameoverClicks(){
  if ( mouseX > (width/2 -110) && mouseX < (width/2 + 110) && mouseY < 900 && mouseY > 800){
    mode = 0;
  }
}
