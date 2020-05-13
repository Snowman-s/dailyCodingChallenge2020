int w, h;
float i, r;

size(500, 500);
noStroke();
blendMode(ADD);
fill(-1, 50);
clear();
for (h=50; h<500; h+=98) {
  for (w=50; w<500; w+=98) {
    for (i=w+h; i<TAU+w+h; i+=PI/2) {
      for (r=0; r<50; r+=3) {
        circle(r*cos(i)+w, r*sin(i)+h, (50-r)/2);
      }
    }
  }
}
saveFrame("out.png");
