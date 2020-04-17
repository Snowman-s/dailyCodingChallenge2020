float t, r, R, a;
void setup() {
  size(500, 500);
  stroke(-1);
  strokeWeight(5);
}
void draw() {
  clear();
  a+=.05;
  for (t=0; t<TAU*2; t+=PI/30) {
    r= t*60;
    R = max(r-200, 0);
    line(250+r*cos(t+a), 250+r*sin(t+a), 
      250+R*cos(t+a), 250+R*sin(t+a));
  }
  saveFrame("frames/####.tif");
}
