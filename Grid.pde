class Grid {   //contains the setup for the UI and the grid      

  Grid(int tWidth, int tHeight) { //constructor
    gridWidth = tWidth;
    gridHeight = tHeight;
  }
  
  
  void gridSetup(int widthBoard, int heightBoard) { //gridsetup: two for loops for columns, rows. from left to right
    for (int i = 0; i <= widthBoard; i++) { //horizontal lines
      stroke(#FFFFFF);
      strokeWeight(20);
      line (gridWidthPoints - i*(gridWidthPoints/widthBoard), 0, gridWidthPoints - i*(gridWidthPoints/widthBoard), gridHeightPoints); 
    }
    
    for (int i = 0; i <= heightBoard; i++) { //vertical lines 
      stroke(#FFFFFF);
      strokeWeight(20);
      line (0, gridHeightPoints - i*(gridHeightPoints/heightBoard), gridWidthPoints, gridHeightPoints - i*(gridHeightPoints/heightBoard));
    }
  }
  
  public void uiSetup(){ //user interface setup, many drawing functions.
    stroke(#FFFFFF); //start button
    fill(#FFFFFF);
    strokeWeight(10);
    rect(950, 550, 200, 100);
    fill(#FF93B3);
    textSize(50);
    textFont(textFont);
    text("start", 1000, 615);
    
    fill(#FADADD); //part of the resets for text
    stroke(#FADADD);
    rect(950, 100, 200, 400);
    rect(950, 700, 200, 200);
    
    fill(#FFFFFF); //total won counter for p1
    textSize(30);
    text("Player 1 (bows)", 950, 100);
    text("Games won:", 960, 130);
    textSize(40);
    text(player1totalWon, 1020, 175);
    
    fill(#FFFFFF); //total won counter for p2
    textSize(30);
    text("Player 2 (hearts)", 950, 300);
    text("Games won:", 960, 330);
    textSize(40);
    text(player2totalWon, 1020, 375);
    
    fill(#FFFFFF); //starting player text
    textSize(30);
    text("Starting Player:", 950, 750);

  }
}

