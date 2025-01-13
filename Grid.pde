//grid class ++++ don't hardcode the x and y placements

int gridWidth = 3; //these variables can be changed to have 
int gridHeight = 3; //different sized grids
int gridWidthPoints = 900;
int gridHeightPoints = 900;

public void gridSetup(int widthBoard, int heightBoard) {
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

void mousePressed() {
  
  if (mouseX < gridWidthPoints && mouseY < gridHeightPoints) {
    
    if (player1turn == true){
      image(pinkBow, (mouseX/300)*300 + 75, (mouseY/300)*300 + 75);
      player1turn = false;
      player2turn = true;
      println("player 2 turn");
    }
    
    else if (player2turn == true) {
      image(pinkHeart, (mouseX/300)*300 + 75, (mouseY/300)*300 + 75);
      player1turn = true;
      player2turn = false;
      println("player 1 turn");
    }
  }

}
