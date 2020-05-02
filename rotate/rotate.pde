float a,i,r;
void setup() {
  size(500, 500);
  noStroke();
  clear();
}
void draw() {
  a+=PI/120;
  for (i=a; i<TAU+a; i+=PI/3) {
    r=tan(a*.8)*125;
    circle(250+r*cos(i),250+r*sin(i),3);
  }
  saveFrame("frames/####.tif");
}
