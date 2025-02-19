int s = 0;

void intro(){
  image(intro,(width/2),height/2);
  imageMode(CORNER);
  image(logo,(width/2) - (((width*2)/3)/2),(height/3) -110);
  logo.resize(((width*2)/3),0);
  imageMode(CENTER);
  image(aqua2,width/2,(height/3) +80);
  image(aqua,width/2,(height/3) +80);
  image(version2,width/2,(height/3) +140);
  image(version,width/2,(height/3) +140);
  pushMatrix();
  tint(255,sin(s/10)*255);
  s++;
  image(start,width/2,height*2/3);
  popMatrix();
  tint(255,255);
  
}

void introClicks(){
 
}
