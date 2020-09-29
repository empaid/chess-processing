class Board { //<>//
  float posX, posY, Length;
  color dark = color(255, 0, 0, 200);
  color light = color(255);
  HashMap<String, Box> boxes = new HashMap<String, Box>();
  HashMap<Integer, Piece> pieces = new HashMap<Integer, Piece>();

  Board(float posX, float posY, float Length) {
    this.posX = posX;
    this.posY = posY;
    this.Length = Length;
    initializeBoxes();
    initializePieces();
  }

  void render() {

    for (Box box : boxes.values()){
      box.render();
      box.isActiveForEntry = false;  
  }

    for ( Piece piece : pieces.values()) {

      piece.render(boxes);
    }
  }



  void initializeBoxes() {
    color tempColor = dark;
    float tempX = posX, tempY = posY;
    for (int i = 1; i<=8; i++) {
      for (char j = 'a'; j<='h'; j++) {
        String hashKey = "" + j + i;
        Box hashValue = new Box(tempX, tempY, Length/8, tempColor, hashKey);
        boxes.put( hashKey, hashValue);
        tempColor = alterColor(tempColor);
        tempX += Length/8;
      }
      tempColor = alterColor(tempColor);
      tempX = posX;
      tempY += Length/8;
    }
  }
  color alterColor(color tempColor) {
    if (tempColor == light)return dark;
    else return light;
  }
  void initializePieces() {
    int temp = 0;
    Piece p;
    //Pawns
    for (char i='a'; i<='h'; i++) {
      p = new Pawn(boxes.get("" + i + 2), true);  
      pieces.put(temp++, p);
      p = new Pawn(boxes.get("" + i + 7), false);  
      pieces.put(temp++, p);
    } 
    //Rooks
    p = new Rook(boxes.get("" + 'a' + 1), true);  
    pieces.put(temp++, p);
    p = new Rook(boxes.get("" + 'h' + 1), true);  
    pieces.put(temp++, p);
    p = new Rook(boxes.get("" + 'a' + 8), false);  
    pieces.put(temp++, p);
    p = new Rook(boxes.get("" + 'h' + 8), false);  
    pieces.put(temp++, p); 
    //Knights
    p = new Knight(boxes.get("" + 'b' + 1), true);  
    pieces.put(temp++, p);
    p = new Knight(boxes.get("" + 'g' + 1), true);  
    pieces.put(temp++, p);
    p = new Knight(boxes.get("" + 'b' + 8), false);  
    pieces.put(temp++, p);
    p = new Knight(boxes.get("" + 'g' + 8), false);  
    pieces.put(temp++, p);
    //Bishops
    p = new Bishop(boxes.get("" + 'c' + 1), true);  
    pieces.put(temp++, p);
    p = new Bishop(boxes.get("" + 'f' + 1), true);  
    pieces.put(temp++, p);
    p = new Bishop(boxes.get("" + 'c' + 8), false);  
    pieces.put(temp++, p);
    p = new Bishop(boxes.get("" + 'f' + 8), false);  
    pieces.put(temp++, p);
    //Queen
    p = new Queen(boxes.get("" + 'd' + 1), true);  
    pieces.put(temp++, p);
    p = new Queen(boxes.get("" + 'd' + 8), false);  
    pieces.put(temp++, p);
    //King
    p = new King(boxes.get("" + 'e' + 1), true);  
    pieces.put(temp++, p);
    p = new King(boxes.get("" + 'e' + 8), false);  
    pieces.put(temp++, p);
  }
}
