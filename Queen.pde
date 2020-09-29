class Queen extends Piece {

  Queen(Box box, boolean isLight) {
    super(box, isLight);
    if (isLight)
      super.image = loadImage("images\\light_pieces\\queen.png");
    else
      super.image = loadImage("images\\dark_pieces\\queen.png");
  }
  void validMove(HashMap<String, Box> boxes) { }
}
