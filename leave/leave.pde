int i;
size(500,500);
background(-1);
for(i=0;i<=500;i+=25){
  line(0,i,500-i,500);
  line(0,i,i,0);
  line(i,0,500,500-i);
  line(i,500,500,i);
}
stroke(-1);
for(i=0;i<5;i++){
  square((int)random(20)*25+1,(int)random(20)*25+1,(int)random(9)*25+48);
}
saveFrame("out.png");
