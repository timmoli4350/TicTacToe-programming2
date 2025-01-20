class Score { // scoring class, array. prints to console to check for errors 

  int [][] score = new int[3][3]; //create our array (3x3)
  
  int row = 0; // row: int of which row the mousePressed is in
  int col = 0; // col: see above, col instead
  int total = 0; // total moves made, = 9 is a tie
  
  public void scoreReset(){ //resets the score, called at start of games
    for (int row = 0; row < 3; row++) { //iterates through each row
      for (int col = 0; col < 3; col++) { //iterates through each column of each row
        score[row][col] = 0; //equates current place to 0
    }
   }
     player1moves = 0; //resets for start of new game
     player2moves = 0;
  }
    
  public void playGame() { //runs all of our checker functions
    checkRow();
    checkCol();
    isEmptySquare();
    checkAll();
  }
  
  public void checkRow() { //returns the mousePressed row as an int
    row = mouseX/300;
  }
  
  public void checkCol() { //returns the mousePressed column as an int
    col = mouseY/300;
  }
  
  public void isEmptySquare() { //can we place here? to avoid overlaps
  
    if (score[row][col] == 0) {
      
      if (player1turn) { //if we can place here, define the array place as a "1", switch turns, place image.
        image(pinkBow, (mouseX/300)*300 + 75, (mouseY/300)*300 + 75);
         player1turn = false;
         player2turn = true;
         player1moves++;
         println("player 2 turn");
         
         score[row][col] = 1;

      }
      
      else if (player2turn) { //if we can place here, define the array place as a "4", switch turns, place image.
        image(pinkHeart, (mouseX/300)*300 + 75, (mouseY/300)*300 + 75);
        player1turn = true;
        player2turn = false;
        player2moves++;
        println("player 1 turn");
        
        score[row][col] = 4;
      }
    }
  }
  
  public void checkAll() { //loops through all parts then calls isWinner 
    //rows
    for (int row = 0; row < score.length; row++) { //iterates through all rows, adding each up
      total = 0; //reset between rows
      for (int col = 0; col < score[0].length; col++) {
        total += score[row][col];
        isWinner();
      }
    }
      
     //columns
     for (int col = 0; col < score[0].length; col++) { //iterates through all columns, adding each up
      total = 0; //reset between columns
      for (int row = 0; row < score.length; row++) {
        total += score[row][col];
        isWinner(); 
      }
    }
    
    //diagonal: RIGHT TO LEFT
    total = 0;
    for (int row = 0; row < score.length; row++) {
      col = (score.length - 1) - row; //score.length-1 (2, as its 0-2 for each), then subtract the row for a backwards diagonal
      total += score[row][col]; //add to the 
    }
    isWinner(); //called after the loop as it only runs once
    
    //diagonal: LEFT TO RIGHT
    total = 0;
    for (int row = 0; row < score.length; row++) {
      total += score[row][row]; //both are row, as the two numbers are equal for a forward diagonal (left to right)
    }
    isWinner(); //called after the loop as it only runs once
    
    if (player1moves + player2moves == 9) { //after checking all of the above, if there were 9 moves and no result then we tie
      tieGame();
    }
  }
  
  public void isWinner() { //adds up parts of the loops
    if (total == 3) { //for 1 + 1 + 1 = 3 
      player1Wins();
      
    } else if (total == 12) { //for 4 + 4 + 4 = 12
      player2Wins();
    }
  }
  
  
  public void player1Wins() { //spawn the image for a p1win, play again function
    println("player 1 (bows) wins!");
    image(p1win, 200, 200);
    player1totalWon++;
    playAgain();
  }
  
  public void player2Wins() { //spawn the image for a p2win, play again function
    println("player 2 (hearts) wins!");
    image(p2win, 200, 200);
    player2totalWon++;
    playAgain();
  }
  
  public void tieGame() { //spawn the image for a tie, play again function
    println("tie game!");
    image(tieGame, 200, 200);
    playAgain();
  }
  
  public void playAgain() { //resets the board, turns off board placement
    println("hit start to play again!");
    scoreReset();
    grid.uiSetup();
    gameCurrently = false;
  }
}
  



//quick drafting notes 

//check if there is a 0 in the array, is it empty?

//loop for row, loop for column. if the total of a row or column = a certain number, win condition
// make like 1 and 5, if we get 15 or 3, then we are a winner. diffrentiate by a lot, like no possible factors.

//diagonals: 00, 11, 22
//hard: 02, 11, 20

//algebra equation for the diagonals?
