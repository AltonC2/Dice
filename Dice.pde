public int total;
void setup()
{
  background(0);
  size(660, 660);
  
  noLoop();
  
}
void draw()
{
  noLoop();
  fill(255);
  ellipse(320,50,100,50);
  fill(0);

  total = 0;
  for ( int i = 100; i<=600;i+=100){
    for (int p = 100; p<600; p+=100){
     Die what = new Die(i,p);
  what.roll();
  what.show();
  }
  }
    text("Total: " + total,300,50);
  
 
  
  //your code here
}
void mousePressed()
{
  redraw();
  
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX;
  int myY;
  int diceRoll;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;//variable initializations here
  }
  void roll()
  {
    diceRoll = (int)(Math.random()*6)+1;
    total = total + diceRoll;
  }
  void show()
  {
    fill(255);
    rect(myX-25, myY-25, 50, 50);
    fill(0);
    if (diceRoll ==1){
      ellipse (myX, myY, 12, 12);
    }
    else if (diceRoll==2){
      ellipse (myX-10, myY-10, 10, 10);
    ellipse (myX+10, myY+10, 10, 10);
    }
    else if (diceRoll==3){
      ellipse (myX-15, myY-15, 10, 10);
    ellipse (myX+15, myY+15, 10, 10);
    ellipse (myX, myY, 10, 10);
    }
    else if (diceRoll==4){
      ellipse (myX-12, myY-12, 10, 10);
    ellipse (myX+12, myY+12, 10, 10);
    ellipse (myX+12, myY-12, 10, 10);
    ellipse (myX-12, myY+12, 10, 10);
    }
    else if (diceRoll==5){
      ellipse (myX-15, myY-15, 10, 10);
    ellipse (myX+15, myY+15, 10, 10);
    ellipse (myX+15, myY-15, 10, 10);
    ellipse (myX-15, myY+15, 10, 10);
    ellipse (myX, myY, 10, 10);
    }
    else {
      ellipse (myX+10, myY+15, 10, 10);
    ellipse (myX+10, myY, 10, 10);
    ellipse (myX+10, myY-15, 10, 10);
    ellipse (myX-10, myY+15, 10, 10);
    ellipse (myX-10, myY, 10, 10);
    ellipse (myX-10, myY-15, 10, 10);
    }
    //your code here
  }
}
