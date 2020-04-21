float a, x, y;
void setup() {
  size(1000, 500);
  clear();
}
void draw() {
  fill(0);
  square(0, 0, 500);
  fill(-1);
  circle(x=250+60*cos(a+=PI/120), y=250+60*sin(a), 300);
  fill(#EEEE00);
  circle(x=x+60*cos(a*.6), y=y+60*sin(a), 90);
  noStroke();
  circle(x+500, y, 3);

  saveFrame("frames/####.tif");
  if (frameCount == 1220) {
    saveFrame("out.png");
  }
}
