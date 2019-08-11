OPC opc;
PImage dot;

void setup()
{
  size(3000, 1000);

  // Load a sample image
  dot = loadImage("color-dot.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "10.21.0.104", 7890);

  OPC_totem_led (opc, 72, 24);
}


void draw()
{
  background(0);

  // Draw the image, centered at the mouse location
  float dotSize = height * 0.2;
  image(dot, mouseX - dotSize/2, mouseY - dotSize/2, dotSize, dotSize);
}
