float a, r, i,w=500,h=w/2;
void setup() {
  size(500, 500);
  clear();
  strokeWeight(3);
}
void draw() {
  a+=PI/40;
  r=w-a/PI*125%w;
  for (i=a; i<TAU+a; i+=PI/3) {
    stroke(i%(PI/1.5)<PI/3?0:h);
    line(r*cos(i)+h, r*sin(i)+h, 
      r*cos(i+PI/3)+h, r*sin(i+PI/3)+h);
  }
  
  if(frameCount==200){
    saveFrame("./out.png");
  }
}
