//mode framwork
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
PImage al1, al2;

void setup(){

  al1 = loadImage("al1.png");
  al1.resize(60,60);
  al2 = loadImage("al2.png");
  al2.resize(60,60);
  imageMode(CENTER);
  size(1000,720);
  mode = GAME;
  bx = width/2;
  by = height/2;
  ran1 = (int)(random(0,18));
  ran2 = (int)(random(0,18));
  ran3 = (int)(random(0,18));
  ran4 = (int)(random(0,18));
  
  spikeY = new int[18];
  for (int i = 0; i <18; i++){
    spikeY[i] = i*40;
  }
}

void draw(){
  if (mode==INTRO){
    intro();
  }
  else if (mode==GAME){
    game();
  }
  else if (mode==PAUSE){
    pause();
  }
  else if (mode==GAMEOVER){
    gameover();
  }
  else {
    println("Error:Mode = " +mode);
  }
  
}
