float a, r;
void setup() {
  size(500, 500);
  noFill();
}
void draw() {
  clear();
  a+=2;
  for (r=a%50; r<500; r+=50) {
    stroke(255*(500-r)/500);
    circle(250+50*sin((a-r)/99), 250+50*cos((a-r)/99), r);
  }
  saveFrame("frames/####.tif");
}
