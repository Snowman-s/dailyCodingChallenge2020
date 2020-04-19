int w, s, S, i,h=250;
void setup() {
  size(500, 500);
  noFill();
  stroke(-1);
}
void draw() {
  clear();
  for (s=(int)random(w=500); w>0; )circle(h,h, w-=50);
  loadPixels();
  for (S=(int)random(400); w<h*20; )
    pixels[i=++w%h+s+(S+(w/h))*500] = pixels[i+20];
  updatePixels();
  saveFrame("frames/####.tif");
}
