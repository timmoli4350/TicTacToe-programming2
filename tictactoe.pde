// Olivia Timmermann
// Programming II (Wolfe)
// A tic-tac-toe game. 
// themed hearts and bows! <3

int player1; //number of turns
int player2;

boolean player1turn = true;
boolean player2turn = false;

PImage pinkBow;
PImage pinkHeart;

public void setup() {
  pinkBow = loadImage("pinkribbon.png");
  pinkHeart = loadImage("pinkcakeheart.png");
  
  pinkBow.resize(150,150);
  pinkHeart.resize(150,150);
    
  size(1200, 900);
  background(#FADADD);
  gridSetup(gridWidth, gridHeight);
  uiSetup();
}

public void draw() {

}


//divide by 300 to get an int, multiply that by 300 then add 150 to get middle of the square

//ex click on 100, 
