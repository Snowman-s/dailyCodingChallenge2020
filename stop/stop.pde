int a, i, y,w=500,g=10;
void setup() {
  size(500, 500);
  noStroke();
  clear();
}
void draw() {
  fill(0, 10);
  square(-9, -9, 900);
  a+=5;
  for (i=0; i<w; i+=g) {
    fill(255);
    y=a%w/g*g;
    if (y <= (int)(noise((a/w)+i)*w)/g*g)
      square(i,y, g);
  }
  saveFrame("frames/####.tif");
}
