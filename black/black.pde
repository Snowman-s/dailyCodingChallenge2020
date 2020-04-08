float a,i,r,t;
void setup() {
  size(500, 500);
  noStroke();
}
void draw() {
  clear();
  a+=PI/120;

  translate(250,250);
  fill(-1);
  rotate(a);
  square(-500,0,1000);
  
  for(i=0;i<PI*8;i+=PI/6){
    t=i-a*2;
    fill(sin(t)<0?-1:0);
    r=i/PI*50;
    circle(r*cos(t),r*sin(t),50);
  }
  saveFrame("frames/####.tif");
}
