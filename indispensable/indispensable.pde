float a, i,r;
void setup() {
  size(500, 500);
  noStroke();
}
void draw() {
  clear();
  a++;
  for (r=a%20; r<500; r+=20) {
    for (i=acos(cos(r/20))/9; i<TAU+acos(cos(r/20))/9; i+=PI/9) {
      circle(250+r*cos(i), 250+r*sin(i), 9);
    }
  }
  saveFrame("frames/####.tif");
}
