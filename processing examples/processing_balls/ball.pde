import java.util.*;

class Ball
{
  float x;
  float y;
  float speedX;
  float speedY;
  float speedYOrigine;
  float size;
 
  Random generator;
  float sd;
  float mean;
  
  float num;
  float r;
  float g;
  float b;
  
  Ball(float X, float Y, float SIZE, float SPEEDX, float SPEEDY)
  {
    x = X;
    y = Y;
    size = SIZE;
    speedX = SPEEDX;
    speedY = SPEEDY;
    speedYOrigine = speedY;
    generator = new Random();
    sd= 80.0;
    mean = 127.5;
    setColour ();
  }
  
  void run ()
  {
    display ();
    move();
    bounce();
    //gravity();
  }
  
  void gravity()
  {
    speedY += 2.5;
  }
  
  void setColour()
  {
    num  = (float)generator.nextGaussian();
    r = sd * num + mean;
    num  = (float)generator.nextGaussian();
    g = sd * num + mean;
    num  = (float)generator.nextGaussian();
    b = sd * num + mean;
  }
  
  void bounce()
  {
    if (x > width || x < 0)
    {
      speedX = speedX * -1;
    }
    if (y > height || y < 0)
    {
      speedY = speedY * -1;
    }    
  }
  
  void move ()
  {
    x+= speedX;
    y+= speedY;
  }
    
  void display ()
  {
    fill (r,g,b);
    ellipse (x,y,size, size);
  }
}
