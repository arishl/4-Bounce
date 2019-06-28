
PFont font;
Paddle p1;
Paddle p2;
Paddle p3;
Paddle p4;
Ball b;
Ball c;
Ball d;

void setup()
{
  font = createFont("LetterGothicStd.ttf", 32);
  b = new Ball(30,200,1);
  c = new Ball(30,200,2);
  d = new Ball(30,200,3);
  p1 = new Paddle(1);
  p2 = new Paddle(2);
  p3 = new Paddle(3);
  p4 = new Paddle(4); 
  size(700,700);
}
void draw()
{
 background(0);
 text("SCORE: "+(b.score+c.score*3+d.score*5),350,350);
 b.ifTouching(p1);
 b.ifTouching(p2);
 b.ifTouching(p3);
 b.ifTouching(p4);
 c.ifTouching(p1);
 c.ifTouching(p2);
 c.ifTouching(p3);
 c.ifTouching(p4);
 d.ifTouching(p1);
 d.ifTouching(p2);
 d.ifTouching(p3);
 d.ifTouching(p4);
 b.update();
 p1.update();
 p2.update();
 p3.update();
 p4.update();
 keyPressed();
 if(b.y<0||b.y>700||b.x<0||b.x>700)
 {
   b = new Ball(30,200,1);
   c = new Ball(30,200,2);
   d = new Ball(30,200,3);
   b.score = 0;
 }
 if(b.score > 20)
 {
   c.update();
 }
 if (b.score+c.score>40)
 {
   d.update();
 }
}
void keyPressed()
{
  if(key == 'w')
  {
    if(p1.y>0)
    {
      p1.y=p1.y-3;
    }
    if(p2.y<600)
    {
      p2.y=p2.y+3;
    }
  }
  if(key=='s')
  {
    if(p1.y<600)
    {
      p1.y=p1.y+3;
    }
    if(p2.y>0)
    {
      p2.y=p2.y-3;
    }
  }
  if(key=='a')
  {
    if(p3.x>0)
    {
      p3.x=p3.x-3;
    }
    if(p4.x<600)
    {
      p4.x=p4.x+3;
    }
  }
  if(key=='d')
  {
    if(!(p3.x>600))
    {
      p3.x=p3.x+3;
    }
    if(p4.x>0)
    {
      p4.x=p4.x-3;
    }  
  }
}