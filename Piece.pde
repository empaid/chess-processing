abstract class Piece {
  abstract void validMove(HashMap<String, Box> boxes);
  String location = "";
  float posX, posY, Length;
  float padding = 10;
  PImage image;
  boolean isLight;
  boolean isMoved=false;
  int gravity;
  Animator animator;
  Box box;
  
  Piece(Box box, boolean isLight) {
    initialize(box, isLight);
  }
  Piece(Box box, boolean isLight, float padding) {
    this.padding = padding;
   initialize(box, isLight);
  }

  void initialize(Box box, boolean isLight) {
    this.isLight = isLight;
    if (isLight)this.gravity = 1;
    else this.gravity = -1;
    this.box = box;
    box.hasPiece = true;
    alignWithPadding(this.padding);
    animator = new Animator(Length);
  }
  void render(HashMap<String, Box> boxes) {

    if (box.isMouseOver()) {
      Length=animator.update();
      align();
      validMove(boxes);
    } else {
      alignWithPadding(this.padding);
    }

    image(image, posX, posY, Length, Length);
  }

  void update() {
  }

  void alignWithPadding(float padding) {
    this.padding = padding; 
    this.Length = box.Length - padding * 2;
    this.posX = box.posX + padding;
    this.posY = box.posY + padding;
  }

  void align() {
    float temp = (box.Length - Length)/2;
    posX = box.posX + temp;
    posY = box.posY + temp;
  }
}
