float i,a,r,R=200,s=R/2,h=250;
void setup() {
  size(500,500);
  noFill();
  stroke(-1);
}
void draw() {
  clear();
  a++;
  circle(h,h,R);
  for (i=0;i<TAU-.01;) {
    r=R+noise(a/30+i/2)*300;
    l();
    arc(h,h,r,r,i,i+=PI/9);
    l();
  }
  saveFrame("frames/####.tif");
}
void l(){
    line(h+s*cos(i),h+s*sin(i),h+r/2*cos(i),h+r/2*sin(i));
}
