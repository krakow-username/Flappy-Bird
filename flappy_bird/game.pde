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
int direction;

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
    hitbox(0,spikeY[i],50);
    hitbox(width,spikeY[i],50);
    }
  }
  
  if ( bvx > 0){
    direction = 1;
  } else{
   direction = -1; 
  }
  
}

void hitbox(int x, int y, float r){
  //hitbox visualiser
  //pushMatrix();
  //translate(x,y+20);
  //if (x < width/2){
  //circle(0,0,30);
  //circle(20,0,10);
  //}else {
  //circle(0,0,30);
  //circle(-20,0,10);
  //}
  //popMatrix();
  
  if (x < width/2){
  if( dist(bx,by,x +20,y) <= (5 + r/2)){
     mode++;
  }
  } else{
    if( dist(bx,by,x-20,y) <= (10 + r/2)){
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
  //image(al1,0,0);
  pushMatrix();
   scale(direction,1);
   if (timer > 15){
     image(al2,0,0);
   }else{
   image(al1,0,0);
   }
   popMatrix();
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
