float a, i, y, x,w=500;
void setup() {
  size(500, 500);
  stroke(-1);
  strokeWeight(9);
  noFill();
}
void draw() {
  a+=3;
  background(99,0,99);
  for (y=-a%30; y<600; y+=30) {
    x=sin(y/50+a/40)*(w-y)/3F;
    circle(250+x, y, (w-y)/5+10);
    circle(250-x, y, (w-y)/5+10);
  }
  saveFrame("frames/####.tif");
}
