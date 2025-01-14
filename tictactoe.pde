// Olivia Timmermann
// Programming II (Wolfe)
// A tic-tac-toe game. 
// themed hearts and bows! <3

int player1; //number of turns
int player2;

boolean player1turn = true;
boolean player2turn = false;

  int gridWidth = 3; //these variables can be changed to have 
  int gridHeight = 3; //different sized grids
  int gridWidthPoints = 900;
  int gridHeightPoints = 900;

PImage pinkBow;
PImage pinkHeart;

Grid grid; //instantiate the grid 

public void setup() {
  pinkBow = loadImage("pinkribbon.png");
  pinkHeart = loadImage("pinkcakeheart.png");
  
  pinkBow.resize(150,150);
  pinkHeart.resize(150,150);
    
  size(1200, 900);
  background(#FADADD);
  grid = new Grid(gridWidth, gridHeight);
  grid.gridSetup(gridWidth, gridHeight);
  grid.uiSetup();
}

public void draw() {

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
