class Pawn extends Piece {

  Pawn(Box box, boolean isLight) {
    super(box, isLight, 20);
    if (isLight)
      super.image = loadImage("images\\light_pieces\\pawn.png");
    else
      super.image = loadImage("images\\dark_pieces\\pawn.png");
  }

  void validMove(HashMap<String, Box> boxes) {
    char alpha = box.id.charAt(0);
    char num = box.id.charAt(1);
    println(gravity);
    num += gravity;
    Box tempBox = boxes.get("" + alpha + num);
    //check move one head
    if(!tempBox.hasPiece)
      tempBox.isActiveForEntry = true;
    
    //two move ahead
    num += gravity;
    tempBox = boxes.get("" + alpha + num);
    if(tempBox.hasPiece)
      tempBox.isActiveForEntry = true;
    //box two move head 

    if(!tempBox.hasPiece && !isMoved)
       tempBox.isActiveForEntry = true;
    
}


}
