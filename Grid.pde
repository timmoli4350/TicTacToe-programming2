class Grid {         
  //grid class ++++ don't hardcode the x and y placements
  
  //constructor?
 
  Grid(int tWidth, int tHeight) {
    gridWidth = tWidth;
    gridHeight = tHeight;
  }
  
  
  
  void gridSetup(int widthBoard, int heightBoard) {
    for (int i = 0; i <= widthBoard; i++) {
      stroke(#FFFFFF);
      strokeWeight(20);
      line (gridWidthPoints - i*(gridWidthPoints/widthBoard), 0, gridWidthPoints - i*(gridWidthPoints/widthBoard), gridHeightPoints);
    }
    
    for (int i = 0; i <= heightBoard; i++) {
      stroke(#FFFFFF);
      strokeWeight(20);
      line (0, gridHeightPoints - i*(gridHeightPoints/heightBoard), gridWidthPoints, gridHeightPoints - i*(gridHeightPoints/heightBoard));
  
    }
  }
  
  public void uiSetup(){
    stroke(#FFFFFF);
    strokeWeight(10);
    rect(950, 550, 200, 100);
  }
  

}
