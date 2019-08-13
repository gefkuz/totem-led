
ArrayList<Ball> Balls;

void setup() {
  size(3000, 1000);
  smooth();
  fill(0);
  noStroke();
  setup_totem_led ("10.21.0.220"); 

  Balls = new ArrayList<Ball>();
  int ivitesse = 5;
  for (int iNbre=0; iNbre<20; iNbre++)
  {
    Balls.add(new Ball(100, 100, (iNbre+10) * 4, ivitesse, ivitesse++));
  }
}

void draw() {
  background(0);
  for (int i = Balls.size() -1; i>=0; i--)
  {
    Ball myBall = Balls.get(i);
    myBall.run();
  }
}
