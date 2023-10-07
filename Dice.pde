public int total;
void setup()
{
  background(0);
  size(420, 300);

  noLoop();

}
void draw()
{
  noLoop();
  fill(255);
  rect(210,150,100,50);
  fill(0);
  text("Total: " + total,210,150);
  total = 0;
for (y=30;y<400;y+=60){
     for(x=30;x<=240;x+=60){
     Die what = new Die(y,x);
  what.roll();
  what.show();
  }
  }


 

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
