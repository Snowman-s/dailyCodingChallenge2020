int a;
void setup() {
  size(500, 500);
  clear();
  noStroke();
  colorMode(HSB);
}
void draw() {
  fill(0,5);
  square(0,0,500);
  fill(a/500*50%250, 255, 255);
  circle((a+=2)%500, noise(a/200F)*500, 5);
  
  saveFrame("frames/####.tif");
}
