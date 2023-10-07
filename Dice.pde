Dice bob;
void setup()
{
background(255,255,255);
  size(500, 300);

  noLoop();
  
}
void draw()
{

   int x=0;
   int y=0;
   for (y=0;y<500;y+=60){
     for(x=0;x<=450;x+=60){
   Dice bob=new Dice(x,y);
 
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
  int myX;
  int myY;


  Dice(int x, int y)
  {

    myX=x;
    myY=y;
 
   
  }
  void toss()
  {

    num= ((int)(Math.random()*6)+1);
   
     
  }
 
  void show()
  {
   fill(0,0,0);
    square(myX,myY,50);
      fill(255,255,255);
     
      fill(0,0,0);
      if(num==1)
      {
        fill(255,255,255);
        ellipse(myX+25,myY+25,10,10);
        fill(0,0,0);
      }
      else if(num==2)
      {
        fill(255,255,255);
        ellipse(myX+13,myY+13,10,10);
        ellipse(myX+11+25,myY+11+25,10,10);
        fill(0,0,0);
      }
      else if(num==3)
      {
        fill(255,255,255);
        ellipse(myX+25,myY+13,10,10);
         ellipse(myX+25,myY+25,10,10);
           ellipse(myX+25,myY+37,10,10);
        fill(0,0,0);
      }
       else if(num==4)
      {
        fill(255,255,255);
        ellipse(myX+10,myY+10,10,10);
         ellipse(myX+40,myY+10,10,10);
           ellipse(myX+10,myY+40,10,10);
             ellipse(myX+40,myY+40,10,10);
        fill(0,0,0);
      }
        else  if(num==5)
      {
        fill(255,255,255);
        ellipse (myX+10,myY+10,10,10);
         ellipse(myX+40,myY+10,10,10);
           ellipse(myX+10,myY+40,10,10);
             ellipse(myX+40,myY+40,10,10);
              ellipse(myX+25,myY+25,10,10);
        fill(0,0,0);
      }
     else  
      {
        fill(255,255,255);
        ellipse(myX+10,myY+13,10,10);
         ellipse(myX+10,myY+25,10,10);
           ellipse(myX+10,myY+37,10,10);
                 ellipse(myX+40,myY+13,10,10);
         ellipse(myX+40,myY+25,10,10);
           ellipse(myX+40,myY+37,10,10);
        fill(0,0,0);
      }
}

}
