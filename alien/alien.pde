float a, i, r,h=245,H=120;
void setup() {
  size(500, 500);
}
void draw() {
  noStroke();
  a+=PI/H;
  clear();
  for (i=0; i<TAU; i+=TAU/H) {
    r = 30 * (1-cos(a)) * (1-cos(i*10+a))  + H;
    square(h+r * cos(i), h+r * sin(i), 10);
  }
  rect(200,h,10,30);
  rect(290,h,10,30);
  saveFrame("frames/####.tif");
  
}
