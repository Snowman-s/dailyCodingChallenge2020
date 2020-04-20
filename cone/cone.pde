float a, i, w;
void setup() {
  size(500, 500);
  fill(255, 255, 0);
}
void draw() {
  clear();
  a+=PI/180;
  for (i=-10; i<TAU*50; i+=PI/16)
    if (sin(i+a)>0)
      rect(250+100*cos(i+a), i*1.8, 20-abs(20*cos(i+a)), 20);
  saveFrame("frames/####.tif");
}
