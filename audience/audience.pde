float i, r, j,d;
void setup() {
  size(500, 500);
}
void draw() {
  clear();
  j+=PI/60;
  for (i=j/4; i<TAU+j/4; i+=PI/20) {
    for (r=60; r<260; r+=10) {
      d=sin(r*PI/120+j)*50;
      square(245+r*cos(i), 245+r*sin(i)+(d<0?d:0), 10);
    }
  }
  saveFrame("frames/####.tif");
}
