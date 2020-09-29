class King extends Piece {

  King(Box box, boolean isLight) {
    super(box, isLight);
    if (isLight)
      super.image = loadImage("images\\light_pieces\\king.png");
    else
      super.image = loadImage("images\\dark_pieces\\king.png");
  }
  
    void validMove(HashMap<String, Box> boxes) { }

}
