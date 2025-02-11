float bx ;
float by ;
float bvy = 0;
float bvx = 2;
float gra = 0.5;
int[] spikeY;
int ran1;
int ran2;
int ran3;
int ran4;
int timer2 = 2000;

void game(){
  background(255,255,0);
  
  if (bvy < 8){
  bvy = bvy + gra;
  }
  by = by + bvy;
  bird(bx,by,50);
  timer = timer - 1;
  timer2 = timer2 - 1;
  bx = bx + bvx;
  
  for (int i = 0; i <18; i++){
    if( i == ran1 || i == ran2 || i == ran3 || i == ran4 ){
    spike(0,spikeY[i]);
    spike(width,spikeY[i]);
    hitbox(0,spikeY[i]);
    hitbox(width,spikeY[i]);
    }
  }
}

void hitbox(int x, int y){
  pushMatrix();
  translate(x,y+20);
  if (x < width/2){
  circle(0,0,30);
  circle(20,0,10);
  }else {
  circle(0,0,30);
  circle(-20,0,10);
  }
  popMatrix();
  
  if (x < width/2){
  if( dist(bx,by,x +20,y) <= 10){
     mode++;
  }
  } else{
    if( dist(bx,by,x-20,y) <= 10){
     mode++;
  }
  }
}

void spike(float x, float y){
  pushMatrix();
  translate(x,y);
  if (x < width/2){
  triangle(0,0,0,40,30,20);
  } else {
    triangle(0,0,0,40,-30,20);
  }
  popMatrix();
}

void bird(float x, float y, float r){
  pushMatrix();
  translate(x,y);
  circle(0,0,r);
  if (x + r/2 > width || x - r/2 < 0){
    timer2 = 50;
   bvx = -bvx; 
  }
  popMatrix();
     if (timer2 < 1){
    ran1 = (int)(random(0,18));
    ran2 = (int)(random(0,18));
    ran3 = (int)(random(0,18));
    ran4 = (int)(random(0,18));
    timer2 = 2000;
   }
}

void gameClicks(){

}
