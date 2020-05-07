float a,x, y,h=250;
void setup() {
  size(500, 500);
  stroke(-1);
}
void draw() {
  clear();
  a+=PI/120;
  fill(-1);
  for (y=0; y<500; y+=10) {
    circle(x=h+h* sin(a+y/60), y, 9);
    line(h,h,x,y);
  }
  fill(#FF0000);
  circle(h, h, 10);
  saveFrame("frames/####.tif");
}
