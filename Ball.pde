public class Ball
{
  int score;
  int x;
  int y;
  int c;
  int z;
  int type;
  public Ball(int x, int y, int type)
  {
    score = 0;
    this.type = type;
    this.x = x;
    this.y = y;
    c = (int)(Math.random()*2)+1;
    z= (int)(Math.random()*2)+1;
  }
  void update()
  {
    if(type==1)
    {
      fill(255,0,0);
    }
    if(type==2)
    {
      fill(0,255,0);
    }
    ellipse(x,y,20,20);
    x=x+c;
    y = y+z;
  }
  void ifTouching(Paddle p)
  {
    if(p.type==1)
    {
      if(this.x<20&&this.y<p.y+100&&this.y>p.y)
      {
        c=-1*c;
        x=x+5;
        score++;
      }
    }
    if(p.type==2)
    {
      if(this.x>680&&this.y<p.y+100&&this.y>p.y)
      {
        c=-1*c;
        x=x-5;
        score++;
      }
    }
    if(p.type==3)
    {
      if(this.y<20&&this.x<p.x+100&&this.x>p.x)
      {
        z=-1*z;
        y=y+5;
        score++;
      }
    }
    if(p.type==4)
    {
      if(this.y>680&&this.x<p.x+100&&this.x>p.x)
      {
        z=-1*z;
        y=y-5;
        score = score + 1;
      }
    }
    
  }
}