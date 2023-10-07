Dice bob;
void setup()
{

  size(500, 300);
  textAlign(50,50);
  noLoop();
  bob=new Dice(100,200);
}
void draw()
{
   int x=0;
   int y=0;
   for (y=0;y<500;y+=60){
     for(x=0;x<=450;x+=60){
   bob=new Dice(x,y);
 
  bob.toss();
  bob.show();

 
     }
   }
}
void mousePressed()
{
  redraw();
}
class Dice
{
  //three member variables
  int num;
  int myX, myY;

  //three member functions
  Dice(int x, int y) //constructor
  {
    //java code
    myX=x;
    myY=y;
    num=(int)(Math.random()*6)+1;
   
  }
  void toss()
  {
    //java code
    num= ((int)(Math.random()*6)+1);
   
     
  }
 
  void show()
  {
   
    square(myX,myY,50);
      fill(365,365,365);
     
      fill(0,0,0);
      if(num==1)
      {
        fill(360,360,360);
        circle(myX+25,myY+25,10);
        fill(0,0,0);
      }
      if(num==2)
      {
        fill(360,360,360);
        circle(myX+13,myY+13,10);
         circle(myX+11+25,myY+11+25,10);
        fill(0,0,0);
      }
      if(num==3)
      {
        fill(360,360,360);
        circle(myX+25,myY+13,10);
         circle(myX+25,myY+25,10);
           circle(myX+25,myY+37,10);
        fill(0,0,0);
      }
       if(num==4)
      {
        fill(360,360,360);
        circle(myX+10,myY+10,10);
         circle(myX+40,myY+10,10);
           circle(myX+10,myY+40,10);
             circle(myX+40,myY+40,10);
        fill(0,0,0);
      }
         if(num==5)
      {
        fill(360,360,360);
        circle(myX+10,myY+10,10);
         circle(myX+40,myY+10,10);
           circle(myX+10,myY+40,10);
             circle(myX+40,myY+40,10);
                circle(myX+25,myY+25,10);
        fill(0,0,0);
      }
       if(num==6)
      {
        fill(360,360,360);
        circle(myX+10,myY+13,10);
         circle(myX+10,myY+25,10);
           circle(myX+10,myY+37,10);
                 circle(myX+40,myY+13,10);
         circle(myX+40,myY+25,10);
           circle(myX+40,myY+37,10);
        fill(0,0,0);
      }
}

}

