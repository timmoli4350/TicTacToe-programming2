// Olivia Timmermann
// Programming II (Wolfe)
// A tic-tac-toe game. 
// themed hearts and bows! 

int player1moves = 0; //number of turns, used to check for a total of 9 (tie)
int player2moves = 0;

int player1totalWon = 0; //counter of times each player has won
int player2totalWon = 0;

boolean player1turn = false; //booleans for each player turn, start false
boolean player2turn = false;

boolean gameCurrently = false;

  int gridWidth = 3; //these variables can be changed to have 
  int gridHeight = 3; //different sized grids
  int gridWidthPoints = 900;
  int gridHeightPoints = 900;

PImage pinkBow; //define all images
PImage pinkHeart;
PImage p1win;
PImage p2win;
PImage tieGame;
PFont textFont; //define font (Perpetua)

Grid grid; //instantiate the grid, score classes
Score score;

void setup() { //setup: load images, text, create window, grid functions
  pinkBow = loadImage("pinkribbon.png");
  pinkHeart = loadImage("pinkcakeheart.png");
  p1win = loadImage("p1win.png");
  p2win = loadImage("p2win.png");
  tieGame = loadImage("tiegame.png");
  
  textFont = createFont("Perpetua", 60); //create a new font
  
  pinkBow.resize(150,150); //resize the markers
  pinkHeart.resize(150,150);
    
  size(1200, 900); //setup the window
  background(#FADADD);
  
  first(); //randomizer for which player starts
  
  grid = new Grid(gridWidth, gridHeight); //creates a new grid with our chosen w/h
  grid.gridSetup(gridWidth, gridHeight); //instantiates
  grid.uiSetup(); //UI setup
  
  score = new Score(); //
  score.scoreReset(); //resets the score at the end of each 
}

void draw() { //nessecary for mousePressed to run
  
}

public void mousePressed() { //all functions that require mouse clicking
    if (mouseX > 950 && mouseX < 1150 && mouseY > 550 && mouseY < 650) { //within the confines of the start button
      println("start game");
      setup(); //for restarts
      fill(#FF93B3);
      stroke(#FFFFFF);
      rect(950, 550, 200, 100); //start button
      if (player1turn) { //prints the output of our earlier randomizer
        text("Player 1 (bows)", 960, 780);
      } else if (player2turn) {
        text("Player 2 (hearts)", 960, 780);
      }
      gameCurrently = true; //allows players to place on board
    }
    
    if (mouseX < gridWidthPoints && mouseY < gridHeightPoints && gameCurrently) { //checks if there is a current game, and if it is within the board
      if (player1turn){
        score.playGame(); //whoever's turn -> adding to our total
      }
      else if (player2turn) {
        score.playGame();
      }
    }
  }
  
public void first() { //randomizer for which player starts
  if (Math.random() > 0.5) { //math.random selects a float between 0.0 and 1.0, so 0.5 as a midpoint
    player1turn = true;
  } else {
    player2turn = true;
  }
}
    
  
  //quick drafting notes
  
  //start: randomly generate a number that decides 0-1 who starts first
  // check if the thing is open (0), if it is, add a 1 or a 5, 
  //runthrough, check if its = 3 or =15
  //if 9 turns, or 9 mousepresses pass, then we tie. 
  
  //boolean, end the game. attach to button
