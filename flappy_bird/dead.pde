float deadV = -15;

void dead(){
  image(back,width/2 - backX,height/2);
   for (int i = 0; i <(height/40); i++){
     for (int j =0; j<limit; j++){
    if( i == ran[j]){
    spike(0 - xani,spikeY[i]);
    spike(width +xani,spikeY[i]);
    }
     }
  }
  deadV = deadV + gra;
  by = by + deadV;
  image(deadtaria,bx, by);
  
  if (by > height+300){
    mode = GAMEOVER;
  }
}
