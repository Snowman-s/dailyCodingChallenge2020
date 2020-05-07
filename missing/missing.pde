float a, i, x, y, w=500;
void setup() {
  size(500, 500);
}
void draw() {
  clear();
  for (i=a+=PI/90; i<TAU+a;) {
    stroke(-1, (1-cos(a))/2*250);
    line(x=250+200*sin(a/2)+90*cos(i+=PI/9), y=250+90*sin(i), x, w-y);
    stroke(-1);
    line(w-x, y, w-x, w-y);
  }
  saveFrame("frames/####.tif");
}
