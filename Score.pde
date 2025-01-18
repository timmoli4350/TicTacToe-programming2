class Score {
// scoring class, array

  int [][] score = new int[3][3];
  
  public void scoreReset(){
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        score[row][col] = 0;
    }
   }
  }
  
  
  public void checkRow(int row, int col) {
    //a
  }
  
  public void checkCol(int row, int col) {
    //a
  }
}
  





//check if there is a 0 in the array, is it empty?

//loop for row, loop for column. if the total of a row or column = a certain number, win condition
// make like 1 and 5, if we get 15 or 3, then we are a winner. diffrentiate by a lot, like no possible factors.

//diagonals: 00, 11, 22
//hard: 02, 11, 20

//algebra equation for the diagonals
