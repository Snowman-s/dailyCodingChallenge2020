float a, i;
void setup() {
  size(500, 500);
  blendMode(ADD);
  noStroke();
}
void draw() {
  clear();
  translate(250, 250);
  rotate(a+=PI/120);

  for (i=a; i<TAU+a; i+=PI/6) {
    fill((1-cos(i-a))*122);
    circle(150*cos(i), 150*cos(i), 60);
  }
}
