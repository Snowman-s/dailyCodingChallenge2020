float a, r, h=250, l=100, L=200, d=PI/480;
void setup() {
  size(500, 500);
  strokeWeight(10);
  fill(0, 0, l);
  stroke(h);
}
void draw() {
  a+=d;
  r+=abs(sin(a))*PI*d;
  circle(h, h, 500);
  line(h+L*cos(r*24), h+L*sin(r*24), h, h);
  line(h+l*cos(r), h+l*sin(r), h, h);
  saveFrame("frames/####.tif");
}
