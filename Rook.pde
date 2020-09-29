class Rook extends Piece {

  Rook(Box box, boolean isLight) {
    super(box, isLight );
    if (isLight)
      super.image = loadImage("images\\light_pieces\\rook.png");
    else
      super.image = loadImage("images\\dark_pieces\\rook.png");
  }
  void validMove(HashMap<String, Box> boxes) { 
    
  }
}
