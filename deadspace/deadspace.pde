float a, i, x, y, r;
void setup() {
  size(500, 500);
  noFill();
  stroke(-1);
}
void draw() {
  clear();
  circle(x=250+50*cos(a+=PI/120), y=250+50*sin(a), 200);
  for (i=0; i<TAU;circle(x+(r=99+50*(1-sin((i+a)*6))*sin(a))*cos(i+=PI/60), y+r*sin(i), 10));

saveFrame("frames/####.tif");
}
