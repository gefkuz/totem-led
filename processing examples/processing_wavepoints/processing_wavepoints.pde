
int frames = 200, num=20, loLimit=980, hiLimit=20, rs;
float theta, sz=60, scal, edge, step;
color[] palette = {
  #A0ECD0, #ECD893, #E7AF7E, #B78376
};
color f;

void setup() {
  size(3000, 1000);
  noStroke();
  edge=600;
  step=(width-2*edge)/num;

  setup_totem_led ("10.21.0.220"); 
//  setup_totem_led ("127.0.0.1");
}

void draw() {
  randomSeed(rs);
  background(#000000);
  int i=0;
  for (int j=0; j<2; j++) {
    for (int x=50; x<2950; x+=step) { 
      float y = map(sin(j*PI/8+theta+(TWO_PI/num*i)), -1, 1, loLimit, hiLimit);
      for (int h=0; h<4; h++) {
        f= palette[j%4];
        fill(f, h*200);
        if (y>=hiLimit-100 && y<=loLimit) 
          scal = map(y, loLimit-100, hiLimit, 1, 2.8-h*.3);
        ellipse(x, y, sz*scal, sz*scal);
      }
      fill(f);
      ellipse(x, y, sz, sz);
      i++;
    }
  }

  theta += TWO_PI/frames;
  //if (frameCount<frames+1) saveFrame("image-###.gif");
}
