int f;
float h,w,a;
void setup() {
  size(500, 500);
}
void draw() {
  clear();
  a++;
  f=(int)(a/43.3)%2==0?0:-1;
  fill((1-cos(a/20))*100);
  for (h=-a%43.3; h<600; h+=43.3,f=~f) {
    for (w=f!=0?25:0; w<510; w+=50) {
       circle(w,h,50);
    }
  }
  saveFrame("frames/####.tif");
}
