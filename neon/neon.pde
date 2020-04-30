float a,r,h=250,i;
void setup(){
  size(500,500);
  textSize(99);
  noStroke();
  fill(-1,200);
}
void draw(){
  a+=PI/120;
  clear();
  for(i=0;i<TAU;i+=TAU/24){
    r=sin(i-a);
    circle(h+r*h*cos(i),h+r*h*sin(i),r*85+90);
  }
  saveFrame("frames/####.tif");
}
