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
int ran5;
int timer2 = 2000;
int direction;
int xani =40;
boolean startAniIn = true;
boolean startAniOut = false;
int backX;
int score = 0;
int limit = 3;

void game(){
  backX = (int)map(bx,0,width,-70,70);
  image(back,width/2 - backX,height/2);
  if (bvy < 8){
  bvy = bvy + gra;
  }
  by = by + bvy;
  bird(bx,by,50);
  timer = timer - 1;
  timer2 = timer2 - 1;
  bx = bx + bvx;
  

  for (int i = 0; i <(height/40); i++){
    for (int j =0; j<limit; j++){
    if( i == ran[j] ){
    spike(0 - xani,spikeY[i]);
    spike(width +xani,spikeY[i]);
    hitbox(0,spikeY[i],50);
    hitbox(width,spikeY[i],50);
    }
    }
  }
  
  if ( bvx > 0){
    direction = 1;
  } else{
   direction = -1; 
  }
  
  if (startAniIn == true){
    if (xani >0){
      xani--;
  } else {
    startAniIn = false;
  }
  
  
}
if (startAniOut == true){
    if (xani < 40){
      xani++;
  } else {
    startAniOut = false;
  }
}
}

void hitbox(int x, int y, float r){
  
  ////hitbox visualiser
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
  

  if ((by + r/2) >=   height){
   mode = DEAD;
  }
  
   if ((by - r/2) <=   0){
   mode = DEAD;
  }
  
  if (x < width/2){
  if( dist(bx,by,x +20,y) <= (5 + r/2)){
     mode = DEAD;
  }
  } else{
    if( dist(bx,by,x-20,y) <= (10 + r/2)){
     mode = DEAD;
  }
  }
}

void spike(float x, float y){
  
  if (x < width/2){
    pushMatrix();
  translate(x +10,y +20);
  //triangle(0,0,0,40,30,20);
  pushMatrix();
  rotate(0.5*PI);
  image(Toxapexs,0,0);
  popMatrix();
  popMatrix();
  } else {
    pushMatrix();
  translate(x -10,y +20);
    //triangle(0,0,0,40,-30,20);
    pushMatrix();
    rotate(1.5*PI);
    image(Toxapexs,0,0);
    popMatrix();
    popMatrix();
  }
  
}

void bird(float x, float y, float r){
  pushMatrix();
  translate(x,y);
  //circle(0,0,r);
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
    startAniOut = true;
    timer2 = 50;
   bvx = -bvx; 
   score++;
   println(score);
   
  }
  popMatrix();
    
     if (timer2 < 1){
    //ran1 = (int)(random(0,height/40));
    //ran2 = (int)(random(0,height/40));
    //ran3 = (int)(random(0,height/40));
    //ran4 = (int)(random(0,height/40));
    //ran5 = (int)(random(0,height/40));
    
    for(int i =0; i<20;i++){
      ran[i] = (int)(random(0,(height/40)));
    }
    timer2 = 2000;
    startAniIn = true;
    if (limit < 20){
    limit = limit + 1;
    }
   }
}

void gameClicks(){
  if (timer <1){
      bvy = bvy - 20;
      timer = 30;
     // }
    }
}
