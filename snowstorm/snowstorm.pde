float a, w;
void setup() {
  size(500, 500);
  stroke(-1);
}
void draw() {
  a+=5;
  background(acos(cos(a/120))*80);
  for (w=a%10-100; w<=500; w+=10) {
    line(w, (1-sin(w*.998-a))*250, w+100, (1-sin(w*.998-a))*250);
  }
  saveFrame()
}
