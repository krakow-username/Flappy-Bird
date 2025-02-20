int timer = 0;

void keyPressed(){
  if (mode == INTRO){
   mode=GAME; 
  }
  
  if (mode==GAME){
    //if (key == 'A' || key == 'a'){
      if (timer <1){
      bvy = bvy - 20;
      timer = 30;
     // }
    }
  }
}

void keyReleased(){
  
}
