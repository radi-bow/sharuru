class Character{
  String text;
  PVector position;
  color col;
  float size;
  
  Character(String _text, PVector _position, color _col, float _size){
    text = _text;
    position = _position;
    col = _col;
    size = _size;
  }
  
  void draw(){
    textAlign(CENTER);
    textSize(size);
    fill(col);
    text(text,position.x, position.y);
  }
}
