float deadV = -15;

void dead(){
  image(back,width/2 - backX,height/2);
   for (int i = 0; i <(width/40); i++){
    if( i == ran1 || i == ran2 || i == ran3 || i == ran4 || i == ran5 ){
    spike(0 - xani,spikeY[i]);
    spike(width +xani,spikeY[i]);
    }
  }
  deadV = deadV + gra;
  by = by + deadV;
  image(deadtaria,bx, by);
  
  if (by > height+300){
    mode = GAMEOVER;
  }
}
