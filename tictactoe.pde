// Olivia Timmermann
// Programming II (Wolfe)
// A tic-tac-toe game. 
// themed hearts and bows! <3

int player1; //number of turns
int player2;

boolean player1turn = false;
boolean player2turn = false;

  int gridWidth = 3; //these variables can be changed to have 
  int gridHeight = 3; //different sized grids
  int gridWidthPoints = 900;
  int gridHeightPoints = 900;

PImage pinkBow;
PImage pinkHeart;

Grid grid; //instantiate the grid 
Score score;

void setup() {
  pinkBow = loadImage("pinkribbon.png");
  pinkHeart = loadImage("pinkcakeheart.png");
  
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
