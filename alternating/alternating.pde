float a, w, h;
void setup() {
  size(500, 500);
  noStroke();
  blendMode(DIFFERENCE);
}
void draw() {
  a++;
  clear();
  fill(-1);
  rect(0, a%240<120? 0:250, 500, 250);

  for (w=a%50-50; w<600; w+=50) {
    triangle(w-25, 250, w+25, 250, w, 250+ sin(a/60+w/60) * 250);
  }
  saveFrame("frames/####.tif");
}
