int a, c, i, r=-65536;
void setup() {
  size(500, 500);
  textSize(50);
}
void draw() {
  if (a++%300==0) {
    clear();
    for (c=i=0; i++<99; ) {
      if (random(99)<noise(a)*99) {
        c++;
        fill(r);
      } else
        fill(-1);
      circle(random(500), random(500), 9);
    }
    fill(r);
    text(c+"%", 0, 500);
  }
  saveFrame("frames/####.tif");
}
