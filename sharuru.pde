boolean isPlaying = false;

void setup() {
  size(1280 ,720 , P2D);
  background(248,242,225);
  fill(0);
  noStroke();
  frameRate(400);
  PFont font = createFont("HiraMinPro-W3",80,true);
  textFont(font);
}

void draw() {
  if(isPlaying){
    Character character = new Character("夜",new PVector(random(0,width),random(frameCount, frameCount + 200)), color(43,65,75), random(80,160));
    character.draw();
  }
}

void mouseReleased(){
  if(isPlaying){
    background(248,242,225);
  }else{
    frameCount = 0;
  }
  isPlaying = !isPlaying;
}
