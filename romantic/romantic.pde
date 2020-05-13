int w, h;
float i, r;

size(500, 500);
noStroke();
blendMode(ADD);
fill(-1, 50);
clear();
for (h=25; h<500; h+=50) {
  for (w=25; w<500; w+=50) {
    for (i=w+h; i<TAU+w+h; i+=PI/2) {
      for (r=0; r<25; r+=3) {
        circle(r*cos(i)+w, r*sin(i)+h, (25-r)/3);
      }
    }
  }
}
saveFrame("out.png");
