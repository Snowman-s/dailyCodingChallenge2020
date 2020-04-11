float a, w;
void setup() {
  size(600, 250);
  textSize(100);
}
void draw() {
  a+=PI/120;
  background(#0000FF);
  for (w=0; w<600; w+=5) {
    clip(w, 0, 10, 250);
    fill(200, 200, 100);
    text("Salamander", 0, (sin(a+w/120)+1)*64, 600, 125);
    noClip();
  }
  saveFrame("frames/####.tif");
}
