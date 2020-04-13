float C, S, t, a,h=250;
void setup() {
  size(500, 500);
  stroke(h);
}
void draw() {
  if (a%500==0) {
    clear();
    C=random(90);
    S=random(90);
    line(0, h, 500, h);
    text("y=sin(x*"+S+")+cos(x*"+C+")", 0, h);
  }
  circle(a%500,h + 99*sin(++a/600*S) + 99*cos(a/600*C), 5);
  
  saveFrame("frames/####.tif");
}
