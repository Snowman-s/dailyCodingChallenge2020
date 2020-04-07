float f,i,a,r;
void setup(){
size(500,500);
noStroke();
}
void draw(){
  f++;
  fill(0,20);
  square(-9,-9,900);
  fill(255,0,0);
  for(i=0;i<TAU;i+=PI/9){
    a=i+cos(f/40);r=f%400;
    square(noise(f)*20+230+r*cos(a),noise(f+9)*20+230+r*sin(a),20);
  }
  saveFrame("frames/####.tif");
}
