class Box {
  String id;
  float posX, posY, Length;
  color fill;
  boolean hasPiece = false;
  boolean isActiveForEntry = false;
  Box(float posX, float posY, float Length, color fill, String id) {
    this.posX = posX;
    this.posY = posY;
    this.Length = Length;
    this.fill = fill;
    this.id = id;
  }

  void render() {
    fill(fill); 
    stroke(0);
    strokeWeight(1);
    
    rect(posX, posY, Length, Length);
    //stroke(0);
    if(isActiveForEntry)
      activeForEntry();
  }
    
  
  void activeForEntry(){
    fill(0,150);
    rect(posX, posY, Length, Length);
  }
  boolean isMouseOver() {
    if (mouseOver(posX, posY, Length, Length))
      return true;
    else 
    return false;
  }
}
