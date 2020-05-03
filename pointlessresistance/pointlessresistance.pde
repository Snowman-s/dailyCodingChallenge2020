float r, x=125, y=99, d=3, e=2, t,h=250;
void setup() {
  size(500, 500);
  stroke(-1);
  noFill();
}
void draw() {
  clear();  
  circle(h, h, r=400);

  if (sq(x-h)+sq(y-h)>r*r/4) {
    d=3*cos(t=atan2(h-y, h-x)*2-atan2(-e, -d));
    e=3*sin(t);
  }

  circle(x+=d, y+=e, 20);
  
  saveFrame("frames/####.tif");
}
