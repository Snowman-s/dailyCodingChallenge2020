float i;
void setup() {
  size(500, 500);
  noStroke();
  clear();
}
void draw() {
  i+=PI/120;
  translate(250, 250);
  rotate(i/12);
  fill(0, 255, 0);
  circle(200*cos(i), 100*cos(i), 5);
  fill(255, 0, 0);
  circle(200*cos(i), 100*sin(i), 5);

  if (frameCount==3000) {
    saveFrame("out.png");
  }
}
