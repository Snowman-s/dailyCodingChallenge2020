float a;
void setup() {
  size(500, 500);
  clear();
  noStroke();
  fill(-1,100);
}
void draw() {
  circle(250+200*cos(a+=PI/120),250+200*cos(a*.65), 5);
  saveFrame("frames/####.tif");
}
