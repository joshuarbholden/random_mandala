/*
This sketch builds on a prior work, "I don't even know what to call this", created by Federico Renteria
 http://studio.sketchpad.cc/sp/pad/view/ro.9Zcqp2HsPtlmR/rev.1325
 */

float x, theta1, theta2, xthick, ythick;

float side = 500, symmetry=8;
float xlocation = 500, ylocation = 500;

boolean stopped = false;

void setup() {
  frameRate(1);
  size(1000, 1000);
  //fullScreen();
  noStroke();
  ellipseMode(RADIUS);
}
void draw() {
  if (random(1)<0.05)
  {
    background(255, 255, 255);
  }
  x=random(side);
  //xthick = random(side);
  theta1=random(TWO_PI/symmetry);
  theta2=random(TWO_PI/symmetry);
  //ythick = random(side);
  fill(random(255), random(255), random(255));  
  ellipse(xlocation, ylocation, x, x);
  fill(random(255), random(255), random(255));    
  for (int i = 0; i < symmetry; i = i+1) {
    arc(xlocation, ylocation, x, x, theta1+2*PI*i/symmetry, theta1+theta2+2*PI*i/symmetry);
  }
}

void mousePressed() {
  if (!stopped) {
    stopped = true;
    noLoop();
  } else
  {
    stopped = false;
    loop();
  }
}
