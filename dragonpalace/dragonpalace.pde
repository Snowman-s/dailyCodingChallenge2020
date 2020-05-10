float a, h, x, t;
void setup() {
  size(500, 500);
  noStroke();
  fill(#22DDFF);
}
void draw() {
  background(#111155);
  for (h=-++a%20; h<520; h+=20) {
    ellipse(x=250+sin(t=a/30+h/60)*150, h, 30, 9);
    triangle(x+(cos(t)>0?5:-5), h, t=cos(t)>0?x-15:x+15, h-5, t, h+5);
  }
  saveFrame("frames/####.tif");
}
