class Knight extends Piece {

  Knight(Box box, boolean isLight) {
    super(box, isLight);
    if (isLight)
      super.image = loadImage("images\\light_pieces\\knight.png");
    else
      super.image = loadImage("images\\dark_pieces\\knight.png");
  }
    void validMove(HashMap<String, Box> boxes) { }

}
