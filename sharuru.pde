final color bg = color(248,242,225);
boolean isPlaying = false;

void setup() {
  size(640 ,360 , P2D);
  background(bg);
  fill(0);
  noStroke();
  frameRate(240);
  PFont font = createFont("HiraMinPro-W3",160,true);
  textFont(font);
}

void draw() {
  if(isPlaying){
    Character character = new Character("夜",new PVector(random(0,width),random(frameCount, frameCount + 160)), color(43,65,75), random(80,160));
    character.draw();
  }
}

void mouseReleased(){
  if(isPlaying){
    background(bg);
  }else{
    frameCount = 0;
  }
  isPlaying = !isPlaying;
}
