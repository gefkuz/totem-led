PImage im, im2;
String imageName = "BetaMachine - Logo - B seul.png";

float x, y;
float x2;
float dim = 80.0;
float ratioIm;
float step = 20.0;
float offsetim, offsetim2;
float origine;

void setup()
{
  size(3000, 1000);

  // Load a sample image
  im = loadImage(imageName);
  im2 = loadImage(imageName);
  ratioIm = float(im.width);
  ratioIm = ratioIm / float(im.height);
  offsetim = - 0;//(height * ratioIm);
  offsetim2 = - width + 1000;//(im.height*ratioIm); // - (height * ratioIm) - width;
  origine = offsetim2;
  x= origine;
  x2 = 0;

  // Connect to the local instance of fcserver
  setup_totem_led ("10.21.0.220"); 
}


void draw()
{
  background(0);

  x = x + step;
  x2 = x2 + step;
  
  if (x > (width)){
    x = -1000;
  } 
  
  if (x2 > (width)){
    x2 = -1000;
  } 
  
  println (x);
  println (x2);
  println (" ");

  // Use two copies of the image, so it seems to repeat infinitely  
  //image(im, 0, y, width, imHeight);
  
  image(im, x, 0 , height*ratioIm, height);
  image(im2, x2, 0 , height*ratioIm, height);
}
