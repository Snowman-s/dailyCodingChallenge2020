float y=2000,p;
void setup() {
  size(500, 500);
  textSize(99);
}
void draw() {
  clear();
  y-=.02;
  for (int i=-1; ++i<4;) {
    clip(100+i*63, 170, 63, 83);
    p=pow(10, 3-i);
    text(nf(y), 100, 250-y%p/p*83+83);
    text(nf(y-p), 100, 250-y%p/p*83);
  }
  saveFrame("frames/####.tif");
}
