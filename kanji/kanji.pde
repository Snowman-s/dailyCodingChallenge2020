float a,h=250,r=999;
void setup() {
  size(500, 500);
  textFont(createFont("メイリオ", 32));
}
void draw() {
  a++;
  fill(0, 20);
  square(-9, -9, r);
  if (a%5==0) {
    translate(h, h);
    rotate(a*PI/20);
    translate(-h, -h);
    textSize(h);
    fill(h);
    text("円", 0, 0, r, r);
  }
  saveFrame("frames/####.tif");
}
