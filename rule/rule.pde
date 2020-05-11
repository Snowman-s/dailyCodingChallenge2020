float i, r, a, h=250,y,x;
void setup() {
  size(500, 500);
  noStroke();
}
void draw() {
  clear();
  for (r=++a%2; r<400; r+=2) {
    for (i=r/99; i<TAU+r/99;) {
    if ((a-r)%98<30) {break;}
      fill(h-r);
      circle(x=h+r*cos(i+=PI/12),y=h+r*sin(i), 5);
      circle(2*h-x, y, 5);
    }
  }
  saveFrame("frames/####.tif");
}
