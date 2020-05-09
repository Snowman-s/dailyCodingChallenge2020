float a,t,f,m;
void setup() {
  size(500, 500);
  noStroke();
}
void draw() {
  clear();
  fill(-1);
  quad(200, f=350, t=150, t, f, t, 300, f);
  fill(#00FFFF);
  rect(280, 0, 9, ++a>t?a+200:f);
  quad(200, f, 200-(m=min(a,t))/4, 350-m, 300+m/4, f-m, 300, f);
  saveFrame("frames/####.tif");
}
