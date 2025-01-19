// Olivia Timmermann
// Programming II (Wolfe)
// A tic-tac-toe game. 
// themed hearts and bows! <3

int player1moves = 0; //number of turns
int player2moves = 0;


boolean player1turn = false;
boolean player2turn = false;

boolean gameCurrently = false;

  int gridWidth = 3; //these variables can be changed to have 
  int gridHeight = 3; //different sized grids
  int gridWidthPoints = 900;
  int gridHeightPoints = 900;

PImage pinkBow;
PImage pinkHeart;
PFont textFont;


Grid grid; //instantiate the grid 
Score score;

void setup() {
  pinkBow = loadImage("pinkribbon.png");
  pinkHeart = loadImage("pinkcakeheart.png");
  textFont = createFont("Perpetua", 60);
  //textFont = createFont("Courier", 60);
  
  pinkBow.resize(150,150);
  pinkHeart.resize(150,150);
    
  size(1200, 900);
  background(#FADADD);
  
  first();
  
  grid = new Grid(gridWidth, gridHeight);
  grid.gridSetup(gridWidth, gridHeight);
  grid.uiSetup();
  
  score = new Score();
  score.scoreReset();
}

void draw() {

}

public void mousePressed() {
  
    if (mouseX > 950 && mouseX < 1150 && mouseY > 550 && mouseY < 650) { //within the confines of the start button
      println("start game");
   
      setup();
      fill(#FF93B3);
      rect(950, 550, 200, 100);
    
      gameCurrently = true;
    }
    
    if (mouseX < gridWidthPoints && mouseY < gridHeightPoints && gameCurrently) {
      
      if (player1turn == true){
        score.playGame();
      }
      
      else if (player2turn == true) {
        score.playGame();
      }
    }
  }
  
public void first() {
  if (Math.random() > 0.5) {
    player1turn = true;
  } else {
    player2turn = true;
  }
}
    
  
  
  
  //start: randomly generate a number that decides 0-1 who starts first
  // check if the thing is open (0), if it is, add a 1 or a 5, 
  //runthrough, check if its = 3 or =15
  //if 9 turns, or 9 mousepresses pass, then we tie. 
  
  //boolean, end the game. attach to button
