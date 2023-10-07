Dice bob;
void setup()
{
background(360,360,360);
  size(500, 300);
  textAlign(50,50);
  noLoop();
  bob=new Dice(100,200);
}
void draw()
{
rectangle(50,50,50,50);
square(80,80,50);
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

  int num;
  int myX, myY;


  Dice(int x, int y)
  {

    myX=x;
    myY=y;
    num=(int)(Math.random()*6)+1;
   
  }
  void toss()
  {

    num= ((int)(Math.random()*6)+1);
   
     
  }
 
  void show()
  {
   fill(0,0,0);
    square(myX,myY,50);
      fill(365,365,365);
     
      fill(0,0,0);
      if(num==1)
      {
        fill(360,360,360);
        circle(myX+25,myY+25,10);
        fill(0,0,0);
      }
      else if(num==2)
      {
        fill(360,360,360);
        circle(myX+13,myY+13,10);
         circle(myX+11+25,myY+11+25,10);
        fill(0,0,0);
      }
      else if(num==3)
      {
        fill(360,360,360);
        circle(myX+25,myY+13,10);
         circle(myX+25,myY+25,10);
           circle(myX+25,myY+37,10);
        fill(0,0,0);
      }
       else if(num==4)
      {
        fill(360,360,360);
        circle(myX+10,myY+10,10);
         circle(myX+40,myY+10,10);
           circle(myX+10,myY+40,10);
             circle(myX+40,myY+40,10);
        fill(0,0,0);
      }
        else  if(num==5)
      {
        fill(360,360,360);
        circle(myX+10,myY+10,10);
         circle(myX+40,myY+10,10);
           circle(myX+10,myY+40,10);
             circle(myX+40,myY+40,10);
                circle(myX+25,myY+25,10);
        fill(0,0,0);
      }
     else  
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
