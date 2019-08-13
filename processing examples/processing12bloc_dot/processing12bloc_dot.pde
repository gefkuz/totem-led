PImage dot;

void setup()
{
  size(3000, 1000);

  // Load a sample image
  dot = loadImage("color-dot.png");

  // Connect to the local instance of fcserver
  setup_totem_led ("10.21.0.220"); 
}


void draw()
{
  background(0);

  // Draw the image, centered at the mouse location
  float dotSize = height * 0.2;
  image(dot, mouseX - dotSize/2, mouseY - dotSize/2, dotSize, dotSize);
}
