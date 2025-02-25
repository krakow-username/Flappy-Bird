int timer = 0;

void keyPressed(){
  if (mode == INTRO){
    timer2 = 2000;
  startAniIn = true;
  startAniOut = false;
  score = 0;
  limit = 3;
  xani =40;
  gra = 0.5;
  bx = width/2;
  by = height/2;
  deadV = -15;
  direction = 1;
  bvx = 2;
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
