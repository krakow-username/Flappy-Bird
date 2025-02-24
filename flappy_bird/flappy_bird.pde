import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framwork

//minim
Minim minim;
AudioPlayer lake;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int DEAD = 4;
PImage al1, al2, back,intro, logo, aqua, version, version2, aqua2, start, deadtaria, shedinja, lose, Toxapexs;
PImage[] gif;
int numOfFrames =60;
int[] ran;
PFont font;
//String[] PixelSport = PFont.list();

void setup(){
  
  minim = new Minim(this);
  lake = minim.loadFile("ytmp3free.cc_lake-pokemon-diamond-pearl-music-extended-hd-youtubemp3free.org.mp3");
  lake.play();
  
  size(750,1000);
  mode = INTRO;
  //font = loadFont("PixelSport-nRVRV.ttf");
  font = createFont("PixelSport-nRVRV.ttf",100);
  Toxapexs = loadImage("Toxapexs.png");
  Toxapexs.resize(50,50);
  lose = loadImage("lose.png");
  shedinja = loadImage("shedinja.png");
  shedinja.resize(300,300);
  deadtaria = loadImage("deadtaria.png");
  deadtaria.resize(60,60);
  start = loadImage("start.png");
  start.resize(((width*2)/3),0);
  aqua = loadImage("aquamarine.png");
  aqua.resize(((width*2)/3),0);
  aqua2 = loadImage("aqua2.png");
  aqua2.resize(((width*2)/3)+5,0);
  version = loadImage("version.png");
  version.resize(((width*1)/2),0);
  version2 = loadImage("version2.png");
  version2.resize(((width*1)/2) +5,0);
  logo = loadImage("logo.png");
  logo.resize(((width*2)/3),0);
  back = loadImage("scenery.jpg");
  intro = loadImage("intro.png");
  intro.resize(width,0);
  al1 = loadImage("al1.png");
  al1.resize(60,60);
  al2 = loadImage("al2.png");
  al2.resize(60,70);
  imageMode(CENTER);

  bx = width/2;
  by = height/2;
  //ran1 = (int)(random(0,(height/40)));
  //ran2 = (int)(random(0,(height/40)));
  //ran3 = (int)(random(0,(height/40)));
  //ran4 = (int)(random(0,(height/40)));
  //ran5 = (int)(random(0,(height/40)));
  ran = new int[20];
  for(int i =0; i<20;i++){
   ran[i] = (int)(random(0,(height/40)));
  }
  
  spikeY = new int[(height/40)];
  for (int i = 0; i <(height/40); i++){
    spikeY[i] = i*40;
  }
  
  gif = new PImage [numOfFrames];
  for(int i =0; i <numOfFrames; i++){
     if (i<10){
    gif[i] = loadImage("frame_0"+i+"_delay-0.1s.gif");}
    else{ gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");}
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
  else if (mode==DEAD){
    dead();
  }
  else {
    println("Error:Mode = " +mode);
  }
  
}
