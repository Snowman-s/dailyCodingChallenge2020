float a, t, x, y, h=250;
void setup() {
  size(500, 500);
  stroke(h);
  noFill();
}
void draw() {
  clear();
  circle(x=h+h*cos(t=sin(++a/40)/2+PI/2), y=h*sin(t), 30);
  line(h, 0, x, y);
  for (x=a%40; x<900; x+=40)
    circle(h+h*cos(t=sin((a-x)/40)/2+PI/2), h*sin(t), x);
    saveFrame("frames/####.tif");
}
