OPC opc;
PImage dot;

void setup()
{
  size(3000, 1000);

  // Load a sample image
  dot = loadImage("dot.png");

  opc = new OPC(this, "10.21.0.220", 7890);
  opc.setInterpolation(true);
  OPC_totem_led (opc, 72, 24);
}

void drawDot(float angle, float distance, float size)
{
  image(dot, 500 - distance * sin(angle) - size/2,
    height/2 - distance * cos(angle) - size/2, size, size);
}

void draw()
{
  background(0);

  float a = millis();

  blendMode(ADD);
  tint(40, 100, 40);
  drawDot(a * -0.002, height*0.4, height*0.8);
  tint(155, 155, 155);
  drawDot(a * -0.003, height*0.4, height*0.8);
  tint(90, 90, 155);
  drawDot(a *  0.001, height*0.4, height*0.8);
}
