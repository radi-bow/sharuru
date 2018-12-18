final color BACK = color(248,242,225);
final int NUM = 10; // 1つの領域に一度に描画する文字数
final int COUNT = 8; // 画面分割数
final int DELAY = 4; // ベタ塗りのために遅らせるフレーム数

boolean isPlaying = false;

void setup() {
  size(640,360,P2D);
  background(BACK);
  fill(0);
  noStroke();
  frameRate(10);
  PFont font = createFont("HiraMinPro-W3",160,true);
  textFont(font);
}

void draw() {
  if(isPlaying){
    for(int i = 0; i < frameCount; i++){
      for(int j = 0; j < NUM; j++){
        Character character = new Character("夜",new PVector(random(0,width),random(i * (height / COUNT), i * (height / COUNT) + 160)), color(43,65,75), random(80,160));
        character.draw();
      }
    }
    rect(0,(frameCount - DELAY) * (height / COUNT), width, height / COUNT);
  }
}

void mouseReleased(){
  if(isPlaying){
    background(BACK);
  }else{
    frameCount = 0;
  }
  isPlaying = !isPlaying;
}
