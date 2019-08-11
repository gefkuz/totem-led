void OPC_totem_led (OPC opc, int gridwidth, int gridheight)
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
//    println("gridheight", igridheight);
    opo_angle = 1;
    for(int i=0; i<gridwidth; i++) {
//      println("gridwidth", i);
      index = igridheight*6+i*nombreverticalblocs*6;
//      println("index", index);
//      println ("y", (height/nombreverticalblocs) * (igridheight+1) * 0.5);
      opc.ledStrip(index, 6, i * width / gridwidth + width / (gridwidth*2),
        (height*0.5/nombreverticalblocs) + (igridheight * height/nombreverticalblocs), width / gridwidth, opo_angle * PI * 0.5, false);
      opo_angle = opo_angle * -1;
    }
  }
}
