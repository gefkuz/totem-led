OPC opc;
PImage dot;

void setup()
{
  size(500, 1000);

  // Load a sample image
  dot = loadImage("dot.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "10.21.0.220", 7890);

  gridOPC (opc, 12, 24);
}

void gridOPC (OPC opc, int gridwidth, int gridheight)
{
//  opc.ledRing(0, 24, gridwidth/2, gridheight/2, gridwidth*0.18, 0);
  
  // original
//  for(int i=0; i<24; i++) {
//    opc.ledStrip(i * 60, 60, i * width / 24.0 + width / 48.0,
//      height * 0.5, width / 24.0, PI * 0.5, false);
//  }
  
  // for this design
  int nombreverticalblocs=gridheight/6;
  int index;
  int opo_angle = 1;
  int igridheight=0;
  for (; igridheight<(gridheight/6); igridheight++){
    println("gridheight", igridheight);
    opo_angle = 1;
    for(int i=0; i<gridwidth; i++) {
      println("gridwidth", i);
      index = igridheight*6+i*nombreverticalblocs*6;
      println("index", index);
      println ("y", (height/nombreverticalblocs) * (igridheight+1) * 0.5);
      opc.ledStrip(index, 6, i * width / gridwidth + width / (gridwidth*2),
        (height*0.5/nombreverticalblocs) + (igridheight * height/nombreverticalblocs), width / gridwidth, opo_angle * PI * 0.5, false);
      opo_angle = opo_angle * -1;
    }
  }
}

void drawDot(float angle, float distance, float size)
{
  image(dot, width/2 - distance * sin(angle) - size/2,
    height/2 - distance * cos(angle) - size/2, size, size);
}

void draw()
{
  background(0);

  float a = millis();

  blendMode(ADD);
  tint(40, 100, 40);
  drawDot(a * -0.002, width*0.4, width*1.1);
  tint(155, 155, 155);
  drawDot(a * -0.003, width*0.4, width*1.1);
  tint(90, 90, 155);
  drawDot(a *  0.001, width*0.4, width*1.1);
}
