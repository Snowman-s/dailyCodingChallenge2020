float a, f;
void setup() {
  size(500, 500);
  strokeWeight(3);
}
void draw() {
  clear();
  a+=.02;
  stroke(acos(cos(a))*80);
  for (f=0; f<TAU; f+=PI/20)
    line(250+250*cos(f), 250+250*sin(f), 250 +250*cos(f+a), 250+250*sin(f-a));
  saveFrame("frames/####.tif");
}
