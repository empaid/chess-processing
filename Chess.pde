Board board;

void setup(){
  size(700, 700);
  background(255);
  board = new Board(25, 25, 650);
  board.render();
}

void draw(){
  
  background(255);
  board.render();

}

//utility functions
boolean mouseOver(float posX, float posY, float Width, float Height) {
  if (
    mouseX > posX &&
    mouseX < posX + Width &&
    mouseY > posY &&
    mouseY < posY +Height
    )return true;
  return false;
}

String charIntString(char c, int i){
  String result = "" + c + i;
  return result;
}
