public class Engine 
{
  Paddle p1;
  Paddle p2;
  Paddle p3;
  Paddle p4;
  public Engine()
  {
    p1 = new Paddle(1);
    p2 = new Paddle(2);
    p3 = new Paddle(3);
    p4 = new Paddle(4);  
  }
  void update()
  {
    p1.update();
    p2.update();
    p3.update();
    p4.update();
  }
}