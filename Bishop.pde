class Bishop extends Piece {

  Bishop(Box box, boolean isLight) {
    super(box, isLight);
    if (isLight)
      super.image = loadImage("images\\light_pieces\\bishop.png");
    else
      super.image = loadImage("images\\dark_pieces\\bishop.png");
  }
  
  void validMove(HashMap<String, Box> boxes) { }
}
