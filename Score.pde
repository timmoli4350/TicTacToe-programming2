class Score {
// scoring class, array

  int [][] score = new int[3][3];
  
  int row = 0;
  int col = 0;
  int total = 0;
  
  public void scoreReset(){
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        score[row][col] = 0;
    }
   }
     player1moves = 0;
     player2moves = 0;
  }
    
  public void playGame() {
    checkRow();
    checkCol();
    isEmptySquare();
    checkAll();
  }
  
  public void checkRow() {
    row = mouseX/300;
  }
  
  public void checkCol() {
    col = mouseY/300;
  }
  
  public void isEmptySquare() { //can we place here?
  
    if (score[row][col] == 0) {
      
      if (player1turn) {
        image(pinkBow, (mouseX/300)*300 + 75, (mouseY/300)*300 + 75);
         player1turn = false;
         player2turn = true;
         player1moves++;
         println("player 2 turn");
         
         score[row][col] = 1;

      }
      
      else if (player2turn) {
        image(pinkHeart, (mouseX/300)*300 + 75, (mouseY/300)*300 + 75);
        player1turn = true;
        player2turn = false;
        player2moves++;
        println("player 1 turn");
        
        score[row][col] = 4;
      }
    }
  }
  
  public void checkAll() { //loops through all parts then calls isWinner to add
    if (player1moves + player2moves == 9) {
      tieGame();
    }
    
    //rows
    for (int row = 0; row < score.length; row++) {
      total = 0;
      for (int col = 0; col < score[0].length; col++) {
        total += score[row][col];
        isWinner();
        
      }
    }
      
     //columns
     for (int col = 0; col < score[0].length; col++) {
      total = 0;
      for (int row = 0; row < score.length; row++) {
        total += score[row][col];
        isWinner();
        
      }
    }
  }
  
  
  public void isWinner() { //adds up parts of the loops
    if (total == 3) {
      player1Wins();
    }
      
    if (total == 12) {
      player2Wins();
    }
    
    
  }
  
  
  public void player1Wins() {
    println("player 1 (bows) wins!");
    image(p1win, 200, 200);
    player1totalWon++;
    playAgain();
    
  }
  
  public void player2Wins() {
    println("player 2 (hearts) wins!");
    image(p2win, 200, 200);
    player2totalWon++;
    playAgain();
    
  }
  
  public void tieGame() {
    println("tie game!");
    image(tieGame, 200, 200);
    playAgain();
  }
  
  public void playAgain() {
    println("hit start to play again!");
    scoreReset();
    grid.uiSetup();
    
    gameCurrently = false;
  }
  
}
  





//check if there is a 0 in the array, is it empty?

//loop for row, loop for column. if the total of a row or column = a certain number, win condition
// make like 1 and 5, if we get 15 or 3, then we are a winner. diffrentiate by a lot, like no possible factors.

//diagonals: 00, 11, 22
//hard: 02, 11, 20

//algebra equation for the diagonals
