float a, r, i, t,h=250;
void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB);
}
void draw() {
  clear();

  a+=PI/120;
  for (r=0; r<400; r+=9) {
    fill(h/400*r,h,h);
    for (i=0; i<TAU; i+=PI/4) {
      circle(h+r*cos(t=i+cos(r+a)/5), h+r*sin(t), 9);
    }
  }
  saveFrame("frames/####.tif");
}
