public class Paddle 
{
  int type;
  int x;
  int y;
  public Paddle(int Type)
  {
    type = Type;
    if(type ==1)
    {
      x=0;
      y=350;
    }
    if (type ==2)
    {
      x=680;
      y=350;
    }
    if(type ==3)
    {
      x=350;
      y=0;
    }
    if(type==4)
    {
      x=350;
      y=680;
    }
  }
  void update()
  {
    if(type==1)
    {
      fill(255);
      rect(x,y,20,100);
    }
    if(type==2)
    {
      fill(255);
      rect(x,y,20,100);
    }
    if(type==3)
    {
      fill(255);
      rect(x,y,100,20);
    }
    if(type==4)
    {
      fill(255);
      rect(x,y,100,20);
    }
    
  }
}