float a, t, r, d;
void setup() {
  size(500, 500);
  noStroke();
  clear();
}
void draw() {
  fill(0,9);
  square(0,0,500);
  t+=.5;
  t%=60;

  fill(#00FF00);
  for (d=0; d<PI/2; d+=PI/24) {
    r=pow((float)Math.E, (t+d)/10);
    circle(250+r*cos(t+d), 250+r*sin(t+d), 9);
  }
  saveFrame("frames/####.tif");
}
