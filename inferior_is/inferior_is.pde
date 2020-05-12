float h, w, a;
void setup() {
  size(500, 500);
  noFill();
}
void draw() {
  clear();
  a+=PI/120;
  translate(250, 250);
  rotate(a/2);
  fill(-1);
  square(-175, -175, 350);
  fill(0);
  for (w=-175; w<175; w+=50) {
    square(w, acos(cos(w/45+a))*300/PI-175, 50);
  }
  saveFrame("frames/####.tif");
}
